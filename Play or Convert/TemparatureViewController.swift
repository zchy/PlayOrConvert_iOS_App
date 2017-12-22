//
//  TemparatureViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class TemparatureViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var typeTempSwitch: UISwitch!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var kelvin: UILabel!
    @IBOutlet weak var rankine: UILabel!
    
    @IBAction func convertButton(_ sender: Any) {
        
        if (input.text != "")
        {
            
            if typeTempSwitch.isOn {
                
                let getConvertedFTemps = doTempConverstion(Double(input.text!)!)
                
                fahrenheit.text = String(getConvertedFTemps.0)
                celsius.text = String(getConvertedFTemps.1)
                kelvin.text = String(getConvertedFTemps.2)
                rankine.text = String(getConvertedFTemps.3)
                
            } else {
                let getConvertedCTemps = doTempConverstion((Double(input.text!)! * 9/5) + (32))
                
                fahrenheit.text = String(getConvertedCTemps.0)
                celsius.text = String(getConvertedCTemps.1)
                kelvin.text = String(getConvertedCTemps.2)
                rankine.text = String(getConvertedCTemps.3)
                
            }
        }
    }
    
    // function that do the convertions
    func doTempConverstion (_ f : Double ) ->
        (Double, Double, Double, Double)
    {
        
        let fahrenheit = Double(f).rounded(toPlaces: 2)
        let celsius = Double(((f - 32) * (5/9))).rounded(toPlaces: 2)
        let kelvin = Double(((f + 459.67) * (5/9))).rounded(toPlaces: 2)
        let rankine = Double(((((f + 459.67) * (5/9)) * 1.8))).rounded(toPlaces: 2)
        
        return (fahrenheit, celsius, kelvin, rankine)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.input.delegate = self
        title = "Temparature Converter"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // hide kb
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    
}

// Rounds the double to decimal places value
extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

