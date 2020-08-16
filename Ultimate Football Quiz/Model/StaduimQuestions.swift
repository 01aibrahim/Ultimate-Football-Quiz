//
//  StaduimQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

struct StaduimQuestions{
    
    var questionNumber = 0
    var ranNum = Int.random(in: 0...9)
    var score = 0
    
    let StaduimQuestion = [
        QuestionAnswerManager(Question: "What is the capacity of Old Trafford?", ChoiceOne: "75,560", ChoiceTwo: "76,000", ChoiceThree: "76,052", ChoiceFour: "72,500", Answer: "76,000"),
        QuestionAnswerManager(Question: "What stadium hosted the 2019 UCL final?", ChoiceOne:"Metropolitano", ChoiceTwo: "Olympic", ChoiceThree: "Groupama", ChoiceFour: "Olimpiyskiy", Answer: "Metropolitano"),
        QuestionAnswerManager(Question: "Which club is associated with The Yellow Wall?", ChoiceOne: "Borussia Dortmund", ChoiceTwo: "Liverpool", ChoiceThree: "Tottenham", ChoiceFour: "Boca Juniors", Answer: "Borussia Dortmund"),
        QuestionAnswerManager(Question: "What is the capacity of Wembley Stadium?", ChoiceOne: "89,560", ChoiceTwo: "90,000", ChoiceThree: "92,500", ChoiceFour: "90,500", Answer: "90,000"),
        QuestionAnswerManager(Question: "What is the capacity of Tottenham Hotspur Stadium?", ChoiceOne: "60,306", ChoiceTwo: "62,303" , ChoiceThree: "62,000", ChoiceFour: "61,003", Answer: "62,303"),
        QuestionAnswerManager(Question:  "What is the capacity of Emirates Stadium?", ChoiceOne: "60,260" , ChoiceTwo: "60,540", ChoiceThree:  "64,893", ChoiceFour: "63,250", Answer: "60,260"),
        QuestionAnswerManager(Question: "What is the capacity of Stamford Bridge?", ChoiceOne: "45,482", ChoiceTwo: "51,837", ChoiceThree: "41,837", ChoiceFour:  "47,000" , Answer: "41,837"),
        QuestionAnswerManager(Question: "What is the capacity of Selhurst Park?", ChoiceOne: "27,493" , ChoiceTwo: "24,423",ChoiceThree: "21,440", ChoiceFour: "25,456", Answer: "25,456"),
        QuestionAnswerManager(Question:"What is the capacity of London Stadium?", ChoiceOne:"55,060", ChoiceTwo:"66,000", ChoiceThree:"66,503", ChoiceFour:"60,000", Answer:"66,000"),
        QuestionAnswerManager(Question:"What is the capacity of Craven Cottage?", ChoiceOne:"25,700", ChoiceTwo:"25,000", ChoiceThree:"30,000", ChoiceFour:"23,450", Answer:"25,700")
    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        print(Int(ranNum))
        return StaduimQuestion[Int(ranNum)].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return StaduimQuestion[Int(ranNum)].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return StaduimQuestion[Int(ranNum)].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return StaduimQuestion[Int(ranNum)].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return StaduimQuestion[Int(ranNum)].ChoiceFour
    }
    
    func getAnswer() -> String {
        return StaduimQuestion[Int(ranNum)].Answer
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(StaduimQuestion.count)
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
        if userChoice == StaduimQuestion[questionNumber].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
