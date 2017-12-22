//
//  ConvetionInfoTableViewController.swift
//  Play or Convert
//
//  Created by Ziaul Choudhury on 12/9/17.
//  Copyright © 2017 Ziaul Choudhury. All rights reserved.
//

import UIKit

class ConvetionInfoTableViewController: UITableViewController {
    
    struct Objects {
        var sectionName : String!
        var setionObjects : [String]!
    }
    
    var ObjcetsArrray = [Objects]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ObjcetsArrray = [Objects(sectionName: "Temparature", setionObjects: [
                            "Formulas ⬇️",
                            "°F to°C: ( T(°F) - 32 ) × 5/9",
                            "°C to °F: ( T(°C) × (9/5) ) + 32",
                            "°C to K: T(°C) + 273.15",
                            "K to °R: T(K) × 9/5" ]),
                         Objects(sectionName: "Length", setionObjects: [
                            "1 Foot = 0.333333 Yard",
                            "1 Yard = 3 Foots",
                            "1 Foot = 12 Inches",
                            "1 inch = 0.0833333 Foot",
                            "1 Meter = 100 Centimeters",
                            "1 Centimeters = 0.01 Meter",
                            "1 Mile = 1.67934 Kilometer",
                            "1 Kilometer = 0.621371 Mile",
                            "1 Meter = 1000 Millimeter",
                            "1 Millimeter = 0.001 Meter",
                            "1 Millimeter = 1000000 Nanometer",
                            "1 Nanometer = 0.0000010 Millimeter",
                            ]),
                         Objects(sectionName: "Weight", setionObjects: [
                            "1 Pound = 0.45 Kilogram",
                            "1 Pound (lb) = 453.6 g",
                            "1 Kilogram = 1000 Grams",
                            "1 Kilogram = 2.20462 Pounds",
                            "1 Ounce = 0.0625 Pound",
                            "1 Ounce = 28.35 grams",
                            "1 Teaspoon (tsp) = 5 mL",
                            "1 Tablespoon (tbsp) = 15 mL",
                            "1 US. Gallon = 3.78541 Liters",
                            ])]
        title = "Conversion Table"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //
        let cell = tableView.dequeueReusableCell(withIdentifier: "textCell") as UITableViewCell!
        
        cell?.textLabel?.text = ObjcetsArrray[indexPath.section].setionObjects[indexPath.row]
        
        return cell!
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //
        return ObjcetsArrray[section].setionObjects.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int { //
        return ObjcetsArrray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ObjcetsArrray[section].sectionName
    }
    
    
}
