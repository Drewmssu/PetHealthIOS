//
//  Helper.swift
//  PetHealth
//
//  Created by Alumnos on 11/22/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import SwiftyJSON

class Helper: NSObject {
    
    class func appTransition() {
        guard let window = UIApplication.shared.keyWindow else { return }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        var vc: UIViewController
        if getUserId() == nil {
             vc = sb.instantiateInitialViewController()!
            
        } else {
            //redirect to main screen
            vc = sb.instantiateViewController(withIdentifier: "main")
        }
        
        window.rootViewController = vc
        
        UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromBottom, animations: nil, completion: nil)
    }
    
    class func saveUser(userId: Int) {
        //Save user Id to UserDefaults
        let def = UserDefaults.standard
        def.setValue(userId, forKey: "userId")
        def.synchronize()
        
        appTransition()
    }
    
    class func getUserId() -> Int? {
        let def = UserDefaults.standard
        return def.object(forKey: "userId") as? Int
    }

}
