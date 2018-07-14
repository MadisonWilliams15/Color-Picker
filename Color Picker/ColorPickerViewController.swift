//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Madison Williams on 7/11/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    struct Color{
        let colorString : String
        let colorUI : UIColor
    }
    
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
  
    var colorsDataSource = [Color(colorString : "Red", colorUI : UIColor.red) , Color(colorString : "Orange", colorUI : UIColor.orange), Color(colorString : "Green", colorUI : UIColor.green) , Color(colorString : "Blue", colorUI : UIColor.blue) , Color(colorString : "Purple", colorUI : UIColor.purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorPicker.dataSource = self;
        self.colorPicker.delegate = self;
       
        let initialIndex = 0
        pickerView(colorPicker, didSelectRow: initialIndex, inComponent: initialIndex)
  
    }


    func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        label.text = colorsDataSource[row].colorString
        view.backgroundColor = colorsDataSource[row].colorUI
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsDataSource[row].colorString
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
