//
//  TrueFalseQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

struct TrueFalseQuestions {
    
    var questionNumber = 0
    var ranNum = Int.random(in: 0...9)
    var score = 0
    
    let TrueFalseQuestion = [
        QuestionTrueFalseManager(Question: "TEST 1", Answer: "False"),
        QuestionTrueFalseManager(Question: "TEST 2", Answer: "True"),
        QuestionTrueFalseManager(Question: "TEST 3", Answer: "False"),
        QuestionTrueFalseManager(Question: "TEST 4", Answer: "True"),
        QuestionTrueFalseManager(Question: "TEST 5", Answer: "False"),
        QuestionTrueFalseManager(Question: "TEST 6", Answer: "True"),
        QuestionTrueFalseManager(Question: "TEST 7", Answer: "False"),
        QuestionTrueFalseManager(Question: "TEST 8", Answer: "True"),
        QuestionTrueFalseManager(Question: "TEST 9", Answer: "False"),
        QuestionTrueFalseManager(Question: "TEST 10", Answer: "True")

    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        print(Int(ranNum))
        return TrueFalseQuestion[Int(ranNum)].Question
    }
    
    func getAnswer() -> String {
        return TrueFalseQuestion[Int(ranNum)].Answer
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(TrueFalseQuestion.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    //MARK:- Next Question
    
    mutating func nextQuestion() {
        
        questionNumber += 1
        ranNum = Int.random(in: 0...9)
        
    }
    
    //MARK:- Checks Answers
    
    mutating func checkAnswer(userChoice: String) -> Bool {
        if userChoice == TrueFalseQuestion[Int(ranNum)].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
