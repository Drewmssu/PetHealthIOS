//
//  PetCell.swift
//  PetHealth
//
//  Created by Francis Marquez on 11/20/17.
//  Copyright © 2017 iSoftware. All rights reserved.
//

import UIKit
import AlamofireImage

class PetCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var petImageView: UIImageView!
    
    func setValues(fromPet pet: Pet) {
        nameLabel.text = pet.name
        descriptionLabel.text = pet.description
        if let url = URL(string: pet.urlToImage()) {
            petImageView.af_setImage(withURL: url)
        }
    }
    
}
