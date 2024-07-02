:- dynamic_outcome/1.
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender <= 0.50, Cough <= 0.50, Blood_Pressure <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender <= 0.50, Cough <= 0.50, Blood_Pressure > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender <= 0.50, Cough > 0.50, Blood_Pressure <= 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender <= 0.50, Cough > 0.50, Blood_Pressure > 1.50, Age <= 39.00 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender <= 0.50, Cough > 0.50, Blood_Pressure > 1.50, Age > 39.00 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender > 0.50, Blood_Pressure <= 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender > 0.50, Blood_Pressure > 1.50, Age <= 42.50, Cough <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender > 0.50, Blood_Pressure > 1.50, Age <= 42.50, Cough > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age <= 53.50, Gender > 0.50, Blood_Pressure > 1.50, Age > 42.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing <= 0.50, Gender <= 0.50, Cholesterol_Level <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing <= 0.50, Gender <= 0.50, Cholesterol_Level > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing <= 0.50, Gender > 0.50, Cholesterol_Level <= 0.50, Blood_Pressure <= 1.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing <= 0.50, Gender > 0.50, Cholesterol_Level <= 0.50, Blood_Pressure > 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing <= 0.50, Gender > 0.50, Cholesterol_Level > 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever <= 0.50, Age > 53.50, Difficulty_Breathing > 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age <= 29.50, Difficulty_Breathing <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age <= 29.50, Difficulty_Breathing > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure <= 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level <= 0.50, Blood_Pressure <= 1.50, Cough <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level <= 0.50, Blood_Pressure <= 1.50, Cough > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level <= 0.50, Blood_Pressure > 1.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough <= 0.50, Age <= 41.00, Age <= 30.50, Fatigue <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough <= 0.50, Age <= 41.00, Age <= 30.50, Fatigue > 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough <= 0.50, Age <= 41.00, Age > 30.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough <= 0.50, Age > 41.00 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough > 0.50, Age <= 42.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age <= 47.50, Cholesterol_Level > 0.50, Cough > 0.50, Age > 42.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 0.50, Age > 47.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age <= 33.50, Gender <= 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age <= 33.50, Gender > 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age > 33.50, Age <= 36.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age > 33.50, Age > 36.50, Age <= 41.00 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age > 33.50, Age > 36.50, Age > 41.00, Age <= 43.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age > 33.50, Age > 36.50, Age > 41.00, Age > 43.50, Fatigue <= 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age <= 53.50, Difficulty_Breathing > 0.50, Age > 33.50, Age > 36.50, Age > 41.00, Age > 43.50, Fatigue > 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing <= 0.50, Cholesterol_Level <= 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing <= 0.50, Cholesterol_Level > 0.50, Gender <= 0.50, Blood_Pressure <= 1.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing <= 0.50, Cholesterol_Level > 0.50, Gender <= 0.50, Blood_Pressure > 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing <= 0.50, Cholesterol_Level > 0.50, Gender > 0.50, Blood_Pressure <= 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing <= 0.50, Cholesterol_Level > 0.50, Gender > 0.50, Blood_Pressure > 1.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing > 0.50, Blood_Pressure <= 1.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing > 0.50, Blood_Pressure > 1.50, Cough <= 0.50 :- outcome(positive).
Cholesterol_Level <= 1.50, Fever > 0.50, Age <= 62.50, Age > 29.50, Age > 53.50, Difficulty_Breathing > 0.50, Blood_Pressure > 1.50, Cough > 0.50 :- outcome(negative).
Cholesterol_Level <= 1.50, Fever > 0.50, Age > 62.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age <= 36.50, Age <= 29.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age <= 36.50, Age > 29.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure <= 1.50, Age <= 41.00, Age <= 39.00 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure <= 1.50, Age <= 41.00, Age > 39.00 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure <= 1.50, Age > 41.00 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure > 1.50, Age <= 43.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure > 1.50, Age > 43.50, Fever <= 0.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure > 1.50, Age > 43.50, Fever > 0.50, Age <= 50.00 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure > 1.50, Age > 43.50, Fever > 0.50, Age > 50.00, Cough <= 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender <= 0.50, Blood_Pressure > 1.50, Age > 43.50, Fever > 0.50, Age > 50.00, Cough > 0.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender > 0.50, Age <= 42.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age <= 62.50, Gender > 0.50, Age > 42.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue <= 0.50, Age > 36.50, Age > 62.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age <= 29.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age <= 43.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age > 43.50, Fever <= 0.50, Cough <= 0.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age > 43.50, Fever <= 0.50, Cough > 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age > 43.50, Fever > 0.50, Cough <= 0.50, Difficulty_Breathing <= 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age > 43.50, Fever > 0.50, Cough <= 0.50, Difficulty_Breathing > 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age <= 52.50, Age > 43.50, Fever > 0.50, Cough > 0.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender <= 0.50, Age > 29.50, Age > 52.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age <= 32.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age <= 46.50, Blood_Pressure <= 1.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age <= 46.50, Blood_Pressure > 1.50, Age <= 42.50, Difficulty_Breathing <= 0.50, Age <= 37.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age <= 46.50, Blood_Pressure > 1.50, Age <= 42.50, Difficulty_Breathing <= 0.50, Age > 37.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age <= 46.50, Blood_Pressure > 1.50, Age <= 42.50, Difficulty_Breathing > 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age <= 46.50, Blood_Pressure > 1.50, Age > 42.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough <= 0.50, Age > 46.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough > 0.50, Age <= 40.00 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age <= 52.50, Age > 32.50, Cough > 0.50, Age > 40.00 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age > 52.50, Difficulty_Breathing <= 0.50, Blood_Pressure <= 1.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age > 52.50, Difficulty_Breathing <= 0.50, Blood_Pressure > 1.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever <= 0.50, Age > 52.50, Difficulty_Breathing > 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age <= 41.00 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age <= 57.50, Age <= 47.50, Age <= 43.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age <= 57.50, Age <= 47.50, Age > 43.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age <= 57.50, Age > 47.50, Difficulty_Breathing <= 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age <= 57.50, Age > 47.50, Difficulty_Breathing > 0.50, Cough <= 0.50 :- outcome(negative).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age <= 57.50, Age > 47.50, Difficulty_Breathing > 0.50, Cough > 0.50 :- outcome(positive).
Cholesterol_Level > 1.50, Fatigue > 0.50, Gender > 0.50, Fever > 0.50, Age > 41.00, Age > 57.50 :- outcome(positive).
