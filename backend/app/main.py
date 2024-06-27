from flask import Flask, jsonify, request
from flask_cors import CORS
import joblib

app = Flask(__name__)
CORS(app)

def load_models(model_name):
    if model_name == 'random_forest':
        clf = joblib.load('random_forest_model.joblib')
    elif model_name == 'svm':
        clf = joblib.load('svm_model.joblib')
    elif model_name == 'logistic_regression':
        clf = joblib.load('logistic_regression_model.joblib')
    else:
        clf = joblib.load('random_forest_model.joblib')
    return clf

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
