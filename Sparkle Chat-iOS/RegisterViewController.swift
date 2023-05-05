//
//  RegisterViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/5/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.addUnderlineBorder(color: .gray, width: 0.5)
    }

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
    }
    
}

extension UIView {
    func addUnderlineBorder (color: UIColor,width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width - 25, height: width)
        
        self.layer.addSublayer(border)
    }
    
}
