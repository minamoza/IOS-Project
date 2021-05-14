//
//  CreateThirdPageVC.swift
//  FinalProject
//
//  Created by Zhaisan on 07.05.2021.
//

import UIKit

class CreateThirdPageVC: UIViewController {

    
    
    @IBOutlet weak var addIngredientTF: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addIngredientTF.borderStyle = .none
        addIngredientTF.attributedPlaceholder = NSAttributedString.init(string:"Add ingredient, e.g. flour", attributes: [ NSAttributedString.Key.foregroundColor:UIColor.darkGray, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20)])

        
    }
    

    
}
