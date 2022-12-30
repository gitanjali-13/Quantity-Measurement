//
//  ViewController.swift
//  Quantity Measurement
//
//  Created by Admin on 27/12/22.
//

import UIKit

class UnitViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var fromSegment: UISegmentedControl!
    
    @IBOutlet weak var toSegment: UISegmentedControl!
    
    @IBOutlet weak var convertButton: UIButton!
    
    @IBOutlet weak var outputTextField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        
        if inputTextField.text == "" {
            label.text = "Enter here input"
            
        } else {
            if let inputValue = Double(inputTextField.text!) {
                print("\(inputValue)")
                
                let answer = afterConversion(From: fromSegment.titleForSegment(at: fromSegment.selectedSegmentIndex)!, To: toSegment.titleForSegment(at: toSegment.selectedSegmentIndex)!, inputTextField: inputValue)
                
                outputTextField.text = answer
                print("\(answer)")
                
            }
        }
        
        func afterConversion(From from: String, To to: String, inputTextField value: Double) -> String {
            
            if(from == to) {
                print("Select different choices")
                
            } else if fromSegment.selectedSegmentIndex == 0 && toSegment.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 100))"   //meter to cm
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 0 && toSegment.selectedSegmentIndex == 2 {
                let answer = "\(Double(value * 0.001))"      //meter to km
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 0 && toSegment.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.000621371))"        //m to mile
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 1 && toSegment.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 0.01))"              //cm - m
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 1 && toSegment.selectedSegmentIndex == 2 {
                let answer = "\(Double(value * 0.000010))"          //cm- km
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 1 && toSegment.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.000006))"          //cm - mile
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 2 && toSegment.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 1000))"              //km - m
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 2 && toSegment.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 0.100000))"          // km-cm
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 2 && toSegment.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.6213))"                //km-mile
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 3 && toSegment.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 1609.34))"               //mile-m
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 3 && toSegment.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 160934.40))"                 // mile- cm
                return answer
                
            } else if fromSegment.selectedSegmentIndex == 3 && toSegment.selectedSegmentIndex == 2 {
                let answer = "\(Double(value * 1.609344))"                  //miles - km
                return answer
                
            } else {
                return "Incorrcet Values are entered"
            }
            return "\(value)"
            
        }
        
    }

}
