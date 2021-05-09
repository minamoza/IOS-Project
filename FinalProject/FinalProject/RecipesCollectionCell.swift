//
//  RecipesCollectionCell.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/9/21.
//

import UIKit

class RecipesCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(recipe: Recipe){
        imageView.image = recipe.image
        likesLabel.text = "\(recipe.like)"
        timeLabel.text = "\(recipe.time) min."
        titleLabel.text = recipe.title
        self.contentView.layer.cornerRadius = 20
    }
    
}


struct Recipe {
    let like: Int
    let image: UIImage
    let time: Int
    let title: String
}
