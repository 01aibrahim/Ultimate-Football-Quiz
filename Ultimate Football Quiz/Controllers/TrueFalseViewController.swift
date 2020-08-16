//
//  TrueFalseViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 16/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import GoogleMobileAds
import MessageUI


class TrueFalseViewController: UIViewController, MFMailComposeViewControllerDelegate, GADInterstitialDelegate {
    
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
    
    var trueFalseQuestion = TrueFalseQuestions()
    var interstitial: GADInterstitial!
    var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        questionNum.text = ("0 /10")
        pointLabel.text = ("\(point)pts")
        questionType.text = "True & False"
        
        
        startQuiz()
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
    
    
    //MARK:- Question
    
    func startQuiz(){
        
        if quNum < 10 {
            questionLabel.text = trueFalseQuestion.getQuestionText()
            
        }else{
            if interstitial.isReady {
                interstitial.present(fromRootViewController: self)
                self.performSegue(withIdentifier: "goToEnd", sender: self)
            } else {
                print("Ad wasn't ready")
                self.performSegue(withIdentifier: "goToEnd", sender: self)
                
            }
        }
    }
    
    @IBAction func answeredPressed(_ sender: UIButton) {
        let currentTitle = sender.currentTitle
        let userChoice = currentTitle!.lowercased()
        let correctAnswer = trueFalseQuestion.getAnswer()
        
        if userChoice == correctAnswer {
            point += 10
            
            // if user answer is correct
            sender.backgroundColor = UIColor.green
            
            pointLabel.text  = ("\(point)pts")
            
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
            composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
            composeVC.setMessageBody("=== Game Mode: True & False, Version: \(version!) Question Number: 001, Question:  == Please write your message below:  ", isHTML: true)
            composeVC.setSubject("(Ultimate Football App) - Error with question: \(String(describing: questionLabel.text)) ")
            self.present(composeVC, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}
