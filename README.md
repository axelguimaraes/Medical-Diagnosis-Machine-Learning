# Machine Learning Diagnosis Tool  

This project was developed as part of a university course to explore and understand the fundamentals of **machine learning**. The goal was to use machine learning techniques to analyze medical data and predict diagnostic outcomes. Additionally, Prolog was integrated to provide an interactive interface for querying the trained model.  


## Objective  

- To learn how to preprocess data, train a machine learning model, and evaluate its performance.  
- To integrate Python (for machine learning) with Prolog (for logical reasoning and interactive querying).  


## Dataset  

The dataset contains patient information and diagnostic results. It includes the following features:  

| **Feature**            | **Description**                                                                 |
|-------------------------|---------------------------------------------------------------------------------|
| **Disease**            | The name of the disease or medical condition.                                   |
| **Fever**              | Whether the patient has a fever (*Yes/No*).                                     |
| **Cough**              | Whether the patient has a cough (*Yes/No*).                                     |
| **Fatigue**            | Whether the patient experiences fatigue (*Yes/No*).                             |
| **Difficulty Breathing** | Whether the patient has difficulty breathing (*Yes/No*).                       |
| **Age**                | The patient's age in years.                                                     |
| **Gender**             | The patient's gender (*Male/Female*).                                           |
| **Blood Pressure**     | Blood pressure level (*Normal/High*).                                           |
| **Cholesterol Level**  | Cholesterol level (*Normal/High*).                                              |
| **Outcome Variable**   | The diagnostic result (*Positive/Negative*).                                    |  


## Technologies Used  

- **Python**: For data preprocessing, model training, and predictions.  
- **Prolog**: For building a simple interface to query the trained model.  
- **Machine Learning Algorithm**: [Specify the algorithm used, e.g., Decision Trees, Logistic Regression].  


## How It Works  

1. **Model Training**:  
   - The dataset is preprocessed in Python to handle categorical variables and normalize numerical data.  
   - A machine learning model is trained to predict the diagnostic outcome based on patient data.  

2. **Prolog Interface**:  
   - Patient details are entered interactively in Prolog.  
   - The trained model is queried via Prolog to provide predictions.  


## Steps to Run  

### Prerequisites  
1. **Python** (3.x) with libraries: `pandas`, `scikit-learn`, `joblib`.  
2. **SWI-Prolog** (for running the Prolog interface).  


## Lessons Learned
How to preprocess data and handle missing or categorical values.
Training and evaluating machine learning models.
Combining Python and Prolog for a hybrid application.


## Credits
Developed by Axel Guimarães, Hugo Ribeiro e Márcio Ribeiro.
This project was completed as part of a university course on machine learning.

---

## License
This project is licensed under the MIT License. See LICENSE for details.
