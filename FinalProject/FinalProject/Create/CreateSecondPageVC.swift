//
//  CreateSecondPageVC.swift
//  FinalProject
//
//  Created by Zhaisan on 05.05.2021.
//

import UIKit

class CreateSecondPageVC: CreateFirstPageVC, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var portion: String?
    var time: String?
    var buttonType: UIButton?
    
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
    
    let type = ["hour", "minute"]
    let hours = ["1", "2", "3","4", "5", "6", "7", "8", "9", "10",
                 "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                 "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
                 "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
                 "41", "42", "43", "44", "45", "46", "47", "48", "49", "50",
                 "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"]
    
    //Baking Time

    @IBOutlet weak var bakingTimeButton: UIButton!
    @IBOutlet weak var bakingTimeIndex: UIButton!

    
    //Resting Time
    
    @IBOutlet weak var restingTimeButton: UIButton!
    @IBOutlet weak var restingTimeIndex: UIButton!
    
    
    override func viewDidLoad() {
        
        portionTypePickerView.isHidden = true
        portionTypePickerView.delegate = self
        portionTypePickerView.dataSource = self
        
        prepTimePickerView.isHidden = true
        prepTimePickerView.delegate = self
        prepTimePickerView.dataSource = self
        
        portionTypePickerView.tag = 1
        prepTimePickerView.tag = 2
        
        super.viewDidLoad()
        
        easyButton.layer.cornerRadius = 3
        mediumButton.layer.cornerRadius = 3
        hardButton.layer.cornerRadius = 3
        nextButton2.layer.cornerRadius = 5
    }
    
    @IBAction func portionTypePressed(_ sender: UIButton) {
        if portionTypePickerView.isHidden{
            portionTypePickerView.isHidden = false
        }
    }
    @IBAction func prepTimePressed(_ sender: UIButton) {
        buttonType = prepTimeButton
        if prepTimePickerView.isHidden{
            prepTimePickerView.isHidden = false
        }
    }
    @IBAction func bakingTimePressed(_ sender: UIButton) {
        buttonType = bakingTimeButton
        if prepTimePickerView.isHidden{
            prepTimePickerView.isHidden = false
        }
    }
    @IBAction func restingTimePressed(_ sender: UIButton) {
        buttonType = restingTimeButton
        if prepTimePickerView.isHidden{
            prepTimePickerView.isHidden = false
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
                return type.count
            }
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

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
                return type[row]
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
                portionTypePickerView.isHidden = true
            }
            else{
                portionTypeButton.setTitle(portionTypes[row], for: .normal)
                portionTypePickerView.isHidden = true
            }
        case 2:
            if component == 0{
                switch buttonType {
                case prepTimeButton:
                    prepTimeButton.setTitle(hours[row], for: .normal)
                    prepTimePickerView.isHidden = true
                case bakingTimeButton:
                    bakingTimeButton.setTitle(hours[row], for: .normal)
                    prepTimePickerView.isHidden = true
                case restingTimeButton:
                    restingTimeButton.setTitle(hours[row], for: .normal)
                    prepTimePickerView.isHidden = true
                default:
                    prepTimeButton.setTitle(hours[row], for: .normal)
                }
            }else{
                switch buttonType {
                case prepTimeButton:
                    prepTimeIndex.setTitle(type[row], for: .normal)
                    prepTimePickerView.isHidden = true
                case bakingTimeButton:
                    bakingTimeIndex.setTitle(type[row], for: .normal)
                    prepTimePickerView.isHidden = true
                case restingTimeButton:
                    restingTimeIndex.setTitle(type[row], for: .normal)
                    prepTimePickerView.isHidden = true
                default:
                    prepTimeIndex.setTitle(type[row], for: .normal)
                }
            }
        default:
            break
        }
        portion = "\(portionTypesIndex[row]) \(portionTypes[row])"
        time = "\(hours[row]) \(type[row])"
    }
    
    func register1(){
        CreateSecondPageVC.recipeData.append(portion!)
        CreateSecondPageVC.recipeData.append(time!)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        register1()
    }
}
