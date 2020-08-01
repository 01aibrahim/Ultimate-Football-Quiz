//
//  ViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 25/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userOption = ""


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuestionPage" {
               let questionController = segue.destination as! QuestionViewController
               questionController.gameMode = userOption
           }
    }

//MARK:- Game Mode Pressed
    
    @IBAction func genralPressed(_ sender: UIButton) {
        userOption = "General"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    
    @IBAction func staduimPressed(_ sender: UIButton) {
        userOption = "Staduim"
        self.performSegue(withIdentifier: "goToQuestionPage", sender: self)
    }
    
    @IBAction func trueFalsePressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
       
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
        self.performSegue(withIdentifier: "goToSetting", sender: self)

    }
    
    @IBAction func leaderboardPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    


    
}

