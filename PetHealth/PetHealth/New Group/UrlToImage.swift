//
//  ImageFromURLHelper.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/22/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import AlamofireImage

class UrlToImage: NSObject {
    static func urlToImage(forUrl urlString: String) -> String {
        let url = URL(string: urlString)!
        return "\(url)"
    }
}
