disease(_, Fever, _, _, _, _, DifficultyBreathing, "Negative") :- Fever =< 0.5, DifficultyBreathing > 0.5.
disease(_, Fever, _, Gender, _, BloodPressure, DifficultyBreathing, "Negative") :- Fever > 0.5, BloodPressure =< 1.5, Gender > 0.5, DifficultyBreathing =< 0.5.
disease(_, Fever, _, Gender, _, _, DifficultyBreathing, "Negative") :- Fever =< 0.5, DifficultyBreathing =< 0.5, Gender > 0.5.
disease(_, Fever, _, _, _, BloodPressure, _, "Positive") :- Fever > 0.5, BloodPressure > 1.5.
disease(_, Fever, _, Gender, _, BloodPressure, _, "Positive") :- Fever > 0.5, BloodPressure =< 1.5, Gender =< 0.5.
disease(Age, Fever, _, Gender, _, _, _, "Positive") :- Fever =< 0.5, Age > 37.5, Gender > 0.5.
disease(_, Fever, _, Gender, CholesterolLevel, _, DifficultyBreathing, "Negative") :- Fever > 0.5, CholesterolLevel =< 1.5, Gender > 0.5, DifficultyBreathing =< 0.5.
disease(Age, Fever, _, _, _, _, _, "Negative") :- Fever =< 0.5, Age =< 39.0.
disease(Age, Fever, _, _, _, _, _, "Positive") :- Fever =< 0.5, Age > 39.0.
disease(_, Fever, _, Gender, CholesterolLevel, _, DifficultyBreathing, "Positive") :- Fever > 0.5, CholesterolLevel =< 1.5, Gender > 0.5, DifficultyBreathing > 0.5.
disease(_, Fever, _, Gender, _, _, DifficultyBreathing, "Positive") :- Fever =< 0.5, DifficultyBreathing =< 0.5, Gender =< 0.5.
disease(_, Fever, _, _, CholesterolLevel, _, DifficultyBreathing, "Positive") :- Fever > 0.5, CholesterolLevel =< 1.5, DifficultyBreathing > 0.5.
disease(_, Fever, _, Gender, CholesterolLevel, _, _, "Positive") :- Fever > 0.5, CholesterolLevel =< 1.5, Gender =< 0.5.
disease(_, Fever, _, _, CholesterolLevel, _, _, "Positive") :- Fever > 0.5, CholesterolLevel > 1.5.
disease(_, Fever, _, _, CholesterolLevel, _, DifficultyBreathing, "Negative") :- Fever > 0.5, CholesterolLevel =< 1.5, DifficultyBreathing =< 0.5.
disease(Age, Fever, _, Gender, _, _, _, "Positive") :- Fever =< 0.5, Age > 37.5, Gender =< 0.5.
disease(_, Fever, _, Gender, _, BloodPressure, DifficultyBreathing, "Positive") :- Fever > 0.5, BloodPressure =< 1.5, Gender > 0.5, DifficultyBreathing > 0.5.
disease(Age, Fever, _, _, _, _, _, "Negative") :- Fever =< 0.5, Age =< 37.5.
