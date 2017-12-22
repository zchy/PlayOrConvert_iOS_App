//
//  WeightViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var selected: UILabel!
    @IBOutlet weak var convertedResult: UILabel!
    
    // convert based on selection and assagin values
    @IBAction func lb2kg(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " lbs"
            convertedResult.text = String(Double(userInput.text!)! * 0.453592) + " kg"
        }
    }
    
    @IBAction func kg2lb(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " kg"
            convertedResult.text = String(Double(userInput.text!)! * 2.20462) + " lbs"
        }
        
    }
    
    @IBAction func lb2st(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " lbs"
            convertedResult.text = String(Double(userInput.text!)! * 0.0714286) + " st"
        }
        
    }
    
    @IBAction func st2lb(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " st"
            convertedResult.text = String(Double(userInput.text!)! * 14.0) + " lb"
        }
        
    }
    
    @IBAction func kg2st(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " kg"
            convertedResult.text = String(Double(userInput.text!)! * 0.157473) + " st"
        }
        
    }
    
    @IBAction func st2gk(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " st"
            convertedResult.text = String(Double(userInput.text!)! * 6.35029) + " kg"
        }
        
    }
    
    @IBAction func oz2gm(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " oz"
            convertedResult.text = String(Double(userInput.text!)! * 28.3495) + " gm"
        }
        
    }
    
    @IBAction func gm2oz(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " gm"
            convertedResult.text = String(Double(userInput.text!)! * 0.035274) + " oz"
        }
        
    }
    
    @IBAction func gm2mg(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " gm"
            convertedResult.text = String(Double(userInput.text!)! * 1000.0) + " mg"
        }
        
    }
    
    @IBAction func mg2gm(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " mg"
            convertedResult.text = String(Double(userInput.text!)! * 0.001) + " gm"
        }
        
    }
    
    @IBAction func mg2mcg(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " mg"
            convertedResult.text = String(Double(userInput.text!)! * 1000.0) + " mcg"
        }
        
    }
    
    @IBAction func mcg2mg(_ sender: Any) {
        if userInput.text != ""{
            selected.text = userInput.text! + " mcg"
            convertedResult.text = String(Double(userInput.text!)! * 0.001) + " mg"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInput.delegate = self
        title = "Weight Converter"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // hide kb
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    
}
