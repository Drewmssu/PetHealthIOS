//
//  Api.swift
//  PetHealth
//
//  Created by Alumnos on 11/22/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class API: NSObject {
    
    class func login(username: String, password: String, completion: @escaping (_ error: Error?, _ success: Bool) -> Void)  {
        let url = PetHealthApiService.LOGIN_URL
        let parameters = [
            "username": username,
            "password": password
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON(completionHandler: {
                response in
                switch response.result{
                case .failure(let error):
                    completion(error, false)
                    print("\(error)")
                    
                case .success(let value):
                    let json = JSON(value)
                    if let userId = json["userLog"]["userId"].int {
                        print("userId: \(userId)")
                        
                        Helper.saveUser(userId: userId)
                        
                        completion(nil, true)
                    }
                }
            })
    }

}
