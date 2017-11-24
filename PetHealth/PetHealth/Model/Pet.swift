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
    var description: String
    var ownerName:String
    var birthDate: String
    var race: String
    var ownerId: Int
    var photoUrl: String
    var animalTypeId: Int
    var animalTypeName: String
    
    init() {
        id = 0
        name = ""
        description = ""
        ownerName = ""
        birthDate = ""
        race = ""
        ownerId = 0
        photoUrl = ""
        animalTypeId = 0
        animalTypeName = ""
    }
    
    init(from jsonPet: JSON) {
        id = jsonPet["petId"].intValue
        name = jsonPet["name"].stringValue
        description = jsonPet["description"].stringValue
        ownerName = jsonPet["ownerName"].stringValue
        birthDate = jsonPet["birthDate"].stringValue
        race = jsonPet["race"].stringValue
        ownerId = jsonPet["ownerId"].intValue
        photoUrl = jsonPet["photo"].stringValue
        animalTypeId = jsonPet["animalType"].intValue
        animalTypeName = jsonPet["animalTypeName"].stringValue
    }
    
    static func from(jsonPets: [JSON]) -> [Pet] {
        var pets: [Pet] = []
        let count = jsonPets.count
        for i in 0...count - 1 {
            pets.append(Pet.init(from: jsonPets[i]))
        }
        return pets
    }
    
    func urlToImage() -> String {
        return UrlToImage.urlToImage(forUrl: photoUrl)
    }
    
}
