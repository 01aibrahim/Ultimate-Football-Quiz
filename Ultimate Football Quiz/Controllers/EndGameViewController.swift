//
//  EndGameViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 01/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import MessageUI
import GoogleMobileAds
import GameKit


class EndGameViewController: UIViewController {
    
    var point:Int!
    var gameMode:String!
    var bannerView: GADBannerView!
    let defaults = UserDefaults.standard
    var NewAllScore = 0


    @IBOutlet weak var finalScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text = String(point!)
        score()
        
        if !UserDefaults.standard.bool(forKey: "adsRemoved"){
            //Show Ads
            adInformation()
        }else{
        }
    }
    
    
//MARK:- Score Saving
    func score(){
        let CurrentScore = point!
        let LastScore = defaults.integer(forKey: "AllTimeScore")
        
        NewAllScore = CurrentScore + LastScore
        defaults.set(NewAllScore, forKey: "AllTimeScore")

        let score = GKScore(leaderboardIdentifier: "UltimateFootballQuizAllTimeScores")
        score.value = Int64(NewAllScore)
        GKScore.report([score]) { error in guard error == nil else{
            print(error?.localizedDescription ?? "")
            return
            }
            print("Completed the score update")
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playAgain" {
            let questionController = segue.destination as! QuestionViewController
            questionController.gameMode = gameMode
        }
    }

//MARK:- Ad
    
    func adInformation(){
        bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        addBannerViewToView(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
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
    
//MARK:- Button Action
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        playAgain()
    }
       
    func playAgain(){
        switch gameMode {
        case "General":
            self.performSegue(withIdentifier: "playAgain", sender: self)
            
        case "Staduim":
            self.performSegue(withIdentifier: "playAgain", sender: self)
            
        case "Who am I?":
            self.performSegue(withIdentifier: "playAgain", sender: self)
            
        case "Premier League":
            self.performSegue(withIdentifier: "playAgain", sender: self)
            
        case "True & False":
            self.performSegue(withIdentifier: "playTrueFalse", sender: self)
            
        default:
            print("Failed")
        }
    }
        
    @IBAction func backToHomePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backToHome", sender: self)
    }

//MARK:- Share
    @IBAction func sharePressed(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: ["Hey, I've got a total of \(NewAllScore) points on Ultimate Football Quiz. Can you do better? [APP STORE LINK]"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func leaderboardPressed(_ sender: UIButton) {
        let vc = GKGameCenterViewController()
        vc.gameCenterDelegate = self
        vc.viewState = .leaderboards
        vc.leaderboardIdentifier = "UltimateFootballQuizAllTimeScores"
        present(vc, animated: true, completion: nil)
    }
}

extension EndGameViewController:
GKGameCenterControllerDelegate{
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true, completion: nil)
    }
}
