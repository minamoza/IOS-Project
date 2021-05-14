//
//  CreateThirdPageVC.swift
//  FinalProject
//
//  Created by Zhaisan on 07.05.2021.
//

import UIKit
import Foundation
import FirebaseDatabase
import FirebaseAuth
import FirebaseStorage

class CreateThirdPageVC: CreateFirstPageVC, UITableViewDelegate, UITableViewDataSource {

    var ingredients: [String] = []

    @IBOutlet weak var addIngredientTF: UITextField!
    @IBOutlet weak var ingredientsTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addIngredientTF.borderStyle = .none
        addIngredientTF.attributedPlaceholder = NSAttributedString.init(string:"Add ingredient, e.g. flour", attributes: [ NSAttributedString.Key.foregroundColor:UIColor.darkGray, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20)])
        
        addButton.layer.cornerRadius = 5
        saveButton.layer.cornerRadius = 5
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        ingredients.append(addIngredientTF.text!)
        addIngredientTF.text = ""
        ingredientsTableView.reloadData()
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        CreateThirdPageVC.recipeData.append(ingredients)
        save(recipeDate: CreateThirdPageVC.recipeData)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath) as! IngredientCell
        cell.newIngredient.text = ingredients[indexPath.row]
        return cell
    }   
}
