//
//  LengthViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class LengthViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var enteredValueDisp: UILabel!
    
    @IBOutlet weak var convertedVlaueDisp: UILabel!
    
    
    // actions, buttons, and length convertions
    @IBAction func mi2km(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " mi"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 1.60940) + " km"
        }
    }
    
    @IBAction func ft2td(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " ft"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.333333) + " yd"
        }
    }
    
    @IBAction func ft2in(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " ft"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 12.0) + " in"
        }
    }
    
    @IBAction func m2cm(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " m"
            convertedVlaueDisp.text = String(Double(userInput.text!)! *  100.0) + " cm"
        }
    }
    
    @IBAction func km2mi(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " km"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.621371) + " mi"
        }
    }
    
    @IBAction func yd2ft(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " yd"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 3) + " ft"
        }
    }
    
    @IBAction func in2ft(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " in"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.0833333) + " ft"
        }
    }
    
    @IBAction func cm2m(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " cm"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.01) + " m"
        }
    }
    
    @IBAction func m2mm(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " m"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 1000.0) + " mm"
        }
    }
    
    @IBAction func mm2m(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " mm"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.001) + " m"
        }
    }
    
    @IBAction func mm2nm(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " mm"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 1000000.0) + " nm"
        }
    }
    
    @IBAction func nm2mm(_ sender: Any) {
        if userInput.text != ""{
            enteredValueDisp.text = userInput.text! + " nm"
            convertedVlaueDisp.text = String(Double(userInput.text!)! * 0.0000010) + " mm"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInput.delegate = self
        title = "Length Converter"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    
    
}
