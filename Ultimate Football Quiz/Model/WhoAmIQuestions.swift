//
//  WhoAmIQuestions.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 18/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation

struct WhoAmIQuestions {
    
    var questionNumber = 0
    var ranNum = generateRandomNumber(0, 30, 10)
    var score = 0
    
    let WhoAmIQuestion = [
        QuestionAnswerManager(Question:"I made my international debut for Brazil in 1993 and scored in the game. I played in two World Cup finals and my club career saw me play in Brazil, Italy, Angola, Spain, Greece and Uzbekistan." , ChoiceOne:"Rivaldo" , ChoiceTwo:"Cafu" , ChoiceThree:"Ronaldinho" , ChoiceFour:"Jesus" , Answer:"Rivaldo" ),
         
        QuestionAnswerManager(Question:"I've played in Germany, Italy, Austria and France. I have won Serie A and scored the first ever Golden Goal in international football." , ChoiceOne:"Progba" , ChoiceTwo:"Oliver Bierhoff" , ChoiceThree:"Mbappé" , ChoiceFour:"Griezmann" , Answer:"Oliver Bierhoff" ),
         
        QuestionAnswerManager(Question: "I have played in the Conference, League Two, League One, Championship, Premier League, the UEFA Cup, Champions League and the World Cup.", ChoiceOne:"Ronaldo" , ChoiceTwo:"McManaman" , ChoiceThree:"Steve Finnan" , ChoiceFour:"Harry Redknapp", Answer:"Steve Finnan" ),
         
        QuestionAnswerManager(Question:"I was the first Liverpool player to win the Ballon d'Or. I scored 40 goals for my country and have played in England and Spain." , ChoiceOne:"Messi" , ChoiceTwo:"Zidane" , ChoiceThree:"Conti" , ChoiceFour:"Michael Owen" , Answer:"Michael Owen" ),
         
        QuestionAnswerManager(Question: "I was originally a striker before becoming a defender. I played 11 seasons for the same club before managing them. I've won two Bundesliga titles and a Champions League.", ChoiceOne:"Jurgen Klopp" , ChoiceTwo:"Guardiola" , ChoiceThree:"Ole Gunnar Solskjaer" , ChoiceFour: "Lampard", Answer:"Jurgen Klopp" ),
         
        QuestionAnswerManager(Question:"I have played for Chelsea and spent time playing in Turkey. I've been crowned African Footballer of the Year four times and the Africa Cup of Nations twice." , ChoiceOne:"Armstrong" , ChoiceTwo: "Samuel Eto'o", ChoiceThree:"Bentley" , ChoiceFour:"Cahill" , Answer:"Samuel Eto'o" ),
         
        QuestionAnswerManager(Question:"I have won league titles in Italy, Germany, Portugal and Austria. I also won the European Cup both as a player and as a manager." , ChoiceOne:"Santos" , ChoiceTwo:"Pepe" , ChoiceThree:"Trapattoni" , ChoiceFour:"Bento" , Answer:"Trapattoni" ),
         
        QuestionAnswerManager(Question:"I am the manager who first named David Beckham as England captain." , ChoiceOne:"Rooney" , ChoiceTwo:"Zidane" , ChoiceThree:"Giggs" , ChoiceFour: "Peter Taylor" , Answer:"Peter Taylor" ),
         
        QuestionAnswerManager(Question:"I've worn numbers 7, 17, 28 and 9 in my career, playing my football across England, Spain, Italy and Portugal." , ChoiceOne:"Ronaldo" , ChoiceTwo:"Messi" , ChoiceThree:"Lingard" , ChoiceFour:"Rashford" , Answer:"Ronaldo" ),
         
        QuestionAnswerManager(Question:"I scored the first goal of the 2018/19 Premier League season." , ChoiceOne:"Progba" , ChoiceTwo:"Conti" , ChoiceThree:"Cavani" , ChoiceFour:"Higuaín", Answer: "Progba"),
         
        QuestionAnswerManager(Question:"I scored the first goal for a promoted side in the 2018/19 season." , ChoiceOne:"Marcelo" , ChoiceTwo:"Neves" , ChoiceThree:"Keane" , ChoiceFour:"Depay" , Answer: "Neves"),
         
        QuestionAnswerManager(Question:"I received the first red card of the 2018/19 Premier League season." , ChoiceOne:"Milner" , ChoiceTwo:"Trippier" , ChoiceThree:"Jagielka" , ChoiceFour:"Silva" , Answer:"Jagielka" ),
         
        QuestionAnswerManager(Question:"I won the penalty which Riyad Mahrez blazed over when Man City drew at Anfield in October." , ChoiceOne:"Son" , ChoiceTwo:"Di María" , ChoiceThree:"Schmeichel" , ChoiceFour:"Sane" , Answer:"Sane" ),
         
        QuestionAnswerManager(Question:"I took the mishit shot which led to Divock Origi's late winner in the Merseyside derby in December in season 2018/19." , ChoiceOne:"Virgil van Dijk" , ChoiceTwo:"Isco" , ChoiceThree:"Lewandowski" , ChoiceFour:"Kroos" , Answer:"Virgil van Dijk" ),
         
        QuestionAnswerManager(Question:"I scored the opening goal in Ole Gunnar Solskjaer's first game in charge of Man Utd in season 2018/19." , ChoiceOne:"Oblak" , ChoiceTwo:"Rashford" , ChoiceThree:"Dembélé" , ChoiceFour:"Stones" , Answer:"Rashford" ),
         
        QuestionAnswerManager(Question:"I scored the first Premier League goal of 2019." , ChoiceOne:"Neymar" , ChoiceTwo:"Pavard" , ChoiceThree:"Vardy" , ChoiceFour:"Lukaku" , Answer:"Vardy" ),
         
        QuestionAnswerManager(Question:"I did not go off injured for Man Utd against Liverpool at Old Trafford in February." , ChoiceOne:"Thiago Silva" , ChoiceTwo:"Neuer" , ChoiceThree:"Vardy" , ChoiceFour:"Rashford" , Answer:"Rashford" ),
         
        QuestionAnswerManager(Question: "I scored the first-ever Premier League goal at the Tottenham Hotspur Stadium.", ChoiceOne:"Son" , ChoiceTwo:"Rebic" , ChoiceThree:"Agüero" , ChoiceFour:"Kimmich" , Answer:"Son" ),
         
        QuestionAnswerManager(Question:"I received the most yellow cards during the 2018/19 season." , ChoiceOne:"Kevin De Bruyne" , ChoiceTwo:"Capoue" , ChoiceThree:"Ramos" , ChoiceFour:"Rodríguez" , Answer:"Capoue" ),
         
        QuestionAnswerManager(Question:"I scored the most own goals during the 2018/19 season." , ChoiceOne:"Luiz" , ChoiceTwo:"Salah" , ChoiceThree:"Coady" , ChoiceFour:"Walker" , Answer:"Coady" ),
         
        QuestionAnswerManager(Question:"I made history by scoring the first ever Premier League goal." ,ChoiceOne:"Chris Kiwomya" , ChoiceTwo:"Brian Deane", ChoiceThree:"Teddy Sheringham" , ChoiceFour:"Tony Agana",Answer:"Brian Deane" ),
         
        QuestionAnswerManager(Question:"I was bitten by Luis Suarez." , ChoiceOne:"Patrice Evra" , ChoiceTwo:"Kolo Toure" , ChoiceThree:"Branislav Ivanovic" , ChoiceFour:"John Terry" , Answer:"Branislav Ivanovic" ),
         
        QuestionAnswerManager(Question:"I serenaded Claudio Ranieri to celebrate Leicester City's magnificent title win." , ChoiceOne:"Andrea Bocelli" , ChoiceTwo:"Luciano Pavarotti" , ChoiceThree:"Charlotte Church" , ChoiceFour: "Sarah Brightman", Answer:"Andrea Bocelli" ),
         
        QuestionAnswerManager(Question:"I delighted the Geordie nation by joining Newcastle for a then-world-record fee." , ChoiceOne:"Michael Owen" , ChoiceTwo:"Alan Shearer" , ChoiceThree:"Andy Cole" , ChoiceFour:"Michael Owen" , Answer:"Alan Shearer" ),
         
        QuestionAnswerManager(Question:"I received a three-match suspension for goading Ruud Van Nistelrooy after he missed a penalty." , ChoiceOne:"Lauren" , ChoiceTwo:"Tony Adams" , ChoiceThree:"Patrick Vieira" , ChoiceFour:"Martin Keown" , Answer:"Martin Keown" ),
         
        QuestionAnswerManager(Question:"I assisted Sergio Aguero's 95th-minute goal that won Manchester City the title." , ChoiceOne:"Gianluigi Buffon" , ChoiceTwo:"David Silva" , ChoiceThree:"Mario Balotelli" , ChoiceFour:"Edin Dzeko" , Answer:"Mario Balotelli" ),
         
        QuestionAnswerManager(Question:"I took advantage of Steven Gerrard’s unfortunate slip to end Liverpool’s title challenge." , ChoiceOne:"Salomon Kalou" , ChoiceTwo:"Demba Ba" , ChoiceThree:"Robinho" , ChoiceFour:"Willian" , Answer:"Demba Ba" ),
         
        QuestionAnswerManager(Question:"I supplied the cross for Wayne Rooney’s brilliant overhead kick against Man City." , ChoiceOne:"Cristiano Ronaldo" , ChoiceTwo:"Antonio Valencia" , ChoiceThree:"Rafael Da Silva" , ChoiceFour:"Nani" , Answer:"Nani" ),
         
        QuestionAnswerManager(Question:"I scored the first ever Premier League goal televised on Sky Sports." , ChoiceOne:"Teddy Sheringham" , ChoiceTwo:"David Hirst" , ChoiceThree:"Brian Deane" , ChoiceFour:"Steve Finnan" , Answer:"Teddy Sheringham" ),
         
        QuestionAnswerManager(Question:"I ordered my team to change kits at half time because we were losing 3-0." , ChoiceOne:"Arsène Wenger" , ChoiceTwo:"George Graham" , ChoiceThree:"Christian Gross" , ChoiceFour:"Sir Alex Ferguson" , Answer:"Sir Alex Ferguson" ),

    ]
    
    
    //MARK:- Getters
    
    func getQuestionText() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].Question
    }
    
    func getAnswerChoiceOneText() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].ChoiceOne
    }
    
    func getAnswerChoiceTwoText() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].ChoiceTwo
    }
    
    func getAnswerChoiceThreeText() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].ChoiceThree
    }
    
    func getAnswerChoiceFourText() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].ChoiceFour
    }
    
    func getAnswer() -> String {
        return WhoAmIQuestion[ranNum[questionNumber]].Answer
    }
    
    func getProgress() -> Float {
        return Float(ranNum[questionNumber]) / Float(WhoAmIQuestion.count)
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
        if userChoice == WhoAmIQuestion[ranNum[questionNumber]].Answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
