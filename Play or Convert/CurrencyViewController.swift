//
//  CurrencyViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/3/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class CurrencyViewController: UIViewController, UITextFieldDelegate {
    var currenciesTypes:[String] = []
    var currenciesRates:[Double] = []
    
    
    @IBOutlet weak var UserInput: UITextField!
    @IBOutlet weak var eur: UILabel!
    @IBOutlet weak var gbp: UILabel!
    @IBOutlet weak var cad: UILabel!
    @IBOutlet weak var aud: UILabel!
    @IBOutlet weak var chf: UILabel!
    @IBOutlet weak var inr: UILabel!
    @IBOutlet weak var jpy: UILabel!
    @IBOutlet weak var idr: UILabel!
    @IBOutlet weak var sr:  UILabel!
    @IBOutlet weak var ils: UILabel!
    @IBOutlet weak var cny: UILabel!
    @IBOutlet weak var myr: UILabel!
    @IBOutlet weak var sgd: UILabel!
    
    // calculates currencies
    @IBAction func convertButton(_ sender: Any) {
        if (UserInput.text != "")
        {
            eur.text = "EUR: " + String(Double(UserInput.text!)! * currenciesRates[17])
            gbp.text = "GBP: " + String(Double(UserInput.text!)! * currenciesRates[9])
            cad.text = "CAD: " + String(Double(UserInput.text!)! * currenciesRates[30])
            aud.text = "AUD: " + String(Double(UserInput.text!)! * currenciesRates[4])
            chf.text = "CHF: " + String(Double(UserInput.text!)! * currenciesRates[11])
            inr.text = "INR: " + String(Double(UserInput.text!)! * currenciesRates[25])
            jpy.text = "JPY: " + String(Double(UserInput.text!)! * currenciesRates[24])
            idr.text = "IDR: " + String(Double(UserInput.text!)! * currenciesRates[22])
            sr.text  = "SAR: " + String(Double(UserInput.text!)! * 3.75) // avg, not available in jaosn data
            ils.text = "ILS: " + String(Double(UserInput.text!)! * currenciesRates[6])
            cny.text = "CNY: " + String(Double(UserInput.text!)! * currenciesRates[0])
            myr.text = "MYR: " + String(Double(UserInput.text!)! * currenciesRates[21])
            sgd.text = "SGD: " + String(Double(UserInput.text!)! * currenciesRates[16])
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.fixer.io/latest?base=USD")
        
        // gets the updated currency data from web url
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error != nil
            {
                print ("ERROR")
            }
            else
            {
                if let content = data
                {
                    do
                    {
                        let jsonData = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        if let cRatesAsDictionary = jsonData["rates"] as? NSDictionary
                        {
                            for (type, rate) in cRatesAsDictionary
                            {
                                self.currenciesTypes.append((type as? String)!)
                                self.currenciesRates.append((rate as? Double)!)
                            }
                            print(self.currenciesTypes,self.currenciesRates)
                        }
                    }
                    catch { }
                }
            }
        }
        task.resume()
        
        self.UserInput.delegate = self
        title = "Currency Converter"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //end ediditing to hide kb
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
}
