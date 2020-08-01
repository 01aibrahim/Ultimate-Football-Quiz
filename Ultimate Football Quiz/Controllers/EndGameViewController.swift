//
//  EndGameViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 01/08/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {

    var point:Int!
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(point!)
    }
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
    }
    
    @IBAction func backToHomePressed(_ sender: UIButton) {
    }
    
    @IBAction func sharePressed(_ sender: UIButton) {
    }
    
    @IBAction func leaderboardPressed(_ sender: UIButton) {
    }
    
    


}
