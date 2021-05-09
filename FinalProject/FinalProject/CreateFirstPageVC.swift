//
//  CreateFirstPageVC.swift
//  FinalProject
//
//  Created by Zhaisan on 04.05.2021.
//

import UIKit

class CreateFirstPageVC: UIViewController {

    
    @IBOutlet weak var nameRecipeTF: UITextField!
    @IBOutlet weak var uploadPhotoLayer: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
//    let renderer1 = UIGraphicsImageRenderer(size: CGSize(width: 500, height: 500))
//    let img1 = renderer1.image { ctx in
//        ctx.cgContext.setStrokeColor(UIColor.white.cgColor)
//        ctx.cgContext.setLineWidth(3)
//
//        ctx.cgContext.move(to: CGPoint(x: 50, y: 450))
//        ctx.cgContext.addLine(to: CGPoint(x: 250, y: 50))
//        ctx.cgContext.addLine(to: CGPoint(x: 450, y: 450))
//        ctx.cgContext.addLine(to: CGPoint(x: 50, y: 450))
//
//        let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
//        ctx.cgContext.addRect(rectangle)
//        ctx.cgContext.drawPath(using: .fillStroke)
//    }
    
    
    
    
    //var line = UIBezierPath()
//    func graph(){
//        line.move(to: .init(x: 20, y: 40))
//        line.addLine(to: .init(x: 20, y: 20))
//        UIColor.red.setStroke()
//        line.lineWidth = 10
//        line.stroke()
//    }
//    func draw(_ rect: CGRect) {
//            let aPath = UIBezierPath()
//
//            aPath.move(to: CGPoint(x:20, y:50))
//
//            aPath.addLine(to: CGPoint(x:300, y:50))
//
//            //Keep using the method addLineToPoint until you get to the one where about to close the path
//
//            aPath.close()
//
//            //If you want to stroke it with a red color
//            UIColor.red.set()
//            aPath.stroke()
//            //If you want to fill it as well
//            aPath.fill()
//        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uploadPhotoLayer.layer.cornerRadius = 5
        uploadPhotoLayer.layer.borderWidth = 1
        uploadPhotoLayer.layer.borderColor = UIColor.systemPurple.cgColor
        nextButton.layer.cornerRadius = 5
        nameRecipeTF.borderStyle = .none
        nameRecipeTF.attributedPlaceholder = NSAttributedString.init(string:"E.g Grandma's apple pie", attributes: [ NSAttributedString.Key.foregroundColor:UIColor.darkGray, NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20)])
        
//        nameRecipeTF.attributedPlaceholder = NSAttributedString.init(string:"E.g Grandma's apple pie", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20)])
        
        
    }
    
    
   

}
