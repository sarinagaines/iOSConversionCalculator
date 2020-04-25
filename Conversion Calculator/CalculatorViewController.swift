//
//  CalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Sarina Gaines on 4/13/20.
//  Copyright © 2020 Sarina Gaines. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    

    struct Converter {
        let label: String
        let input: String
        let output: String
    }
    
    var converter = [Converter(label: "fahrenheit to celcius", input: "°F", output: "°C"),
    Converter(label: "celcius to fahrenheit", input: "°C", output: "°F"),
    Converter(label: "miles to kilometers", input: "mi", output: "km"),
    Converter(label: "kilometers to miles", input: "km", output: "mi")]
    
    var currentConverter: Converter? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        outputDisplay.text = "°C"
        
        inputDisplay.text = "°F"
        
        
    }
    
    
  
    @IBAction func converterButton(_ sender: Any) {
    
    
        let alert = UIAlertController(title: "Choice", message: "Choose!", preferredStyle: UIAlertController.Style.actionSheet)
           
        alert.addAction(UIAlertAction(title: converter[0].label, style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            self.inputDisplay.text = self.converter[0].input
            self.outputDisplay.text = self.converter[0].output
            self.currentConverter = self.converter[0]
        }))
           
        alert.addAction(UIAlertAction(title: converter[1].label, style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            self.inputDisplay.text = self.converter[1].input
            self.outputDisplay.text = self.converter[1].output
            self.currentConverter = self.converter[1]
        }))
           
        alert.addAction(UIAlertAction(title: converter[2].label, style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            self.inputDisplay.text = self.converter[2].input
            self.outputDisplay.text = self.converter[2].output
            self.currentConverter = self.converter[2]
        }))
           
        alert.addAction(UIAlertAction(title: converter[3].label, style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            self.inputDisplay.text = self.converter[3].input
            self.outputDisplay.text = self.converter[3].output
            self.currentConverter = self.converter[3]
        }))
           
        self.present(alert, animated: true, completion: nil)
            
    }

}
