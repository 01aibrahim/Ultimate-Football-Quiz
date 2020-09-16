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
    var ranNum = generateRandomNumber(0, 62, 10)
    var score = 0
    
    let TrueFalseQuestion = [
        QuestionTrueFalseManager(Question:"It took Cristiano Ronaldo 27 games to score his first Champions League goal." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The phrase 'park the bus' arose when Jose Mourinho was forced to park the Chelsea team bus after the bus driver fell ill." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Singer in Irish boyband Westlife Nicky Byrne played for Leeds United before moving into music." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Sir Alex Ferguson managed the Scotland national team." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Liverpool legend Kenny Dalglish is known as 'King Kenny' because he is related to the British Royal Family." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Frank Lampard has scored more Premier League goals than Thierry Henry, Robbie Fowler and Michael Owen." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Bayern Munich star Thomas Muller is a keen chess player and once won a Bavarian chess tournament." , Answer: "FALSE"),
        QuestionTrueFalseManager(Question:"Former Brazil and Barcelona star Ronaldinho spent time in prison after being found to have used a fake passport." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"David Beckham took ballet lessons during his time at Manchester United in order to improve his agility." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Brazil icon Pele once starred in a Hollywood movie alongside Michael Caine and Sylvester Stallone." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The Premier League began in 1888." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Alan Shearer is the all time Premier League Leading Scorer." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"David Beckham scored the longest distance Premier League goal." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Steven Gerrard has made more Premier League appearances than Frank Lampard." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Teddy Sheringham is the only outfield player to play a Premier League match in his forties." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Dean Holdsworth scored the first Premier League goal." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Nigel Martyn kept more Premier League clean sheets than David Seaman." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Jermain Defoe once scored 5 goals in a single Premier League half." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Angel Di Maria is the most expensive player bought by a Premier League team." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Ryan Giggs played in the opening weekend of Premier League fixtures." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Manchester United have won every single Premier League cup since 2000" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Arsenal sells the most expensive pies in the Premier League" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Paul Scholes has won the Premier League Player of the Month award more times than any other player" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"The record for fewest points won in a Premier League season is held by Sunderland" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Eric Cantona scored the first ever Premier League hat trick" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Arsenal's 'Invincibles' went unbeaten for over 50 Premier League matches" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Kevin Phillips was the first Premier League player to win the European Golden Shoe award" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The record for most points scored in a Premier League season is held by Manchester United" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Thierry Henry won more Premier League Golden Boots than Alan Shearer" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The youngest Premier League goalscorer was 16 years old when he scored his first goal" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"No player has ever received more than 100 yellow cards" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Blackburn Rovers have won the Premier League" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Duncan Ferguson is the only player to have been sent off in 10 Premier League games" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"There are two Premier League stadiums with a capacity of over 60,000" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Emile Heskey has played over 500 Premier League matches" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Shola Ameobi has played in over 100 Premier League matches as a substitute" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"As of 2013, no English manager has won the Premier League" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Everton FC has never been relegated from the Premier League" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"No German has ever won the Premier League Player of the Month award" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"George Burley has won the Premier League Manager of the Season award" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Mesut Ozil is the highest paid Arsenal player of all time " , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Chelsea spent 132,456,000 in 2012/13" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Chelsea once lost to Benevento 0-2 and got Diego Costa Sent Off" , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Gianfranco Zola Got Booked only once" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Ruud Guillt played for AC Milan" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Swansea Is a Welsh Club" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"No European team has won a World Cup outside of Europe?" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Sergio Aguero Was born in Argentina" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Both England and Argentina have won the FIFA World Cup twice." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"The 2018 FIFA World Cup was held in Brazil." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Bolivia has played in three FIFA World Cup final stages but never won a single match." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"Brazilian striker Pelé has won the FIFA World Cup a record four times." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"The FIFA World Cup final stage has never been played in Oceania" , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The Netherlands have reached the FIFA World Cup final three times, but never managed to lift the trophy." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"In 2010, Spain won the FIFA World Cup despite scoring only 8 goals over the whole final stage." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The first FIFA World Cup was held in Argentina in 1930." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Due to World War 2, the FIFA World Cup was not held in 1942 and 1946." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"There have never been any FIFA World Cup finals between two teams from the same continent." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"On 8 July 2014, Germany won 5-1 against Brazil in the semi-finals of the 2014 FIFA World Cup." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Brazil won both FIFA World Cups that they played as hosts, in 1950 and 2014." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"Brazil has won more FIFA World Cups than any other nation." , Answer:"TRUE" ),
        QuestionTrueFalseManager(Question:"The only country to win back to back FIFA World Cup titles was West Germany, winning in 1958 and 1962." , Answer:"FALSE" ),
        QuestionTrueFalseManager(Question:"At the first World Cup, in 1930, each team had to bring its own ball." , Answer:"TRUE" )
    ]
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        return TrueFalseQuestion[ranNum[questionNumber]].Question
    }
    
    func getAnswer() -> String {
        return TrueFalseQuestion[ranNum[questionNumber]].Answer
    }
    
    func getProgress() -> Float {
        return Float(ranNum[questionNumber]) / Float(TrueFalseQuestion.count)
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
        if userChoice == TrueFalseQuestion[ranNum[questionNumber]].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
