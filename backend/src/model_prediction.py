import joblib
import os

def load_models(model_name):
    models_dir = os.path.join(os.path.dirname(__file__), '../models')
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

def predict_disease(features, model_name):
    clf = load_models(model_name)
    prediction = clf.predict([features])
    return prediction[0]