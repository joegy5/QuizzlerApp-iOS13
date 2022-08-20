//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Joel Gurivireddy on 7/15/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    ]
    
    var questionNumber = 0
    var quizScore = 0
    
    func checkAnswer(_ userAnswer : String) -> Bool {
        // no need for an external parameter as the underscore makes it unneeded whenever the function is called elsewhere 
         return userAnswer == quiz[questionNumber].answer
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }

    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }

    mutating func updateQuestion() {
        if questionNumber + 1 < quiz.count {
            self.questionNumber += 1  // we cannot automatically mutate the questionNumber variable, as it is a property of "self," which refers to an instance of the struct that may be created later on.
            // This is because self behaves like a "let" property, not a "var" property
            // To mutate one of self's properties, we can add the keyword "mutating" before the func keyword to be able to mutate the properties of the struct
            
            // However, even if we declare a function as a mutating function, that doesn't mean that we can use the  mutating function in the case we declare an instance of the struct using the "let" keyword instead of the "var" keyword
        } else {
            self.questionNumber = 0
            quizScore = 0
        }
    }

    mutating func getScore() -> Int {
        return quizScore
    }

    mutating func updateScore() {
        quizScore += 1
    }
}
