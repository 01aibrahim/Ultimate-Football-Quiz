//
//  ViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 25/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PremierLeagueButton: UIButton!
    var userOption = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateUser()
        PremierLeagueButton.isHidden = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuestionPage" {
            let questionController = segue.destination as! QuestionViewController
            questionController.gameMode = userOption
        }
    }
    
    func authenticateUser(){
        // Logs players into the game centre
        let player = GKLocalPlayer.local
        player.authenticateHandler = { vc, error in
            guard error == nil else {
                print(error?.localizedDescription ?? "")
                return
            }
            if let vc = vc{
                self.present(vc, animated: true, completion: nil)
            }
        }
    }
    
    //MARK:- Game Mode Pressed
    // It will see which option was clicked and send user to that game mode.
    @IBAction func genralPressed(_ sender: UIButton) {
        userOption = "General"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    
    @IBAction func staduimPressed(_ sender: UIButton) {
        userOption = "Staduim"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    
    @IBAction func trueFalsePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToTrueFalse", sender: self)
        
    }
    
    @IBAction func whoPressed(_ sender: UIButton) {
        userOption = "Who am I?"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    
    @IBAction func PremierPressed(_ sender: UIButton) {
        userOption = "Premier League"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    //MARK:- Others Pressed
    
    @IBAction func settingPressed(_ sender: UIButton) {
        // Segues to the Setting page
        self.performSegue(withIdentifier: "goToSetting", sender: self)
    }
    
    @IBAction func leaderboardPressed(_ sender: UIButton) {
        // Shows the leaderboard
        let vc = GKGameCenterViewController()
        vc.gameCenterDelegate = self
        vc.viewState = .leaderboards
        vc.leaderboardIdentifier = "UltimateFootballQuizAllTimeScores"
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController:
    GKGameCenterControllerDelegate{
        func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
            gameCenterViewController.dismiss(animated: true, completion: nil)
        }
    }


