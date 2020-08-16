//
//  QuestionAnswerManager.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 27/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import Foundation


struct QuestionAnswerManager {
     
    var Question: String
    var ChoiceOne: String
    var ChoiceTwo: String
    var ChoiceThree: String
    var ChoiceFour: String
    var Answer: String

}

/*
 
 
 protocol DocumentSerializable {
     init?(dictionary:[String:Any])
 }

     var Question: String
     var ChoiceOne: String
     var ChoiceTwo: String
     var ChoiceThree: String
     var ChoiceFour: String
     var Answer: String
     
     var dictionary:[String:Any]{
         return[
             "Question":Question,
             "ChoiceOne":ChoiceOne,
             "ChoiceTwo":ChoiceTwo,
             "ChoiceThree":ChoiceThree,
             "ChoiceFour":ChoiceFour,
             "Answer":Answer
         ]
     }
 }

 extension QuestionAnswerManager : DocumentSerializable{
     init?(dictionary: [String : Any]) {
         guard let Question = dictionary["Question"] as? String,
             let ChoiceOne = dictionary["ChoiceOne"] as? String,
             let ChoiceTwo = dictionary["ChoiceTwo"] as? String,
             let ChoiceThree = dictionary["ChoiceThree"] as? String,
             let ChoiceFour = dictionary["ChoiceFour"] as? String,
             let Answer = dictionary["Answer"] as? String
         else{
             return nil
         }
         
         self.init(Question: Question, ChoiceOne: ChoiceOne, ChoiceTwo: ChoiceTwo, ChoiceThree: ChoiceThree, ChoiceFour: ChoiceFour, Answer: Answer)
          
     }
 }

 
 
 
 let db = Firestore.firestore()

 func generalQuestionAns(){
     db.collection("General")
         .document("56BISQQYas6MDrPK7d1g")
         .getDocument { (document, error) in
             
             // Check for error
             if error == nil {
                 
                 // Check that this document exists
                 if document != nil && document!.exists {
                     
                     let documentData = document!.data()
                     print(documentData!)
                 }
                 
             }
     }
 }
 */
