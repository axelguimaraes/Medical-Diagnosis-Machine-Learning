from flask import Flask, jsonify, request
from flask_cors import CORS
import joblib
import os

app = Flask(__name__)
CORS(app)

# Define the models directory
models_dir = os.path.join(os.path.dirname(__file__), '../models')

def load_models(model_name):
    try:
        if model_name == 'random_forest':
            model_path = os.path.join(models_dir, 'random_forest_model.joblib')
        elif model_name == 'svm':
            model_path = os.path.join(models_dir, 'svm_model.joblib')
        elif model_name == 'logistic_regression':
            model_path = os.path.join(models_dir, 'logistic_regression_model.joblib')
        else:
            model_path = os.path.join(models_dir, 'random_forest_model.joblib')

        clf = joblib.load(model_path)
        return clf
    except Exception as e:
        raise RuntimeError(f"Error loading model '{model_name}': {str(e)}")

@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.get_json(force=True)
        model = data['model']
        features = data['features']

        if not model or not features:
            return jsonify({'error': 'Invalid input'}), 400

        clf = load_models(model)
        prediction = clf.predict([features])
        return jsonify({'prediction': prediction[0]})
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
