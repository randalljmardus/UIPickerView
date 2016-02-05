//
//  ViewController.swift
//  UIPickerView
//
//  Created by Randall Mardus on 2/5/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var selectionLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerData = ["iPad", "iPhone", "Gameboy", "PS3", "Sega Genesis", "Dreamcast"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    pickerView.dataSource = self
    pickerView.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectionLabel.text = "Your favorite console is \(pickerData[row])"
    }
    
    
    
    
    

}

