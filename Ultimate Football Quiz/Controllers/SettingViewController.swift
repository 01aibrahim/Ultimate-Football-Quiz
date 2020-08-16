//
//  settingViewController.swift
//  Ultimate Football Quiz
//
//  Created by Abdulrahman ibrahim on 25/07/2020.
//  Copyright © 2020 Abdulrahman ibrahim. All rights reserved.
//

import UIKit
import MessageUI
import StoreKit
import SafariServices

class settingViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var versionNum: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Version Number details
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            self.versionNum.text = "Version: " + version
        }
        
    }
    
    
    
//MARK:- Ads
    
    @IBAction func removeAdPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func restorePurchasePressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
//MARK:- Social
    
    @IBAction func inviteFriendPressed(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: ["Hey! Check this app out! Ultimate Football Quiz is a great football quiz app! [LINK]"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    }
    
    @IBAction func rateAppPressed(_ sender: UIButton) {
        SKStoreReviewController.requestReview()
        
    }
    
    @IBAction func emailUsPressed(_ sender: UIButton) {
          if !MFMailComposeViewController.canSendMail() {
              
                  let alert = UIAlertController(title: "Mail services are not available", message: "Please try again once available.", preferredStyle: .alert)
                  alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
                  self.present(alert, animated: true)
                  return
              } else{
              
              let alert = UIAlertController(title: "Email us", message: "What is the enquire of your email.", preferredStyle: .alert)
              
              alert.addAction(UIAlertAction(title: "Bug with the app", style: .default)
              { action -> Void in
          
                  let dictionary = Bundle.main.infoDictionary!
                  let version = dictionary["CFBundleShortVersionString"] as! String
                  
                  let composeVC = MFMailComposeViewController()
                  composeVC.mailComposeDelegate = self
                  composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
                  composeVC.setMessageBody("=== App Version: \(version) == ", isHTML: true)
                  composeVC.setSubject("(Ultimate Football App) - Found a bug, you should fix! ")
                  self.present(composeVC, animated: true, completion: nil)
              })
              
              alert.addAction(UIAlertAction(title: "Suggest an Idea", style: .default)
              { action -> Void in
                  let composeVC = MFMailComposeViewController()
                  composeVC.mailComposeDelegate = self
                  composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
                  composeVC.setMessageBody("", isHTML: true)
                  composeVC.setSubject("(Ultimate Football App) - Suggesting an Idea ")
                  self.present(composeVC, animated: true, completion: nil)
              })
              
              alert.addAction(UIAlertAction(title: "Advertisement", style: .default)
              { action -> Void in
                  let composeVC = MFMailComposeViewController()
                  composeVC.mailComposeDelegate = self
                  composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
                  composeVC.setMessageBody("", isHTML: true)
                  composeVC.setSubject("(Ultimate Football App) - Advertisement ")
                  self.present(composeVC, animated: true, completion: nil)
              })
        
              alert.addAction(UIAlertAction(title: "Other", style: .default)
              { action -> Void in
                  let composeVC = MFMailComposeViewController()
                  composeVC.mailComposeDelegate = self
                  composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
                  composeVC.setMessageBody("", isHTML: true)
                  composeVC.setSubject("(Ultimate Football App) -  ")
                  self.present(composeVC, animated: true, completion: nil)
              })
              alert.addAction(UIAlertAction(title: "Suggest a new question", style: .default)
              { action -> Void in
                  let composeVC = MFMailComposeViewController()
                  composeVC.mailComposeDelegate = self
                  composeVC.setToRecipients(["01aibrahim.dev@gmail.com"])
                  composeVC.setMessageBody("Question:    Answer:  ", isHTML: true)
                  composeVC.setSubject("(Ultimate Football App) -  New Question!! ")
                  self.present(composeVC, animated: true, completion: nil)
              })
              alert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: nil))
              self.present(alert, animated: true)
              }
          }
          
          func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
              controller.dismiss(animated: true, completion: nil)
          }
    
    @IBAction func statsPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Unavailable at the moment", message: "We are working hard to release this feature.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    
//MARK:- Policies
    
    func showSafariVC(for url: String){
        guard let url = URL(string: url)else{
            return
        }
        let safariVC = SFSafariViewController(url:url)
        present(safariVC, animated: true)
    }
    
    @IBAction func privacyPolicyPressed(_ sender: UIButton) {
    showSafariVC(for: "https://www.notion.so/Privacy-Policy-247705ef759f412fbec58cf6845bdbd5")
    }
    
    @IBAction func termsPressed(_ sender: UIButton) {
        showSafariVC(for: "https://www.notion.so/Terms-and-Conditions-018c87dac4ba45b9aaef691bf643a820")
    }
    
    @IBAction func creditPressed(_ sender: UIButton) {
        showSafariVC(for: "https://www.notion.so/Credits-a7e3c5074d3b41849375bdc762b10fad")
    }
}
