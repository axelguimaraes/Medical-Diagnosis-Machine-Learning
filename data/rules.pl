disease(Age, Fever, _, _, _, _, _, "0.0") :-
    Fever =< 0.5,
    Age =< 39.0.

disease(Age, Fever, _, _, _, _, _, "1.0") :-
    Fever =< 0.5,
    Age > 39.0.

disease(_, Fever, _, Gender, _, BloodPressure, _, "1.0") :-
    Fever > 0.5,
    BloodPressure =< 1.5,
    Gender =< 0.5.

disease(_, Fever, _, Gender, _, BloodPressure, DifficultyBreathing, "0.0") :-
    Fever > 0.5,
    BloodPressure =< 1.5,
    Gender > 0.5,
    DifficultyBreathing =< 0.5.

disease(_, Fever, _, Gender, _, BloodPressure, DifficultyBreathing, "1.0") :-
    Fever > 0.5,
    BloodPressure =< 1.5,
    Gender > 0.5,
    DifficultyBreathing > 0.5.

disease(_, Fever, _, _, _, BloodPressure, _, "1.0") :-
    Fever > 0.5,
    BloodPressure > 1.5.

disease(Age, Fever, _, _, _, _, _, "0.0") :-
    Fever =< 0.5,
    Age =< 37.5.

disease(Age, Fever, _, Gender, _, _, _, "1.0") :-
    Fever =< 0.5,
    Age > 37.5,
    Gender =< 0.5.

disease(Age, Fever, _, Gender, _, _, _, "1.0") :-
    Fever =< 0.5,
    Age > 37.5,
    Gender > 0.5.

disease(_, Fever, _, Gender, CholesterolLevel, _, _, "1.0") :-
    Fever > 0.5,
    CholesterolLevel =< 1.5,
    Gender =< 0.5.

disease(_, Fever, _, Gender, CholesterolLevel, _, DifficultyBreathing, "0.0") :-
    Fever > 0.5,
    CholesterolLevel =< 1.5,
    Gender > 0.5,
    DifficultyBreathing =< 0.5.

disease(_, Fever, _, Gender, CholesterolLevel, _, DifficultyBreathing, "1.0") :-
    Fever > 0.5,
    CholesterolLevel =< 1.5,
    Gender > 0.5,
    DifficultyBreathing > 0.5.

disease(_, Fever, _, _, CholesterolLevel, _, _, "1.0") :-
    Fever > 0.5,
    CholesterolLevel > 1.5.

disease(_, Fever, _, Gender, _, _, DifficultyBreathing, "1.0") :-
    Fever =< 0.5,
    DifficultyBreathing =< 0.5,
    Gender =< 0.5.

disease(_, Fever, _, Gender, _, _, DifficultyBreathing, "0.0") :-
    Fever =< 0.5,
    DifficultyBreathing =< 0.5,
    Gender > 0.5.

disease(_, Fever, _, _, _, _, DifficultyBreathing, "0.0") :-
    Fever =< 0.5,
    DifficultyBreathing > 0.5.

disease(_, Fever, _, _, CholesterolLevel, _, DifficultyBreathing, "0.0") :-
    Fever > 0.5,
    CholesterolLevel =< 1.5,
    DifficultyBreathing =< 0.5.

disease(_, Fever, _, _, CholesterolLevel, _, DifficultyBreathing, "1.0") :-
    Fever > 0.5,
    CholesterolLevel =< 1.5,
    DifficultyBreathing > 0.5.

disease(_, Fever, _, _, CholesterolLevel, _, _, "1.0") :-
    Fever > 0.5,
    CholesterolLevel > 1.5.

