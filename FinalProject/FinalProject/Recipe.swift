//
//  Recipe.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/13/21.
//

import Foundation
import FirebaseDatabase

struct RecipeData {
    var author: String = ""
    var title: String = ""
    var ingredients: [String] = []
    var steps: String = ""
    var portion: String = "1 service"
    var prepTime: String = "0 hours"
    var backingTime: String = "0 hours"
    var restingTime: String = "0 hours"
    var image: UIImage = UIImage()
    var dict : [String: Any] {
        return[
//            "author" : author,
            "title" : title,
            "prepTime" : prepTime,
            "backingTime" : backingTime,
            "restingTime" : restingTime,
            "ingredients": ingredients,
//            "image" : image,
//            "steps" : steps
            
        ]
    }
    
    init(portion: String, title: String, prepTime: String, ingredients: [String]) {
//        self.author = author
        self.title = title
        self.portion = portion
        self.prepTime = prepTime
        self.ingredients = ingredients
    }
    
    
    init(snapshot: DataSnapshot){
        if let value = snapshot.value as? [String: Any]{
//            author = value["author"] as! String
            title = value["title"]  as! String
            portion = value["portion"] as! String
//            steps = value["steps"] as! String
            ingredients = value["ingredients"] as! [String]
            prepTime = value["prepTime"] as! String
//            backingTime = value["backingTime"] as! String
//            restingTime = value["restingTime"] as! String
//            image = value["image"] as! UIImage
        }
    }
    
}
