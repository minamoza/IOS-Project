//
//  SearchVC.swift
//  FinalProject
//
//  Created by Zhaisan on 25.04.2021.
//

import UIKit

class SearchVC: UIViewController {

    
    @IBOutlet weak var search_bar: UISearchBar!
    
    @IBOutlet var cards: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.search_bar.barTintColor = UIColor.black
        //self.search_bar.layer.borderWidth = 2.0
        self.search_bar.layer.borderColor = UIColor.gray.cgColor
        self.search_bar.layer.cornerRadius = 4.0
        self.search_bar.clipsToBounds = true
        for card in cards{
            card.layer.cornerRadius = 9
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
