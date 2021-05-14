//
//  MainProfileFirstVC.swift
//  FinalProject
//
//  Created by Zhaisan on 12.05.2021.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class MainProfileFirstVC: UIViewController, Editable {
    func Edit(_ name: String, _ surname: String) {
        self.ref.child("users/\(Auth.auth().currentUser!.uid)/name").setValue(name)
        self.ref.child("users/\(Auth.auth().currentUser!.uid)/surname").setValue(surname)
        name_label.text = name
        surname_label.text = surname
        
    }
    

    
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var surname_label: UILabel!
    
    
    var current_user: User?
    var name: String?
    var surname: String?
    let ref = Database.database().reference()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editProfileButton.layer.cornerRadius = 5
        current_user = Auth.auth().currentUser
        
        data()
        
    }
    
    @IBAction func signOutPressed(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("sign out error")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func data(){
        ref.child("users").child((current_user?.uid)!).observeSingleEvent(of: .value, with: {[weak self]
            (snapshot) in
            let value = snapshot.value as? NSDictionary
            self?.name = value?["name"] as? String ?? ""
            self?.surname = value?["surname"] as? String ?? ""
            self?.name_label.text = self?.name
            self?.surname_label.text = self?.surname
        }){(error) in
            print(error.localizedDescription)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let deg = segue.destination as? EditProfileVC {
                deg.delegate = self
                deg.name = self.name_label.text
                deg.surname = self.surname_label.text
                
            }
        }
    
   
    

    

}
