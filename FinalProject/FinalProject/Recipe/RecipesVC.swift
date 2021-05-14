//
//  RecipesVC.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/10/21.
//

import UIKit

class RecipesVC: UIViewController {
    
    @IBOutlet weak var ListCollectionView: UICollectionView!
    
    var recipes: [Recipe] = [
        Recipe(like: 128, image: UIImage(named: "eggToast")!, time: 30, title: "Avocado and Egg Toast"),
        Recipe(like: 130, image: UIImage(named: "salmon")!, time: 25, title: "Meal with salmon and zucchini"),
        Recipe(like: 143, image: UIImage(named: "pancake")!, time: 28, title: "Pancake Stack"),
    Recipe(like: 178, image: UIImage(named: "CIV July 25")!, time: 18, title: "")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension RecipesVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipesCollectionCell
        cell.setup(recipe: recipes[indexPath.row])
        return cell
    }
}

extension RecipesVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        let width: CGFloat = collectionView.frame.size.width
        let xInsets: CGFloat = 10
        let spacing: CGFloat = 5
        
        return CGSize(width: (width/numberOfColumns) - (xInsets + spacing), height: 410)
    }
}
