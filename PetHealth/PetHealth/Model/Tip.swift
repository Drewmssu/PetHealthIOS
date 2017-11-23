//
//  MyTips.swift
//  PetHealth
//
//  Copyright © 2017 iSoftware. All rights reserved.


import Foundation
import SwiftyJSON

class Tip {
    var id: Int?
    var imageUrl: String
    var ownerName: String
    var description: String
    
    init() {
        id = nil
        imageUrl = ""
        ownerName = ""
        description = ""
    }
    
    init(from jsonTip: JSON) {
        id = jsonTip["TipId"].intValue
        imageUrl = jsonTip["Image"].stringValue
        ownerName = jsonTip["OwnerUserName"].stringValue
        description = jsonTip["Content"].stringValue
    }
    
    static func from(jsonTips: [JSON]) -> [Tip] {
        var tips: [Tip] = []
        let count = jsonTips.count
        for i in 0...count - 1 {
            tips.append(Tip.init(from: jsonTips[i]))
        }
        return tips
    }
}
