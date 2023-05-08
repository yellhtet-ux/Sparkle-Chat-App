//
//  MessageViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/8/23.
//

import UIKit
import GoogleSignIn
import FirebaseCore
import FirebaseAuth

class MessageViewController: UIViewController {

    @IBOutlet var messageTextField: UITextField!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.hidesBackButton = true;
            navigationItem.title = "Sparkle Chat"

    }
    
    @IBAction func sendButton(_ sender: UIButton) {
    }
    
    
    @IBAction func signOutButton(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
}
