//
//  MyTips.swift
//  PetHealth
//
//  Copyright © 2017 iSoftware. All rights reserved.


import Foundation
import SwiftyJSON

class Tip {
    var id: Int
    var image: String
    var title: String
    var description: String
    
    init() {
        id = 0
        image = ""
        title = ""
        description = ""
    }
    
    init(from jsonTip: JSON) {
        id = jsonTip["id"].intValue
        image = jsonTip["image"].stringValue
        title = jsonTip["title"].stringValue
        description = jsonTip["description"].stringValue
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
