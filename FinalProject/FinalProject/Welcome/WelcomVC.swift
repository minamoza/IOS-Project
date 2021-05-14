//
//  WelcomVC.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/4/21.
//

import UIKit
import Foundation

class WelcomVC: UIViewController {
    
    var slides: [Slide] = []
    var currentPage = 0{
        didSet{
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1{
                nextBTN.setTitle("Get Started", for: .normal)
            }else{
                nextBTN.setTitle("Next", for: .normal)
            }
        }
    }

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextBTN: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextBTN.layer.cornerRadius = 10

        slides = [
            Slide(image: UIImage(named: "foodShowcase")!, title: "Show off your cooking skills", description: "Take short videos or photos of each recipe step and show other home cooks how to recreate your favorite dishes"),
            Slide(image: UIImage(named: "recipeBook")!, title: "Find the perfect recipe for you", description: "Thanks to our search feature, we guarantee you’ll find the perfect recipe for your tastes and nutritional preferences"),
            Slide(image: UIImage(named: "gourmet")!, title: "All your cooking needs in one place", description: "Browse our recipes by difficulty level and preparation time, plus use our handy measurement converter to adjust the measurements according to the d desired servings.")
        ]
    }
    
    @IBAction func nextPage(_ sender: UIButton) {
        if currentPage == slides.count - 1{
            let controller = storyboard?.instantiateViewController(identifier: "ProfileFirstVC") as! UIViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            self.present(controller, animated: true, completion: nil)
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }

}

struct Slide {
    var image: UIImage
    var title: String
    var description: String
}

extension WelcomVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WelcomPageCell", for: indexPath) as! WelcomPageCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x/width)
    }
    
    
}
