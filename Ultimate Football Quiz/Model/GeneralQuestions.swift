//
//  GeneralQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 31/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation


struct GeneralQuestion{
    
    var questionNumber = 0
    var score = 0
    
    let GeneralQuestion = [
        QuestionAnswerManager(Question: "What league does Manchester United play in?", ChoiceOne: "Premier Leauge", ChoiceTwo: "La liga", ChoiceThree: "German", ChoiceFour: "World", Answer: "Premier Leauge"),
        QuestionAnswerManager(Question: "What league does Arsenal play in?", ChoiceOne: "Premier Ldeauge", ChoiceTwo: "qwdqw", ChoiceThree: "asda", ChoiceFour: "Choice", Answer: "Premier Ldeauge"),
        QuestionAnswerManager(Question: "What league does Manchester United play in?", ChoiceOne: "Premier Leauge", ChoiceTwo: "La liga", ChoiceThree: "German", ChoiceFour: "World", Answer: "Premier Leauge"),
        QuestionAnswerManager(Question: "What league does Arsenal play in?", ChoiceOne: "Premier Ldeauge", ChoiceTwo: "qwdqw", ChoiceThree: "asda", ChoiceFour: "Choice", Answer: "Premier Ldeauge"),
        QuestionAnswerManager(Question: "What league does Manchester United play in?", ChoiceOne: "Premier Leauge", ChoiceTwo: "La liga", ChoiceThree: "German", ChoiceFour: "World", Answer: "Premier Leauge"),
        QuestionAnswerManager(Question: "What league does Arsenal play in?", ChoiceOne: "Premier Ldeauge", ChoiceTwo: "qwdqw", ChoiceThree: "asda", ChoiceFour: "Choice", Answer: "Premier Ldeauge"),
        QuestionAnswerManager(Question: "What league does Manchester United play in?", ChoiceOne: "Premier Leauge", ChoiceTwo: "La liga", ChoiceThree: "German", ChoiceFour: "World", Answer: "Premier Leauge"),
        QuestionAnswerManager(Question: "What league does Arsenal play in?", ChoiceOne: "Premier Ldeauge", ChoiceTwo: "qwdqw", ChoiceThree: "asda", ChoiceFour: "Choice", Answer: "Premier Ldeauge"),
        QuestionAnswerManager(Question: "What league does Manchester United play in?", ChoiceOne: "Premier Leauge", ChoiceTwo: "La liga", ChoiceThree: "German", ChoiceFour: "World", Answer: "Premier Leauge"),
        QuestionAnswerManager(Question: "What league does Arsenal play in?", ChoiceOne: "Premier Ldeauge", ChoiceTwo: "qwdqw", ChoiceThree: "asda", ChoiceFour: "Choice", Answer: "Premier Ldeauge")
        
    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        return GeneralQuestion[questionNumber].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return GeneralQuestion[questionNumber].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return GeneralQuestion[questionNumber].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return GeneralQuestion[questionNumber].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return GeneralQuestion[questionNumber].ChoiceFour
    }
    
    func getAnswer() -> String {
        return GeneralQuestion[questionNumber].Answer
    }
    
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(GeneralQuestion.count)
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
        if userChoice == GeneralQuestion[questionNumber].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}



