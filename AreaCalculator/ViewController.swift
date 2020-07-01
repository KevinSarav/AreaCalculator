//
//  ViewController.swift
//  AreaCalculator
//
//  Created by Saravia, Kevin on 7/1/20.
//  Copyright © 2020 Saravia, Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scShapes: UISegmentedControl!
    @IBOutlet weak var lbBase: UILabel!
    @IBOutlet weak var tfBase: UITextField!
    @IBOutlet weak var lbRadius: UILabel!
    @IBOutlet weak var tfRadius: UITextField!
    @IBOutlet weak var lbHeight: UILabel!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbArea: UILabel!
    
    var rectangle: Rectangle!
    var triangle: Triangle!
    var circle: Circle!
    
    @IBAction func changeHiddenDimensions(_ sender: Any) {
        // Hide unused dimensions depending on picked shape
        if scShapes.selectedSegmentIndex == 0 || scShapes.selectedSegmentIndex == 1 {
            lbRadius.isHidden = true
            tfRadius.isHidden = true
            lbBase.isHidden = false
            tfBase.isHidden = false
            lbHeight.isHidden = false
            tfHeight.isHidden = false
        } else {
            lbRadius.isHidden = false
            tfRadius.isHidden = false
            lbBase.isHidden = true
            tfBase.isHidden = true
            lbHeight.isHidden = true
            tfHeight.isHidden = true
        }
    }
    
    @IBAction func calculateArea(_ sender: Any) {
        // Calculate area based on picked shape and given dimensions
        if scShapes.selectedSegmentIndex == 0 {
            if let base = Double(tfBase.text!), let height = Double(tfHeight.text!){
                rectangle = Rectangle(base, height)
                let area = rectangle.calculateArea()
                lbArea.text = String(area)
            } else {
                lbArea.text = "1+ field(s) incorrect."
            }
        } else if scShapes.selectedSegmentIndex == 1{
            if let base = Double(tfBase.text!), let height = Double(tfHeight.text!){
                triangle = Triangle(base, height)
                let area = triangle.calculateArea()
                lbArea.text = String(area)
            } else {
                lbArea.text = "1+ field(s) incorrect."
            }
        } else {
            if let radius = Double(tfRadius.text!){
                circle = Circle(radius)
                let area = circle.calculateArea()
                lbArea.text = String(area)
            } else {
                lbArea.text = "1+ field(s) incorrect."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

