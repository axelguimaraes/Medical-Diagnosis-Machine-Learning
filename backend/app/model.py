import joblib

def load_models(model_name):
    if model_name == 'random_forest':
        clf = joblib.load('models/random_forest_model.joblib')
    elif model_name == 'svm':
        clf = joblib.load('models/svm_model.joblib')
    elif model_name == 'logistic_regression':
        clf = joblib.load('models/logistic_regression_model.joblib')
    else:
        clf = joblib.load('models/random_forest_model.joblib')
    return clf

def predict_disease(features, clf):
    # Ensure features are in the right format
    features = [features]  # Convert to 2D array if necessary
    prediction = clf.predict(features)
    return prediction
