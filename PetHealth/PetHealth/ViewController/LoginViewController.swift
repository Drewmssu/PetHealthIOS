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
    
    public enum HTTPMethod: String {
        case options = "OPTIONS"
        case get     = "GET"
        case head    = "HEAD"
        case post    = "POST"
        case put     = "PUT"
        case patch   = "PATCH"
        case delete  = "DELETE"
        case trace   = "TRACE"
        case connect = "CONNECT"
    }
    
    func attemptLogin() -> Bool {
        var pass = false
        let parameters: Parameters = [
            "username": usernameTextField.text!,
            "password": passwordTextField.text!
        ]
        Alamofire.request(PetHealthApiService.LOGIN_URL, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)
            .responseJSON(completionHandler: {
                response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    print("\(json)")
                    pass = true
                
                case .failure(let error):
                    print("\(error)")
                    pass = false
                }
        })
        return pass
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
    
        
    
}

