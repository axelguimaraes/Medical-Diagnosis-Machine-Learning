disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Bipolar Disorder") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    BloodPressure =< 1.0,
    Age =< 32.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    BloodPressure =< 1.0,
    Age =< 32.5,
    Age > 32.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Depression") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    BloodPressure =< 1.0,
    BloodPressure > 1.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pancreatitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    BloodPressure =< 1.0,
    BloodPressure > 1.0,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Common Cold") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    Age =< 33.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Diabetes") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    Age =< 33.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Gastroenteritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    Age > 33.5,
    CholesterolLevel =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Influenza") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    Age > 33.5,
    CholesterolLevel > 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Allergic Rhinitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    CholesterolLevel =< 0.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Eczema") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure =< 0.5,
    Fatigue =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Eczema") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure =< 0.5,
    Fatigue > 0.5,
    Age =< 32.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Migraine") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure =< 0.5,
    Fatigue > 0.5,
    Age > 32.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Common Cold") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure > 0.5,
    Age =< 28.5,
    Age =< 26.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hyperthyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure > 0.5,
    Age =< 28.5,
    Age > 26.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Anxiety Disorders") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure > 0.5,
    Age > 28.5,
    CholesterolLevel =< 0.5,
    Age =< 33.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure > 0.5,
    Age > 28.5,
    CholesterolLevel =< 0.5,
    Age > 33.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Sinusitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Cough =< 0.5,
    Cough > 0.5,
    BloodPressure > 0.5,
    Age > 28.5,
    CholesterolLevel > 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pancreatitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue =< 0.5,
    Age =< 29.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Ulcerative Colitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue =< 0.5,
    Age > 29.5,
    Age =< 36.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue =< 0.5,
    Age > 29.5,
    Age > 36.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Migraine") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue =< 0.5,
    Age > 29.5,
    Age > 36.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Urinary Tract Infection") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Urinary Tract Infection") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Cough > 0.5,
    Age =< 32.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hyperthyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Cough > 0.5,
    Age > 32.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Rheumatoid Arthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    CholesterolLevel =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Rubella") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure =< 1.0,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Dengue Fever") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hyperthyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Fever =< 0.5,
    Fever > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Diabetes") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Psoriasis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue =< 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Coronary Artery Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hyperthyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.0,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoarthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.0,
    Fever =< 0.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hemophilia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.0,
    Fever =< 0.5,
    BloodPressure > 1.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Acne") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.0,
    Fever =< 0.5,
    BloodPressure > 1.0,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough =< 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.0,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Lymphoma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough > 0.5,
    Fever =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Psoriasis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough > 0.5,
    Fever =< 0.5,
    Gender > 0.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Chickenpox") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough > 0.5,
    Fever =< 0.5,
    Gender > 0.5,
    BloodPressure > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Gastroenteritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age =< 39.0,
    Age > 39.0,
    Cough > 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Influenza") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Age =< 45.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Eczema") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Age > 45.0,
    BloodPressure =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypertension") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Age > 45.0,
    BloodPressure > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Multiple Sclerosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender =< 0.5,
    Fever > 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Common Cold") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender =< 0.5,
    Fever > 0.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Allergic Rhinitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender > 0.5,
    Cough =< 0.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Lyme Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender > 0.5,
    Cough =< 0.5,
    BloodPressure > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender > 0.5,
    Cough > 0.5,
    BloodPressure =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue =< 0.5,
    Gender > 0.5,
    Cough > 0.5,
    BloodPressure > 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypothyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age =< 43.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Migraine") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age =< 43.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Turner Syndrome") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age > 43.5,
    Age =< 46.5,
    Gender > 0.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pancreatic Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age > 43.5,
    Age > 46.5,
    Gender =< 0.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Ulcerative Colitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age > 43.5,
    Age > 46.5,
    Gender =< 0.5,
    BloodPressure > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypothyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age > 43.5,
    Age > 46.5,
    Gender > 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Crohn's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel =< 0.5,
    Age > 43.5,
    Age > 46.5,
    Gender > 0.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    BloodPressure =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Depression") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    BloodPressure > 0.5,
    BloodPressure =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoarthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    BloodPressure > 0.5,
    BloodPressure > 1.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Stroke") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel =< 1.5,
    Fatigue > 0.5,
    CholesterolLevel > 0.5,
    BloodPressure > 0.5,
    BloodPressure > 1.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Crohn's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure =< 0.5,
    Cough =< 0.5,
    Age =< 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Endometriosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure =< 0.5,
    Cough =< 0.5,
    Age > 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Allergic Rhinitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure =< 0.5,
    Cough > 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Allergic Rhinitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure =< 0.5,
    Cough > 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Anxiety Disorders") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue =< 0.5,
    Age =< 43.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue =< 0.5,
    Age =< 43.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Migraine") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue =< 0.5,
    Age > 43.5,
    Fever =< 0.5,
    Age =< 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Rheumatoid Arthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue =< 0.5,
    Age > 43.5,
    Fever =< 0.5,
    Age > 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Rheumatoid Arthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue =< 0.5,
    Age > 43.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Sickle Cell Anemia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue > 0.5,
    Fever =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Autism Spectrum Disorder") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue > 0.5,
    Fever =< 0.5,
    Gender > 0.5,
    Age =< 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Anemia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue > 0.5,
    Fever =< 0.5,
    Gender > 0.5,
    Age > 47.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Sepsis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age =< 41.0,
    Age > 41.0,
    CholesterolLevel > 1.5,
    BloodPressure > 0.5,
    Fatigue > 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hemorrhoids") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough =< 0.5,
    BloodPressure =< 1.0,
    Age =< 57.5,
    Fatigue =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypothyroidism") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough =< 0.5,
    BloodPressure =< 1.0,
    Age =< 57.5,
    Fatigue > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypertension") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough =< 0.5,
    BloodPressure =< 1.0,
    Age > 57.5,
    Fatigue =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Thyroid Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough =< 0.5,
    BloodPressure =< 1.0,
    Age > 57.5,
    Fatigue > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Chronic Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough =< 0.5,
    BloodPressure > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Diabetes") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever =< 0.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "HIV/AIDS") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever > 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoarthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever > 0.5,
    Cough > 0.5,
    Fatigue =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Tuberculosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender =< 0.5,
    Fever > 0.5,
    Cough > 0.5,
    Fatigue > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender > 0.5,
    Fatigue =< 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender > 0.5,
    Fatigue =< 0.5,
    Fever > 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Coronary Artery Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender > 0.5,
    Fatigue =< 0.5,
    Fever > 0.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Marfan Syndrome") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender > 0.5,
    Fatigue > 0.5,
    Age =< 57.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Breast Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel =< 0.5,
    Gender > 0.5,
    Fatigue > 0.5,
    Age > 57.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Measles") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure =< 1.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Parkinson's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure =< 1.0,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypertension") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.5,
    Gender =< 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Anxiety Disorders") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.5,
    Gender =< 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypertension") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.5,
    Gender > 0.5,
    Age =< 53.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Typhoid Fever") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.5,
    Gender > 0.5,
    Age > 53.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Polycystic Ovary Syndrome") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue =< 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.5,
    Age =< 57.5,
    BloodPressure =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Parkinson's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.5,
    Age =< 57.5,
    BloodPressure > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hepatitis B") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel =< 1.5,
    Age > 57.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hypertension") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure =< 1.0,
    Cough =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure =< 1.0,
    Cough =< 0.5,
    Gender > 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure =< 1.0,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age =< 57.5,
    Gender =< 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Multiple Sclerosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age =< 57.5,
    Gender > 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Appendicitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age =< 57.5,
    Gender > 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Hemophilia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age > 57.5,
    Fever =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteomyelitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age > 57.5,
    Fever =< 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Polio") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age =< 62.5,
    CholesterolLevel > 0.5,
    Fatigue > 0.5,
    CholesterolLevel > 1.5,
    BloodPressure > 1.0,
    Age > 57.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Alzheimer's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue =< 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue =< 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Alzheimer's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel =< 0.5,
    Age =< 67.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel =< 0.5,
    Age =< 67.5,
    Cough > 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel =< 0.5,
    Age =< 67.5,
    Cough > 0.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Testicular Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel =< 0.5,
    Age > 67.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Tonsillitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel =< 0.5,
    Age > 67.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Stroke") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel > 0.5,
    CholesterolLevel =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Urinary Tract Infection") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5,
    Age =< 67.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Alzheimer's Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure =< 1.0,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5,
    Age > 67.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Lung Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.0,
    Age =< 67.5,
    Gender =< 0.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Diabetes") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.0,
    Age =< 67.5,
    Gender =< 0.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Diabetes") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.0,
    Age =< 67.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Gout") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.0,
    Age > 67.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Bladder Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0,
    Age =< 67.5,
    Cough =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Otitis Media") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0,
    Age =< 67.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Williams Syndrome") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0,
    Age > 67.5,
    Cough =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Cholecystitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0,
    Age > 67.5,
    Cough =< 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Schizophrenia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    Age =< 51.0,
    Age > 51.0,
    Age > 62.5,
    Fatigue > 0.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0,
    Age > 67.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure =< 1.5,
    Age =< 29.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Bronchitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure =< 1.5,
    Age > 29.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Depression") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure =< 1.5,
    Age > 29.0,
    Gender > 0.5,
    BloodPressure =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure =< 1.5,
    Age > 29.0,
    Gender > 0.5,
    BloodPressure > 0.5,
    Age =< 34.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure =< 1.5,
    Age > 29.0,
    Gender > 0.5,
    BloodPressure > 0.5,
    Age > 34.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure > 1.5,
    Cough =< 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure > 1.5,
    Cough =< 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age =< 47.5,
    BloodPressure > 1.5,
    Cough > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age > 47.5,
    Age =< 53.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Urinary Tract Infection") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age > 47.5,
    Age =< 53.5,
    Fever > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pneumonia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue =< 0.5,
    Age > 47.5,
    Age > 53.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Influenza") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age =< 27.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Rheumatoid Arthritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever =< 0.5,
    BloodPressure =< 1.0,
    Age =< 32.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever =< 0.5,
    BloodPressure =< 1.0,
    Age > 32.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Cerebral Palsy") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever =< 0.5,
    BloodPressure > 1.0,
    Age =< 37.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever =< 0.5,
    BloodPressure > 1.0,
    Age > 37.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever > 0.5,
    Gender =< 0.5,
    Age =< 31.0,
    Age =< 29.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever > 0.5,
    Gender =< 0.5,
    Age =< 31.0,
    Age > 29.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pneumonia") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age =< 47.5,
    Fever > 0.5,
    Gender =< 0.5,
    Age > 31.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Pneumothorax") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure =< 1.0,
    Cough =< 0.5,
    Fever =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Cholera") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure =< 1.0,
    Cough =< 0.5,
    Fever > 0.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Sleep Apnea") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure =< 1.0,
    Cough =< 0.5,
    Fever > 0.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Liver Cancer") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure =< 1.0,
    Cough > 0.5,
    CholesterolLevel =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Gastroenteritis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure =< 1.0,
    Cough > 0.5,
    CholesterolLevel > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Asthma") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure > 1.0,
    CholesterolLevel =< 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Ebola Virus") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age =< 52.5,
    Age > 47.5,
    BloodPressure > 1.0,
    CholesterolLevel > 1.0.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Bronchitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure =< 1.0,
    Age =< 55.5,
    CholesterolLevel =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Osteoporosis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure =< 1.0,
    Age =< 55.5,
    CholesterolLevel > 0.5,
    CholesterolLevel =< 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Bronchitis") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure =< 1.0,
    Age =< 55.5,
    CholesterolLevel > 0.5,
    CholesterolLevel > 1.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Kidney Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure =< 1.0,
    Age > 55.5,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Influenza") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure =< 1.0,
    Age > 55.5,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Migraine") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure > 1.0,
    Gender =< 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Common Cold") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age =< 62.5,
    Fatigue > 0.5,
    Age > 27.0,
    Age > 52.5,
    BloodPressure > 1.0,
    Gender > 0.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Chronic Obstructive Pulmonary Disease") :-
    Age =< 75.0,
    DifficultyBreathing =< 0.5,
    DifficultyBreathing > 0.5,
    Age > 62.5.

disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, "Stroke") :-
    Age > 75.0.

