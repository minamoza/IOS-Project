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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
