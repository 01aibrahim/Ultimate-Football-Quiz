//
//  StaduimQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

//MARK:- Struct Staduim

struct StaduimQuestions{
    
    var questionNumber = 0
    var ranNum = generateRandomNumber(0, 68, 10)
    var score = 0
    
    

//MARK:- Questions
    
    let StaduimQuestion = [
        QuestionAnswerManager(Question: "What is the capacity of Old Trafford?", ChoiceOne: "75,560", ChoiceTwo: "76,000", ChoiceThree: "76,052", ChoiceFour: "72,500", Answer: "76,000"),

        QuestionAnswerManager(Question: "What stadium hosted the 2019 UCL final?"   , ChoiceOne:"Metropolitano", ChoiceTwo: "Olympic", ChoiceThree: "Groupama", ChoiceFour: "Olimpiyskiy", Answer: "Metropolitano"),

        QuestionAnswerManager(Question: "Which club is associated with The Yellow Wall?", ChoiceOne: "Borussia Dortmund", ChoiceTwo: "Liverpool", ChoiceThree: "Tottenham", ChoiceFour: "Boca Juniors", Answer: "Borussia Dortmund"),

        QuestionAnswerManager(Question: "What is the capacity of Wembley Stadium?", ChoiceOne: "89,560", ChoiceTwo: "90,000", ChoiceThree: "92,500", ChoiceFour: "90,500", Answer: "90,000"),

        QuestionAnswerManager(Question: "What is the capacity of Tottenham Hotspur Stadium?", ChoiceOne: "60,306", ChoiceTwo: "62,303" , ChoiceThree: "62,000", ChoiceFour: "61,003", Answer: "62,303"),

        QuestionAnswerManager(Question:  "What is the capacity of Emirates Stadium?", ChoiceOne: "60,260" , ChoiceTwo: "60,540", ChoiceThree:  "64,893", ChoiceFour: "63,250", Answer: "60,260"),

        QuestionAnswerManager(Question: "What is the capacity of Stamford Bridge?", ChoiceOne: "45,482", ChoiceTwo: "51,837", ChoiceThree: "41,837", ChoiceFour:  "47,000" , Answer: "41,837"),

        QuestionAnswerManager(Question: "What is the capacity of Selhurst Park?", ChoiceOne: "27,493" , ChoiceTwo: "24,423",ChoiceThree: "21,440", ChoiceFour: "25,456", Answer: "25,456"),

        QuestionAnswerManager(Question:"What is the capacity of London Stadium?", ChoiceOne:"55,060", ChoiceTwo:"66,000", ChoiceThree:"66,503", ChoiceFour:"60,000", Answer:"66,000"),

        QuestionAnswerManager(Question:"What is the capacity of Craven Cottage?", ChoiceOne:"25,700", ChoiceTwo:"25,000", ChoiceThree:"30,000", ChoiceFour:"23,450", Answer:"25,700"),

        QuestionAnswerManager(Question:"What is the capacity of Carrow Road?", ChoiceOne:"27,244", ChoiceTwo:"31,530", ChoiceThree:"25,000", ChoiceFour:"27,540", Answer:"27,244"),
        QuestionAnswerManager(Question:"What is the capacity of Bramall Lane?", ChoiceOne:"31,500", ChoiceTwo:"32,702", ChoiceThree:"30,000", ChoiceFour:"27,540", Answer:"32,702"),

        QuestionAnswerManager(Question:"What is the capacity of Goodison Park?", ChoiceOne:"40,572", ChoiceTwo:"39,000", ChoiceThree:"40,000", ChoiceFour:"39,572", Answer:"39,572"),

        QuestionAnswerManager(Question:"What is the capacity of Vicarage Road?", ChoiceOne:"21,577", ChoiceTwo:"22,002", ChoiceThree:"21,500", ChoiceFour:"20,030", Answer:"21,577"),

        QuestionAnswerManager(Question:"What is the capacity of Villa Park?", ChoiceOne:"41,420", ChoiceTwo:"42,500", ChoiceThree:"42,785", ChoiceFour:"42,000", Answer:"42,785"),

        QuestionAnswerManager(Question:"What is the capacity of Vitality Stadium?", ChoiceOne:"12,053", ChoiceTwo:"11,500", ChoiceThree:"11,000", ChoiceFour:"11,329", Answer:"11,329"),

        QuestionAnswerManager(Question:"What is the capacity of Amex Stadium?", ChoiceOne:"30,666", ChoiceTwo:"31,555", ChoiceThree:"30,333", ChoiceFour:"30,504", Answer:"30,666"),

        QuestionAnswerManager(Question:"What is the capacity of Turf Moor Stadium?", ChoiceOne:"21,400", ChoiceTwo:"22,546", ChoiceThree:"22,550", ChoiceFour:"22,504", Answer:"22,546"),

        QuestionAnswerManager(Question:"What is the capacity of King Power Stadium?", ChoiceOne:"32,312", ChoiceTwo:"32,000", ChoiceThree:"32,540", ChoiceFour:"33,403", Answer:"32,312"),

        QuestionAnswerManager(Question:"What is the capacity of Anfield Stadium?", ChoiceOne:"53,000", ChoiceTwo:"54,074", ChoiceThree:"54,403", ChoiceFour:"59,493", Answer:"54,074"),

        QuestionAnswerManager(Question:"What is the capacity of Etihad Stadium?", ChoiceOne:"54,074", ChoiceTwo:"53,000", ChoiceThree:"59,493", ChoiceFour:"55,097", Answer:"55,097"),

        QuestionAnswerManager(Question:"What is the capacity of St. James' Park?", ChoiceOne:"52,243", ChoiceTwo:"53,660", ChoiceThree:"52,405", ChoiceFour:"52,430", Answer:"52,405"),

        QuestionAnswerManager(Question:"What is the capacity of St Mary's Stadium?", ChoiceOne:"35,230", ChoiceTwo:"32,505", ChoiceThree:"33,403", ChoiceFour:"31,532", Answer:"32,505"),

        QuestionAnswerManager(Question:"What is the capacity of Molineux Stadium?", ChoiceOne:"31,700", ChoiceTwo:"34,423", ChoiceThree:"31,320", ChoiceFour:"31,532", Answer:"31,700"),

        QuestionAnswerManager(Question:"What club plays at Old Trafford?", ChoiceOne:"Man Utd", ChoiceTwo:"Burnley", ChoiceThree:"Aston Villa", ChoiceFour:"Cardiff City", Answer:"Man Utd"),

        QuestionAnswerManager(Question:"What club plays at Emirates Stadium?", ChoiceOne:"Arsenal", ChoiceTwo:"Emirates Club", ChoiceThree:"Lyon", ChoiceFour:"Sevilla", Answer:"Arsenal"),

        QuestionAnswerManager(Question:"What club plays at Stamford Bridge?", ChoiceOne:"Monaco", ChoiceTwo:"Chelsea", ChoiceThree:"Fulham", ChoiceFour:"RB Leipzig", Answer:"Chelsea"),

        QuestionAnswerManager(Question:"What club plays at Selhurst Park?", ChoiceOne:"Crystal Palace", ChoiceTwo:"Brentford", ChoiceThree:"Barnsley", ChoiceFour:"Millwall", Answer:"Crystal Palace"),

        QuestionAnswerManager(Question:"What club plays at London Stadium?", ChoiceOne:"Millwall", ChoiceTwo:"Barnsley", ChoiceThree:"West Ham", ChoiceFour:"Brentford", Answer:"West Ham"),

        QuestionAnswerManager(Question:"What club plays at Craven Cottage?", ChoiceOne:"Fulham", ChoiceTwo:"Preston North End", ChoiceThree:"Cardiff City", ChoiceFour:"QPR", Answer:"Fulham"),

        QuestionAnswerManager(Question:"What club plays at Carrow Road?", ChoiceOne:"Watford", ChoiceTwo:"Barnsley", ChoiceThree:"Norwich", ChoiceFour:"Barnsley", Answer:"Norwich"),

        QuestionAnswerManager(Question:"What club plays at Bramall Lane?", ChoiceOne:"Sheffield Wednesday", ChoiceTwo:"Millwall", ChoiceThree:"Cardiff City", ChoiceFour:"Sheffield United", Answer:"Sheffield United"),

        QuestionAnswerManager(Question:"What club plays at Goodison Park?", ChoiceOne:"Everton", ChoiceTwo:"Reading", ChoiceThree:"Sunderland", ChoiceFour:"Bolton", Answer:"Everton"),

        QuestionAnswerManager(Question:"What club plays at Vicarage Road?", ChoiceOne:"Fulham", ChoiceTwo:"Cardiff City", ChoiceThree:"Watford", ChoiceFour:"Millwall", Answer:"Watford"),

        QuestionAnswerManager(Question:"What club plays at Villa Park?", ChoiceOne:"Aston Villa", ChoiceTwo:"Preston Villa", ChoiceThree:"Cardiff Villa", ChoiceFour:"Bolton Villa", Answer:"Aston Villa"),

        QuestionAnswerManager(Question:"What club plays at Vitality Stadium?", ChoiceOne:"Brentford", ChoiceTwo:"Bournemouth", ChoiceThree:"Brighton & Hove", ChoiceFour:"Barnsley", Answer:"Bournemouth"),

        QuestionAnswerManager(Question:"What club plays at Amex Stadium?", ChoiceOne:"Brighton & Hove", ChoiceTwo:"Brentford", ChoiceThree:"Barnsley", ChoiceFour:"Bournemouth", Answer:"Brighton & Hove"),
        QuestionAnswerManager(Question:"What club plays at Turf Moor Stadium?", ChoiceOne:"Watford", ChoiceTwo:"Bournemouth", ChoiceThree:"Burnley", ChoiceFour:"Norwich", Answer:"Burnley"),

        QuestionAnswerManager(Question:"What club plays at King Power Stadium?", ChoiceOne:"Leicester City", ChoiceTwo:"Brentford", ChoiceThree:"Southampton", ChoiceFour:"Chelsea", Answer:"Leicester City"),

        QuestionAnswerManager(Question:"What club plays at Anfield Stadium?", ChoiceOne:"Liverpool", ChoiceTwo:"Everton", ChoiceThree:"Arsenal", ChoiceFour:"Aston Villa", Answer:"Liverpool"),

        QuestionAnswerManager(Question:"What club plays at Etihad Stadium?", ChoiceOne:"Arsenal", ChoiceTwo:"Lyon", ChoiceThree:"Man City", ChoiceFour:"Monaco", Answer:"Man City"),

        QuestionAnswerManager(Question:"What club plays at St. James' Park?", ChoiceOne:"Newcastle", ChoiceTwo:"Southampton", ChoiceThree:"Lyon", ChoiceFour:"QPR", Answer:"Newcastle"),

        QuestionAnswerManager(Question:"What club plays at St Mary's Stadium?", ChoiceOne:"Southampton", ChoiceTwo:"Bournemouth", ChoiceThree:"Bolton", ChoiceFour:"Sheffield Wednesday", Answer:"Southampton"),

        QuestionAnswerManager(Question:"What club plays at Molineux Stadium?", ChoiceOne:"Wolves", ChoiceTwo:"Lyon", ChoiceThree:"Sevilla", ChoiceFour:"Norwich", Answer:"Wolves"),

        QuestionAnswerManager(Question:"When was Boleyn Ground demolished?", ChoiceOne:"2015", ChoiceTwo:"2016", ChoiceThree:"2013", ChoiceFour:"2017", Answer:"2016"),

        QuestionAnswerManager(Question:"When was Highbury demolished?", ChoiceOne:"2003", ChoiceTwo:"2006", ChoiceThree:"2007", ChoiceFour:"2007", Answer:"2006"),

        QuestionAnswerManager(Question:"When was the old Wembley demolished?", ChoiceOne:"2000", ChoiceTwo:"2004", ChoiceThree:"2003", ChoiceFour:"2007", Answer:"2003"),

        QuestionAnswerManager(Question:"What club plays at Camp Nou?", ChoiceOne:"Barcelona", ChoiceTwo:"Getafe", ChoiceThree:"Osasuna", ChoiceFour:"Eibar", Answer:"Barcelona"),

        QuestionAnswerManager(Question:"What is the capacity of Camp Nou?", ChoiceOne:"95,438", ChoiceTwo:"80,354", ChoiceThree:"99,354", ChoiceFour:"90,500", Answer:"99,354"),

        QuestionAnswerManager(Question:"What club plays at Santiago Bernabéu?", ChoiceOne:"Sevilla", ChoiceTwo:" Real Madrid", ChoiceThree:"Valencia", ChoiceFour:"Getafe", Answer:" Real Madrid"),

        QuestionAnswerManager(Question:"What is the capacity of Santiago Bernabéu?", ChoiceOne:"81,044", ChoiceTwo:"67,044", ChoiceThree:"55,000", ChoiceFour:"90,650", Answer:"81,044"),

        QuestionAnswerManager(Question:"What club plays at Metropolitano Stadium?", ChoiceOne:"Celta Vigo", ChoiceTwo:"Mallorca", ChoiceThree:"Madrid", ChoiceFour:"Athletic Club", Answer: "Atlético Madrid"),

        QuestionAnswerManager(Question:"What is the capacity of Metropolitano Stadium?", ChoiceOne:"80,568", ChoiceTwo:"70,000", ChoiceThree:"60,000", ChoiceFour:"68,456", Answer:"68,456"),

        QuestionAnswerManager(Question:"What club plays at Benito Villamarín?", ChoiceOne:"Seville", ChoiceTwo:"Barcelona", ChoiceThree:"Real Madrid", ChoiceFour:"Osasuna", Answer:"Seville"),

        QuestionAnswerManager(Question:"What is the capacity of Benito Villamarín?", ChoiceOne:"65,000", ChoiceTwo:"60,721", ChoiceThree:"50,675", ChoiceFour:"25,000", Answer:"60,721"),

        QuestionAnswerManager(Question:"What club plays at Lluís Companys?", ChoiceOne:"65,000", ChoiceTwo:"60,721", ChoiceThree:"50,675", ChoiceFour:"25,000", Answer:"60,721"),

        QuestionAnswerManager(Question:"What club plays at Lluís Companys?", ChoiceOne:"Villarreal", ChoiceTwo:"Getafe", ChoiceThree:"Barcelona", ChoiceFour:"Levante", Answer:"Barcelona"),

        QuestionAnswerManager(Question:"What is the capacity of Lluís Companys?", ChoiceOne:"60,713", ChoiceTwo:"60,000", ChoiceThree:"56,576", ChoiceFour:"857,484", Answer:"60,713"),

        QuestionAnswerManager(Question:"What club plays at La Cartuja?", ChoiceOne:"Seville", ChoiceTwo:"Eibar", ChoiceThree:"Real Betis", ChoiceFour:"Leganes", Answer:"Seville"),

        QuestionAnswerManager(Question:"What is the capacity of La Cartuja?", ChoiceOne:"40,000", ChoiceTwo:"50,000", ChoiceThree:"60,000", ChoiceFour:"68,000", Answer:"60,000"),

        QuestionAnswerManager(Question:"What club plays at Mestalla?", ChoiceOne:"Atlético Madrid", ChoiceTwo:"Valencia", ChoiceThree:"Valladolid", ChoiceFour:"Granada", Answer:"Valencia"),

        QuestionAnswerManager(Question:"What is the capacity of Mestalla?", ChoiceOne:"40,000", ChoiceTwo:"60,000", ChoiceThree:"55,000", ChoiceFour:"50,000", Answer:"55,000"),

        QuestionAnswerManager(Question:"What club plays at San Mamés?", ChoiceOne:"Bilbao", ChoiceTwo:"Sevilla", ChoiceThree:"Valladolid", ChoiceFour:"Alavés", Answer:"Bilbao"),

        QuestionAnswerManager(Question:"What is the capacity of San Mamés?", ChoiceOne:"50,000", ChoiceTwo:"69,975", ChoiceThree:"53,289", ChoiceFour:"80,000", Answer:"53,289"),

        QuestionAnswerManager(Question:"What club plays at Ramón Sánchez Pizjuán?", ChoiceOne:"Athletic Club", ChoiceTwo:"Seville", ChoiceThree:"Eibar", ChoiceFour:"Real Betis", Answer:"Seville"),

        QuestionAnswerManager(Question:"What is the capacity of Ramón Sánchez Pizjuán?", ChoiceOne:"40,000", ChoiceTwo:"46,947", ChoiceThree:"56,098", ChoiceFour:"47,000", Answer:"47,000"),

        QuestionAnswerManager(Question:"What club plays at RCDE Stadium?", ChoiceOne:"Barcelona", ChoiceTwo:"Espanyol", ChoiceThree:"Alavés", ChoiceFour:"Eibar", Answer:"Barcelona"),

        QuestionAnswerManager(Question:"What is the capacity of RCDE Stadium?", ChoiceOne:"57,495", ChoiceTwo:"40,000", ChoiceThree:"46,098", ChoiceFour:"98,087", Answer:"40,000"),

        QuestionAnswerManager(Question:"What player is a statue in front of Old Trafford?", ChoiceOne:"Giggs" , ChoiceTwo:"Ronaldo", ChoiceThree:"Charlton", ChoiceFour:"Rooney", Answer:"Charlton"),

        QuestionAnswerManager(Question:"What player is a statue in front of Anfield Stadium?" , ChoiceOne:"Salah" , ChoiceTwo:"Klopp" , ChoiceThree:"Shankly", ChoiceFour:"Neville", Answer:"Shankly")
    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        print(questionNumber)
        return StaduimQuestion[ranNum[questionNumber]].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return StaduimQuestion[ranNum[questionNumber]].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return StaduimQuestion[ranNum[questionNumber]].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return StaduimQuestion[ranNum[questionNumber]].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return StaduimQuestion[ranNum[questionNumber]].ChoiceFour
    }
    
    func getAnswer() -> String {
        return StaduimQuestion[ranNum[questionNumber]].Answer
    }
    
    func getProgress() -> Float {
        return Float(ranNum[questionNumber]) / Float(StaduimQuestion.count)
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
        if userChoice == StaduimQuestion[ranNum[questionNumber]].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}


