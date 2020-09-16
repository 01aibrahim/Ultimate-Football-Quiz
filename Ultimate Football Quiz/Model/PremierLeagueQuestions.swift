//
//  PremierLeagueQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

struct PremierLeagueQuestions {
    
    var questionNumber = 0
    var ranNum = generateRandomNumber(0, 56, 10)
    var score = 0
    
    let PremierQuestion = [ 
       QuestionAnswerManager(Question:"Norwich City, Aston Villa and ... were regulated in season 19/20, who was the third team?" , ChoiceOne:"Bournemouth" , ChoiceTwo: "Watford" , ChoiceThree:"West Ham" , ChoiceFour: "Brighton" , Answer:"Bournemouth"  ),
       
       QuestionAnswerManager(Question:"Liverpool were unbeaten for 27 matches in season 19/20, what happened on the 28th game?" , ChoiceOne:"Drew 1-1" , ChoiceTwo:"Lost 1-0"  , ChoiceThree:"Lost 2-0" , ChoiceFour:"Lost 3-0"  , Answer:"Lost 3-0")

    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        return PremierQuestion[ranNum[questionNumber]].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return PremierQuestion[ranNum[questionNumber]].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return PremierQuestion[ranNum[questionNumber]].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return PremierQuestion[ranNum[questionNumber]].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return PremierQuestion[ranNum[questionNumber]].ChoiceFour
    }
    
    func getAnswer() -> String {
        return PremierQuestion[ranNum[questionNumber]].Answer
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(PremierQuestion.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    //MARK:- Next Question
    
    mutating func nextQuestion() {
        questionNumber += 1
    }
    
    //MARK:- Checks Answers
    
    mutating func checkAnswer(userChoice: String) -> Bool {
        if userChoice == PremierQuestion[ranNum[questionNumber]].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
