//
//  CreateSecondPageVC.swift
//  FinalProject
//
//  Created by Zhaisan on 05.05.2021.
//

import UIKit

class CreateSecondPageVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var nextButton2: UIButton!
    
    //Portion type
    
    @IBOutlet weak var portionTypeButton: UIButton!
    @IBOutlet weak var portionTypePickerView: UIPickerView!
    @IBOutlet weak var portionIndexButton: UIButton!
    
    let portionTypes = ["pieces", "servings"]
    let portionTypesIndex = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                             "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    //Prep time
    
    @IBOutlet weak var prepTimeButton: UIButton!
    @IBOutlet weak var prepTimePickerView: UIPickerView!
    @IBOutlet weak var prepTimeIndex: UIButton!
    
    let hours = ["0 hours", "1 hours", "2 hours", "3 hours"]
    let minutes = ["0 min", "1 min", "3 min", "4 min"]
    
    //Baking Time

    @IBOutlet weak var bakingTimeButton: UIButton!
    @IBOutlet weak var bakingTimePickerView: UIPickerView!
    @IBOutlet weak var bakingTimeIndex: UIButton!
    
    let hours2 = ["0 hours", "1 hours", "2 hours", "3 hours"]
    let minutes2 = ["0 min", "1 min", "3 min", "4 min"]
    
    //Resting Time
    
    @IBOutlet weak var restingTimeButton: UIButton!
    @IBOutlet weak var restingTimePickerView: UIPickerView!
    @IBOutlet weak var restingTimeIndex: UIButton!
    
    let hours3 = ["0 hours", "1 hours", "2 hours", "3 hours"]
    let minutes3 = ["0 min", "1 min", "3 min", "4 min"]
    
    
    override func viewDidLoad() {
        
        portionTypePickerView.isHidden = true
        portionTypePickerView.delegate = self
        portionTypePickerView.dataSource = self
        
        prepTimePickerView.isHidden = true
        prepTimePickerView.delegate = self
        prepTimePickerView.dataSource = self
        
        bakingTimePickerView.isHidden = true
        bakingTimePickerView.delegate = self
        bakingTimePickerView.dataSource = self
        
        restingTimePickerView.isHidden = true
        restingTimePickerView.delegate = self
        restingTimePickerView.dataSource = self
        
        
        portionTypePickerView.tag = 1
        prepTimePickerView.tag = 2
        bakingTimePickerView.tag = 3
        restingTimePickerView.tag = 4
        
        super.viewDidLoad()
        
//        let vc = UIViewController()
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true, completion: nil)
        
        easyButton.layer.cornerRadius = 3
        mediumButton.layer.cornerRadius = 3
        hardButton.layer.cornerRadius = 3
        nextButton2.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    
    @IBAction func portionTypePressed(_ sender: UIButton) {
        if portionTypePickerView.isHidden{
            portionTypePickerView.isHidden = false
        }
    }
    @IBAction func prepTimePressed(_ sender: UIButton) {
        if prepTimePickerView.isHidden{
            prepTimePickerView.isHidden = false
        }
    }
    @IBAction func bakingTimePressed(_ sender: UIButton) {
        if bakingTimePickerView.isHidden{
            bakingTimePickerView.isHidden = false
        }
    }
    @IBAction func restingTimePressed(_ sender: UIButton) {
        if restingTimePickerView.isHidden{
            restingTimePickerView.isHidden = false
        }
    }
    
    
    
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        switch pickerView.tag {
        case 1:
            if component == 0{
                return portionTypesIndex.count
            }
            else{
                return portionTypes.count
            }
        case 2:
            if component == 0{
                return hours.count
            }
            else{
                return minutes.count
            }
        case 3:
            if component == 0{
                return hours2.count
            }
            else{
                return minutes2.count
            }
        case 4:
            if component == 0{
                return hours3.count
            }
            else{
                return minutes3.count
            }
        default:
            return 1
        }
//        if component == 0{
//            return portionTypesIndex.count
//        }
//        else{
//            return portionTypes.count
//        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0{
//            return portionTypesIndex[row]
//        }
//        else{
//            return portionTypes[row]
//        }
        switch pickerView.tag {
        case 1:
            if component == 0{
                return portionTypesIndex[row]
            }
            else{
                return portionTypes[row]
            }
        case 2:
            if component == 0{
                return hours[row]
            }
            else{
                return minutes[row]
            }
        case 3:
            if component == 0{
                return hours2[row]
            }
            else{
                return minutes2[row]
            }
        case 4:
            if component == 0{
                return hours3[row]
            }
            else{
                return minutes3[row]
            }
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            if component == 0{
                portionIndexButton.setTitle(portionTypesIndex[row], for: .normal)
                //portionTypeButton.setTitle(portionTypes[row], for: .normal)
                portionTypePickerView.isHidden = true
            }
            else{
                portionTypeButton.setTitle(portionTypes[row], for: .normal)
                portionTypePickerView.isHidden = true
            }
        case 2:
            if component == 0{
                prepTimeIndex.setTitle(hours[row], for: .normal)
                //portionTypeButton.setTitle(portionTypes[row], for: .normal)
                prepTimePickerView.isHidden = true
            }
            else{
                prepTimeButton.setTitle(minutes[row], for: .normal)
                prepTimePickerView.isHidden = true
            }
        case 3:
            if component == 0{
                bakingTimeIndex.setTitle(hours2[row], for: .normal)
                //portionTypeButton.setTitle(portionTypes[row], for: .normal)
                bakingTimePickerView.isHidden = true
            }
            else{
                bakingTimeButton.setTitle(minutes2[row], for: .normal)
                bakingTimePickerView.isHidden = true
            }
        case 4:
            if component == 0{
                restingTimeIndex.setTitle(hours3[row], for: .normal)
                //portionTypeButton.setTitle(portionTypes[row], for: .normal)
                restingTimePickerView.isHidden = true
            }
            else{
                restingTimeButton.setTitle(minutes3[row], for: .normal)
                restingTimePickerView.isHidden = true
            }
        default:
            break
        }
        
    }
}
