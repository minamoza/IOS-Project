//
//  HomeVC.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/4/21.
//

import UIKit

class HomeVC: UIViewController {
    
    var cards: [Card] = [
        Card(desc: "Weeknight Dinners", image: UIImage(named: "brunch")!),
        Card(desc: "Meatless", image: UIImage(named: "meatless")!),
        Card(desc: "Dessert", image: UIImage(named: "iceCream")!)]
    
    var recipes: [Recipe] = [
        Recipe(like: 128, image: UIImage(named: "eggToast")!, time: 30, title: "Avocado and Egg Toast"),
        Recipe(like: 130, image: UIImage(named: "salmon")!, time: 25, title: "Meal with salmon and zucchini"),
        Recipe(like: 143, image: UIImage(named: "pancake")!, time: 28, title: "Pancake Stack")]

    @IBOutlet weak var mainCardView: UIView!
    @IBOutlet weak var cardCollectionView: UICollectionView!
    @IBOutlet weak var recipeCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCardView.layer.cornerRadius = 10
    }
    
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case cardCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! HomeCollectionCell
            cell.setup(card: cards[indexPath.row])
            return cell
        case recipeCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipesCollectionCell
            cell.setup(recipe: recipes[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case cardCollectionView:
            return cards.count
        case recipeCollectionView:
            return recipes.count
        default:
            return 0
        }
    }
    
}
