//
//  RegisterViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/5/23.
//

import UIKit
import CLTypingLabel

class RegisterViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var mainLabel: CLTypingLabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK - Main Label Animation
        mainLabel.text = "Sparkle Chat"
        mainLabel.charInterval = 0.09;
        
        //MARK - Adding Underline to the TextField
        emailTextField.addUnderlineBorder(color: .gray, width: 0.5)

    }

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
    }
    
}

extension UIView {
    func addUnderlineBorder (color: UIColor,width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width - 10, height: width)
        
        self.layer.addSublayer(border)
    }
    
}
