//
//  QuestionViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 25/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import MessageUI
import GoogleMobileAds
import Firebase
import FirebaseFirestore

class QuestionViewController: UIViewController, MFMailComposeViewControllerDelegate, GADInterstitialDelegate {
    
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
    
    //Models
    var generalQuestions = GeneralQuestion()
    var staduimQuestions = StaduimQuestions()
    var premierQuestions = PremierLeagueQuestions()
    var whoAmIQuestions  = WhoAmIQuestions()
    
    let db = Firestore.firestore()
    let defaults = UserDefaults.standard
    
    var interstitial: GADInterstitial!
    var bannerView: GADBannerView!
    
    var gameMode:String!
    var quNum: Int = 0
    var point: Int = 0
    var correctAnswer = " "

    
    
    //MARK:- Others
    override func viewDidLoad() {
        super.viewDidLoad()
        questionNum.text = ("0 /10")
        pointLabel.text = ("\(point)pts")
        questionType.text = gameMode
        gameModeSwitch()
        
        if !UserDefaults.standard.bool(forKey: "adsRemoved"){
            //Show Ads
            adInformation()
        }else{}
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEnd" {
            let EndGameController = segue.destination as! EndGameViewController
            EndGameController.point = point
            EndGameController.gameMode = gameMode
        }
    }
    
//MARK:- Ads
    
    func adInformation(){
        // Interstitial Ad
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        interstitial.delegate = self
        let request = GADRequest()
        interstitial.load(request)

        //Banner ad
        bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }
    
    //Tells the delegate the interstitial is to be animated off the screen.
    func interstitialWillDismissScreen(_ ad: GADInterstitial) {
    }
    
    //Tells the delegate the interstitial had been animated off the screen.
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        self.performSegue(withIdentifier: "goToEnd", sender: self)
    }

    func addBannerViewToView(_ bannerView: GADBannerView) {
     bannerView.translatesAutoresizingMaskIntoConstraints = false
     view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: view.safeAreaLayoutGuide,
                                attribute: .bottom,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
        ])
    }
    
    //MARK:- Question
    
    func gameModeSwitch() {
        if quNum < 10 {
            switch gameMode {
            case "General":
                general()
                 Analytics.logEvent("General Played", parameters:nil)
            case "Staduim":
                staduim()
                Analytics.logEvent("Staduim Played", parameters:nil)
            case "Who am I?":
                whoAmI()
                Analytics.logEvent("WhoAmI Played", parameters:nil)
            case "Premier League":
                premierLeague()
                Analytics.logEvent("PL Played", parameters:nil)
            default:
                print("Failed")
            }
        } else{
            if !UserDefaults.standard.bool(forKey: "adsRemoved"){
                if interstitial.isReady {
                    interstitial.present(fromRootViewController: self)
                    Analytics.logEvent("Ad shown", parameters: nil)
                    self.performSegue(withIdentifier: "goToEnd", sender: self)
                }else{
                    Analytics.logEvent("Ad not shown", parameters: nil)
                    self.performSegue(withIdentifier: "goToEnd", sender: self)
                }
            }else{
                self.performSegue(withIdentifier: "goToEnd", sender: self)
            }
        }
    }
    
    // Gets the questions and answers choices from the model folder
    func general(){
        questionLabel.text = generalQuestions.getQuestionText()
        choiceOneLabel.setTitle(generalQuestions.getAnswerChoiceOneText(), for: .normal)
        choiceTwoLabel.setTitle(generalQuestions.getAnswerChoiceTwoText(), for: .normal)
        choiceThreeLabel.setTitle(generalQuestions.getAnswerChoiceThreeText(), for: .normal)
        choiceFourLabel.setTitle(generalQuestions.getAnswerChoiceFourText(), for: .normal)
        correctAnswer = generalQuestions.getAnswer()
    }
    
    func staduim(){
        questionLabel.text = staduimQuestions.getQuestionText()
        choiceOneLabel.setTitle(staduimQuestions.getAnswerChoiceOneText(), for: .normal)
        choiceTwoLabel.setTitle(staduimQuestions.getAnswerChoiceTwoText(), for: .normal)
        choiceThreeLabel.setTitle(staduimQuestions.getAnswerChoiceThreeText(), for: .normal)
        choiceFourLabel.setTitle(staduimQuestions.getAnswerChoiceFourText(), for: .normal)
        correctAnswer = staduimQuestions.getAnswer()
    }
    
    func whoAmI(){
        questionLabel.text = whoAmIQuestions.getQuestionText()
        choiceOneLabel.setTitle(whoAmIQuestions.getAnswerChoiceOneText(), for: .normal)
        choiceTwoLabel.setTitle(whoAmIQuestions.getAnswerChoiceTwoText(), for: .normal)
        choiceThreeLabel.setTitle(whoAmIQuestions.getAnswerChoiceThreeText(), for: .normal)
        choiceFourLabel.setTitle(whoAmIQuestions.getAnswerChoiceFourText(), for: .normal)
        correctAnswer = whoAmIQuestions.getAnswer()
    }
    
    func premierLeague(){
        questionLabel.text = premierQuestions.getQuestionText()
        choiceOneLabel.setTitle(premierQuestions.getAnswerChoiceOneText(), for: .normal)
        choiceTwoLabel.setTitle(premierQuestions.getAnswerChoiceTwoText(), for: .normal)
        choiceThreeLabel.setTitle(premierQuestions.getAnswerChoiceThreeText(), for: .normal)
        choiceFourLabel.setTitle(premierQuestions.getAnswerChoiceFourText(), for: .normal)
        correctAnswer = premierQuestions.getAnswer()
    }
    
    //MARK:- Answer
    @IBAction func answerPressed(_ sender: UIButton) {
        
        // gets the title of the button the user clicked
        let userChoice = sender.currentTitle
        
        if userChoice! == correctAnswer {
            point += 10
            pointLabel.text  = ("\(point)pts")

            // Changes answer to green
            sender.backgroundColor = UIColor.green
        } else{
            // if user answer is wrong
            sender.backgroundColor = UIColor.red
            sender.setTitleColor(UIColor.white, for: .normal)
            
            if choiceOneLabel.currentTitle == correctAnswer{
                choiceOneLabel.backgroundColor = UIColor.green
            }
            if choiceTwoLabel.currentTitle == correctAnswer{
                choiceTwoLabel.backgroundColor = UIColor.green
            }
            if choiceThreeLabel.currentTitle == correctAnswer{
                choiceThreeLabel.backgroundColor = UIColor.green
            }
            if choiceFourLabel.currentTitle == correctAnswer{
                choiceFourLabel.backgroundColor = UIColor.green
            } else{ }
        }
        quNum += 1
        generalQuestions.nextQuestion()
        staduimQuestions.nextQuestion()
        premierQuestions.nextQuestion()
        whoAmIQuestions.nextQuestion()
        
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
        let alert = UIAlertController(title: "Report Question", message: "Below tell me whats wrong with this question", preferredStyle: .alert)
        
        alert.addTextField()
        alert.textFields![0].placeholder = "Whats the problem?"
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) in
        }))
        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { (action) in
            let questionReported = alert.textFields![0].text
            
            var ref: DocumentReference? = nil
            ref = self.db.collection("Report Question").addDocument(data: [
                "Game Mode": self.gameMode!,
                "User said": questionReported!,
                "Question is": self.questionLabel.text!
                
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print(" New question added with DocumentID: \(ref!.documentID)")
                }
            }
        }))
        self.present(alert, animated: true)
    }
}
