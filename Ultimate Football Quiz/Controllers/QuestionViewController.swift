//
//  QuestionViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 25/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import MessageUI
import Firebase

class QuestionViewController: UIViewController, MFMailComposeViewControllerDelegate {

    //Header
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    //QuestionBox
    @IBOutlet weak var questionType: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    //AnswerBox
    @IBOutlet weak var choiceOneLabel: UIButton!
    @IBOutlet weak var choiceTwoLabel: UIButton!
    @IBOutlet weak var choiceThreeLabel: UIButton!
    @IBOutlet weak var choiceFourLabel: UIButton!
    
    var generalQuestions = GeneralQuestion()
    
    var gameMode:String!
    var quNum: Int = 0
    var point: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionNum.text = ("0 /10")
        pointLabel.text = ("\(point)pts")
        questionType.text = gameMode
        gameModeSwitch()

    }
    

//MARK:- UI

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEnd" {
               let EndGameController = segue.destination as! EndGameViewController
               EndGameController.point = point
           }
    }
    
    

    
//MARK:- Question

    func gameModeSwitch() {
        if quNum < 10 {
            switch gameMode {
            case "General":
                general()
                
            case "Staduim":
                staduim()
                
            case "Who am I?":
                whoAmI()
                
            case "Premier League":
                premierLeague()
                
            default:
                print("Failed")
            }
        } else{
            print("-------------------- GAME DONE -------------------------------------")
            self.performSegue(withIdentifier: "goToEnd", sender: self)
                
            
        }
    }
  
    func general(){
        questionLabel.text = generalQuestions.getQuestionText()
        choiceOneLabel.setTitle(generalQuestions.getAnswerChoiceOneText(), for: .normal)
        choiceTwoLabel.setTitle(generalQuestions.getAnswerChoiceTwoText(), for: .normal)
        choiceThreeLabel.setTitle(generalQuestions.getAnswerChoiceThreeText(), for: .normal)
        choiceFourLabel.setTitle(generalQuestions.getAnswerChoiceFourText(), for: .normal)
    }
    
    func staduim(){
    }
    
    func whoAmI(){
    }
    
    func premierLeague(){
    }
    
//MARK:- Answer
    @IBAction func answerPressed(_ sender: UIButton) {
        
        // gets the title of the button the user clicked
        let userChoice = sender.currentTitle
        
        let generalAnswer = generalQuestions.getAnswer()
        
        
        if userChoice! == generalAnswer {
            
            point += 10
            
            // if user answer is correct
            sender.backgroundColor = UIColor.green
            
            pointLabel.text  = ("\(point)pts")
            
        } else{
            // if user answer is wrong
            sender.backgroundColor = UIColor.red
            sender.setTitleColor(UIColor.white, for: .normal)
            
            // Find out which button is currently holding the correct answer
            // Then change that button colour to green
            
        }

        quNum += 1
        generalQuestions.nextQuestion()
        questionNum.text = ("\(quNum) /10")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            self.choiceOneLabel.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.choiceTwoLabel.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.choiceThreeLabel.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.choiceFourLabel.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.gameModeSwitch()
        }
        sender.setTitleColor(#colorLiteral(red: 0.1098039216, green: 0.1647058824, blue: 0.3960784314, alpha: 1), for: .normal)

        
    }
    

    
     
    
    
//MARK:- Report Question
    @IBAction func reportQuestionButton(_ sender: UIButton) {
        
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        
        if !MFMailComposeViewController.canSendMail() {
            
            let alert = UIAlertController(title: "Mail services are not available", message: "Please try again once available.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.present(alert, animated: true)
            print("Mail services are not available")
            return
        } else{
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
            composeVC.setToRecipients(["abdiabdulld890@gmail.com"])
            composeVC.setMessageBody("=== Game Mode: \(gameMode!), Version: \(version!) Question Number: 001, Question:  == Please write your message below:  ", isHTML: true)
            composeVC.setSubject("(Ultimate Football App) - Error with question:  ")
            self.present(composeVC, animated: true, completion: nil)
        }
    }
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            controller.dismiss(animated: true, completion: nil)
        }
    
}


/*
 function studentFunc() {
    const email = "ultimate-football-quiz-61c26@appspot.gserviceaccount.com";
    const key = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCt30dTh6nQ/BNM\na+EcDS41jrgrR309m+/9zQo2KgMfP8IIe7kjLeh32wDolsHoTduxvf0zph0OfD35\nNOUVHGtcczElb1zAz1DMGrMMIgPjCnpGnuc50qMFFQtdETqQgeAHXnQKLioByULM\nmqA+jYjtpLJrWPFIiFKqRvUIUmhnB7oxAifG/QB25Qjb3AklyonPp+1XvBXu4kZw\nkHumDwPzYciHx4/wwV84JFAh/PSXgHsOqTvtuvrWpCsI+S8GarQ3BaSL0jzi5n8a\nUG+maiKL7D7q/BXp1HT44rxIyXAQ59IrEDAfjmHV5umZdY7hGbyUCLila5qD0+l9\nVarhdio1AgMBAAECggEACROjIFXwdEe4hTCLiaCZhTO8YwwCGn2Bv4zc59t1GsRE\nD5fP4CmFHX6qEzpNiKBJ5ANATNoy4Z70SEZt4BaB90tPKT5hR/J6rBEHwE4lSEyz\neezRMthPaNRCqdrcpQ8WoCPa6G4lBL9aNJ6s118hoxBKPSbhP7FYKWn3YDYXG6u6\nLsAQ4SpqtFKad29+PPgTAYjHRCIoMVFG+j/8s1kWrnoU003oy4+Ct7rAjOvozmPa\n1xoLo6k3EjZP3KB4BAmlFu9qrnKkvEHFAp9mB5rqtLybXTgPJwFHjhALxeYJOM9d\nS8u+purjs2yqpCZ3vdN1QCdfT/h8WS4sm3nAfs4AKQKBgQDsAkhybPXB0CKPA/Fl\nLrEiK8UT9UT+jTbf5/6vVsodf6lG0MxMATIXfEQz7uWljo4siLIT+8mhsHrTDIIc\n6RioLKoOd3NzbNRw0/PkhDjYDBUuzYE247vA0ICYrARAwgYWNqs5Ylv0Y2Bhn2kB\ndFceGbtCNV2vXz2OXtjfS6FQuQKBgQC8mZiueBFRkIgqHOjZsYZRDZ0Deynm87bd\nQybku+7UMIHEaZMeQ04V5nQ1SnVnl9DJNFtny0S0zFdRqv3luSc8nZQNg0HosKP8\nGZ9CMjplhNlID5r7OoR8nGTrg/ExQ+A2BaOKlX+aJsFD157nAe4363MfIIKfuWDH\nAfOj+qkPXQKBgGaW93cF9i4xk1Qnmp8pFMaN0DVEwKEGMXxTFFqTl3gLLkIiMSw4\nuNWMpvkMN7cnqJWjNgWJxbQLStjC7ywyBw3TnHh9ZCogfJgvCi2jbDI9zldx7WE2\nzT6bY8r5uz+LF6pASV3Aa8hoClVlPffr4pKrDMNS/05kUBW7FPq7nXvBAoGBALVu\ndUjxzIdQqQ0KPp6dfv8eP3wH0emRbsswPIwylrCd8VhHz/V+/fFnf0d817DOhVXp\n/jy9eN0M7rtr6VBDbBGN7c2KBa+ZrkdpRqHhu/fJc1U1Xfxs8OMHeLZweWjRSTHu\n/sLkypo6yhU/qmfEnaxB3r+FAOQy63zGzeFj05spAoGACpnw4QOv1al1BwFw/py3\nmvZqJ/mhLKauzq13OE9uZJbpkncrzmxF0x/iyWC8HCsf49qiqQ3KJLWGmZYU66MN\neOB9o2zHFykfeRb0e3ohu20an3595NOJKRAQIM274pMJCzMqUQ1/Ed0aWXsJm67r\nUL9dRS8y6jIqQ0LSEiFw3JQ=\n-----END PRIVATE KEY-----\n";
    const projectId = "ultimate-football-quiz-61c26";
    var firestore = FirestoreApp.getFirestore (email, key, projectId);
   
  
   // get document data from ther spreadsheet
    var ss = SpreadsheetApp.getActiveSpreadsheet();
    var sheetname = "General";
    var sheet = ss.getSheetByName(sheetname);
   
    // get the last row and column in order to define range
    var sheetLR = sheet.getLastRow(); // get the last row
    var sheetLC = sheet.getLastColumn(); // get the last column

    var dataSR = 2; // the first row of data
    // define the data range
    var sourceRange = sheet.getRange(2,1,sheetLR-dataSR+1,sheetLC);

    // get the data
    var sourceData = sourceRange.getValues();
    // get the number of length of the object in order to establish a loop value
    var sourceLen = sourceData.length;
   
   // Loop through the rows
    for (var i=0;i<sourceLen;i++){
      if(sourceData[i][1] !== '') {
        var data = {};
        data.QuestionNum = sourceData[i][0];
        data.QuestionType = sourceData[i][1];
        data.Question = sourceData[i][2];
        data.ChoiceOne = sourceData[i][3];
        data.ChoiceTwo = sourceData[i][4];
        data.ChoiceThree = sourceData[i][5];
        data.ChoiceFour = sourceData[i][6];
        data.Answer = sourceData[i][7];
        firestore.createDocument("General",data);

      }
     
   }
 }
 }
 */
