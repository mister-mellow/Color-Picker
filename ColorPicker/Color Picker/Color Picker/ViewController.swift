//
//  ViewController.swift
//  Color Picker
//
//  Created by Eric Rachell on 4/20/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    struct Color{
        var name = ""
        var UIcolor = UIColor.clear
    }
    var colors = [Color(name: "Red", UIcolor: UIColor.red),
                  Color(name: "Orange", UIcolor: UIColor.orange),
                  Color(name: "Yellow", UIcolor: UIColor.yellow),
                  Color(name: "Green", UIcolor: UIColor.green),
                  Color(name: "Blue", UIcolor: UIColor.blue),
                  Color(name: "Purple", UIcolor: UIColor.purple)]
        
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        view.backgroundColor = colors[row].UIcolor
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = colors[0].name
        view.backgroundColor = colors[0].UIcolor
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

