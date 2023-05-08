//
//  LoginViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/8/23.
//

import UIKit
import CLTypingLabel

class LoginViewController: UIViewController {

    @IBOutlet var mainLabel: CLTypingLabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK - Main Label Animation
        mainLabel.text = "Sparkle Chat"
        mainLabel.charInterval = 0.09;

    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
}
