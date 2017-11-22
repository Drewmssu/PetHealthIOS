//
//  SignUpViewController.swift
//  PetHealth
//
//  Created by Paul on 11/20/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

<<<<<<< HEAD
class SignUpViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func doneButtonTouchUpInside(_ sender: Any) {
        if (usernameTextField.hasText && passwordTextField.hasText && emailTextField.hasText){
            sendUser()
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "LoginScene")
            self.present(newViewController,animated: true, completion: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func sendUser(){
        
        let parameters: Parameters = [
            "username": usernameTextField.text!,
            "password": passwordTextField.text!,
            "mail": emailTextField.text!,
        ]
        
        Alamofire.request(PetHealthApiService.SIGNUP_USER, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)
            .responseJSON(completionHandler: {
                response in
                switch response.result{
                case .success(let value):
                    let json = JSON(value)
                    print("\(json)")
                case .failure(let error):
                    print("\(error)")
                }
            })
        
    }
=======
func sendUser(){
    Alamofire.request()
>>>>>>> parent of 1c5c3d6... attempt login
}
