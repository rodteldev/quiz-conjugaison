//
//  QuizBrain.swift
//  Quiz Conjugaison
//
//  Created by Rodrigo Telles on 04/04/23.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "Avoir indicatif plus que parfait: il avait eu", answer: "Vrai"),
        Question(text: "Aller indicatif passé composé: je suis allé", answer: "Vrai"),
        Question(text: "Parler impératif présent: que je parle", answer: "Faux"),
        Question(text: "Envoyer indicatif présent: j'envoie", answer: "Vrai"),
        Question(text: "Mettre indicatif futur simple: je mettais", answer: "Faux"),
        Question(text: "Savoir indicatif passé composé: je sus", answer: "Faux"),
        Question(text: "Prendre subjonctif passé: j'aurais pris", answer: "Faux"),
        Question(text: "Arrêter indicatif futur simple: il arrêtera", answer: "Vrai"),
        Question(text: "Voir indicatif passé simple: nous vîme", answer: "Vrai"),
        Question(text: "Biser indicatif présent: nous bisons", answer: "Vrai"),
        Question(text: "Faire subjonctif imparfait: je fis", answer: "Faux")]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
