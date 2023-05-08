//
//  ViewController.swift
//  Sparkle Chat-iOS
//
//  Created by Timmy Cole on 5/3/23.
//

import UIKit
import CLTypingLabel
import GoogleSignIn
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet var mainLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK - Main Label Animation
        mainLabel.text = "Sparkle Chat"
        mainLabel.charInterval = 0.09;
    }
    
}



//MARK - Apple and Google Login Process

extension ViewController   {
    @IBAction func googleLoginButton(_ sender: UIButton) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { [unowned self] result, error in
            if let error = error {
                print("There's an error \(error.localizedDescription)")
            }else {
                
            }

          guard let user = result?.user,
            let idToken = user.idToken?.tokenString
                
          else {
              return
          }

            let credential = GoogleAuthProvider.credential(withIDToken: idToken,accessToken: user.accessToken.tokenString)

            Auth.auth().signIn(with: credential) { result, error in
                if let error = error {
                    print("There's an error when Logging in with Google \(error.localizedDescription)")
                }else {
                    self.performSegue(withIdentifier: "Message Identifier", sender: nil)
                }
            }
                
        }

    }
    
    @IBAction func appleLoginButton(_ sender: UIButton) {
        
    }
}


//MARK - Sparkle Account Register and Login Process

extension ViewController {
    @IBAction func sparkleLoginButton(_ sender: UIButton) {
        
    }
    
   @IBAction func registerLoginButton(_ sender: UIButton) {
   
   }
}


