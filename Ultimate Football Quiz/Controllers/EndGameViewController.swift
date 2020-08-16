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



class EndGameViewController: UIViewController {
    
    var point:Int!
    var gameMode:String!
    var bannerView: GADBannerView!
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text = String(point!)
        
        bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        addBannerViewToView(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
    }

//MARK:- Others
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playAgain" {
            let questionController = segue.destination as! QuestionViewController
            questionController.gameMode = gameMode
        }
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
        
        self.performSegue(withIdentifier: "playAgain", sender: self)
        
    }
    
    @IBAction func backToHomePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "backToHome", sender: self)
        
    }
    
    
    
    
//MARK:- Share
    @IBAction func sharePressed(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: ["Hey, I scored \(point!) on Ultimate Football Quiz. Can you do better? [APP STORE LINK]"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func leaderboardPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
