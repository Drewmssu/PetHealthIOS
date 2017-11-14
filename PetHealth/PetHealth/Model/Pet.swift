//
//  Pet.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/14/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import Foundation
import SwiftyJSON

class Pet {
    var id: Int
    var name: String
    var race: String
    var age: String
    var description: String
    var image: String
    
    init() {
        id = 0
        name = ""
        race = ""
        age = ""
        description = ""
        image = ""
    }
    
    init(from jsonPet: JSON) {
        id = jsonPet["id"].intValue
        name = jsonPet["name"].stringValue
        race = jsonPet["race"].stringValue
        age = jsonPet["age"].stringValue
        description = jsonPet["description"].stringValue
        image = jsonPet["image"].stringValue
    }
    
    static func from(jsonPets: [JSON]) -> [Pet] {
        var pets: [Pet] = []
        let count = jsonPets.count
        for i in 0...count - 1 {
            pets.append(Pet.init(from: jsonPets[i]))
        }
        return pets
    }
    
}
