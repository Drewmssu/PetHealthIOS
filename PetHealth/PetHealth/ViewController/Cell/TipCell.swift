//
//  TipCell.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/22/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import AlamofireImage

class TipCell: UICollectionViewCell {
    @IBOutlet weak var tipImageView: UIImageView!
    @IBOutlet weak var postedByLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setValues(fromTip tip: Tip) {
        postedByLabel.text = "Posted by \(tip.ownerName)"
        descriptionLabel.text = tip.description
        if let url = URL(string: tip.urlToImage()) {
            tipImageView.af_setImage(withURL: url)
        }
    }
}
