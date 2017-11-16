//
//  Person.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/16/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import Foundation
import SwiftyJSON

class Person {
    var id: Int
    var name: String
    var lastname: String
    var dni: String
    var address: String
    var phone: String
    
    init() {
        id = 0
        name = ""
        lastname = ""
        dni = ""
        address = ""
        phone = ""
    }
    
    init (from jsonPerson: JSON) {
        id = jsonPerson["id"].intValue
        name = jsonPerson["name"].stringValue
        lastname = jsonPerson["lastname"].stringValue
        dni = jsonPerson["dni"].stringValue
        address = jsonPerson["address"].stringValue
        phone = jsonPerson["phone"].stringValue
    }
    
    static func from(jsonPersons: [JSON]) -> [Person] {
        var persons: [Person] = []
        let count = jsonPersons.count
        for i in 0...count - 1 {
            persons.append(Person.init(from: jsonPersons[i]))
        }
        return persons
    }
}
