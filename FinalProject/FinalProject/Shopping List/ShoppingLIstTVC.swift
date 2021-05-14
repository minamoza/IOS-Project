//
//  ShoppingLIstTVC.swift
//  FinalProject
//
//  Created by Amina Moldamyrza on 5/11/21.
//

import UIKit

class ShoppingLIstTVC: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    var products: [Product] = [
        Product(img: UIImage(named: "pancake")!, title: "Pancake", products: ["egg", "milk", "sugar", "salt", "flour"]),
        Product(img: UIImage(named: "salmon")!, title: "Meal with salmon and zucchini", products: ["salmon", "salt", "wine"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductCell
        cell.imgView.image = products[indexPath.row].img
        cell.titleLabel.text = products[indexPath.row].title
        cell.subLabel.text = "\(products[indexPath.row].products.count) ingredients missing"
        cell.imgView.layer.cornerRadius = 10
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ShoppingListDetailVC
        destination.productList = products[myTableView.indexPathForSelectedRow!.row].products
        destination.productName = products[myTableView.indexPathForSelectedRow!.row].title
        destination.img = products[myTableView.indexPathForSelectedRow!.row].img
    }

}

struct Product{
    var img: UIImage
    var title: String
    var products: [String]
}
