//
//  ViewController.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/13/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func showPasswordTouchDown(_ sender: Any) {
        passwordTextField.isSecureTextEntry = false
    }
    
    @IBAction func showPasswordTouchUpInside(_ sender: Any) {
        passwordTextField.isSecureTextEntry = true
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let username = usernameTextField.text, !username.isEmpty else { return }
        guard let password = passwordTextField.text, !password.isEmpty else { return }
        
        API.login(username: username, password: password) { (error: Error?, success: Bool) in
            if success {}
            else {}
        }
        
    }
    
    
        
    
}

