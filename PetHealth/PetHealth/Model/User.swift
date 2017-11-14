//
//  User.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/14/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    var userId: Int
    var username: String
    var password: String
    var mail: String
    var photo: String
    var bio: String
    
    init() {
        userId = 0
        username = ""
        password = ""
        mail = ""
        photo = ""
        bio = ""
    }
    
    init(from jsonUser: JSON) {
        userId = jsonUser["userId"].intValue
        username = jsonUser["username"].stringValue
        password = jsonUser["password"].stringValue
        mail = jsonUser["mail"].stringValue
        photo = jsonUser["photo"].stringValue
        bio = jsonUser["bio"].stringValue
    }
    
    static func from(jsonUsers: [JSON]) -> [User] {
        var users: [User] = []
        let count = jsonUsers.count
        for i in 0...count {
            users.append(User.init(from: jsonUsers[i]))
        }
        return users
    }
    
}
