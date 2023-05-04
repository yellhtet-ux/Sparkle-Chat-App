//
//  ViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var facebookLoginButton: UIButton!
    @IBOutlet var gmailLoginButton: UIButton!
    @IBOutlet var registerButton: UIButton!
    
    func roundedButtons () {
        facebookLoginButton.layer.cornerRadius = facebookLoginButton.bounds.size.width / 10
        gmailLoginButton.layer.cornerRadius = gmailLoginButton.bounds.size.width / 10
        registerButton.layer.cornerRadius = registerButton.bounds.size.width / 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundedButtons()
        
    }


}

