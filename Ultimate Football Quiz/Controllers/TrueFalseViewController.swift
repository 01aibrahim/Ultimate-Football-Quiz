//
//  TrueFalseViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import MessageUI
import Firebase
import GoogleMobileAds
import Firebase
import FirebaseFirestore

class TrueFalseViewController: UIViewController, MFMailComposeViewControllerDelegate, GADInterstitialDelegate{
    
    //Header
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    //QuestionBox
    @IBOutlet weak var questionType: UILabel!
    @IBOutlet weak var questionLabel:UILabel!
    
    //AnswerBox
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quNum: Int = 0
    var point: Int = 0
    let gameMode = "True & False"
    let db = Firestore.firestore()

    var trueFalseQuestion = TrueFalseQuestions()
    var interstitial: GADInterstitial!
    var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.logEvent("TrueFalse Played", parameters:nil)
        
        questionNum.text = ("0 /10")
        pointLabel.text = ("\(point)pts")
        questionType.text = "True & False"
        
        startQuiz()
        
        if !UserDefaults.standard.bool(forKey: "adsRemoved"){
            //Show Ads
            adInformation()
        }else{
        }
    }
    
    //MARK:- ADs
    
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
        print("interstitialWillDismissScreen")
    }
    
    //Tells the delegate the interstitial had been animated off the screen.
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        print("interstitialDidDismissScreen")
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
    //MARK:- Prepare Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEnd" {
            let EndGameController = segue.destination as! EndGameViewController
            EndGameController.point = point
            EndGameController.gameMode = gameMode
        }
    }
    
    //MARK:- Question
    
    func startQuiz(){
        if quNum < 10 {
            questionLabel.text = trueFalseQuestion.getQuestionText()
        }else{
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
    //MARK:- Answers
    
    @IBAction func answeredPressed(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        let correctAnswer = trueFalseQuestion.getAnswer()
        
        if userChoice == correctAnswer {
            point += 10
            pointLabel.text  = ("\(point)pts")

            // if user answer is correct
            sender.backgroundColor = UIColor.green
        } else{
            // if user answer is wrong
            sender.backgroundColor = UIColor.red
            sender.setTitleColor(UIColor.white, for: .normal)
        }
        quNum += 1
        questionNum.text = ("\(quNum) /10")
        trueFalseQuestion.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            self.trueButton.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.falseButton.backgroundColor = #colorLiteral(red: 0.953561008, green: 0.6000034809, blue: 0.5205221176, alpha: 1)
            self.startQuiz()
        }
        sender.setTitleColor(#colorLiteral(red: 0.1098039216, green: 0.1647058824, blue: 0.3960784314, alpha: 1), for: .normal)
    }
    
    //MARK:- Report Question
    @IBAction func reportPressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Report Question", message: "Below tell me whats wrong with this question", preferredStyle: .alert)
        
        alert.addTextField()
        alert.textFields![0].placeholder = "Whats the problem?"
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) in
        }))
        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { (action) in
            let questionReported = alert.textFields![0].text
            
            var ref: DocumentReference? = nil
            ref = self.db.collection("Report Question").addDocument(data: [
                "Game Mode": "True & False",
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

