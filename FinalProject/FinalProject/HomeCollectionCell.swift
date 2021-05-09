//
//  HomeCollectionCell.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/7/21.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    static let identifier = String(describing: HomeCollectionCell.self)

    @IBOutlet weak var CellImageView: UIImageView!
    @IBOutlet weak var DescLabel: UILabel!
    
    func setup(card: Card){
        DescLabel.text = card.desc
        CellImageView.image = card.image
        self.contentView.layer.cornerRadius = 20
    }

}

struct Card {
    let desc: String
    let image: UIImage
}
