//
//  ViewController.swift
//  MiraclePill
//
//  Created by John on 11/15/16.
//  Copyright © 2016 jpclancy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var miraclePillImage: UIImageView!
    @IBOutlet weak var miraclePillsLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var dividerGraphic: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var enterAddressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var enterCityTextField: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "Texas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        
    }
    
    @IBAction func buyNowButtonPressed(_ sender: AnyObject) {
//        successImage.isHidden = false
//        statePicker.isHidden = true
//        statePickerButton.isHidden = true
//        countryLabel.isHidden = true
//        countryTextField.isHidden = true
//        zipCodeLabel.isHidden = true
//        zipCodeTextField.isHidden = true
//        miraclePillImage.isHidden = true
//        miraclePillsLabel.isHidden = true
//        moneyLabel.isHidden = true
//        dividerGraphic.isHidden = true
//        fullNameLabel.isHidden = true
//        enterNameTextField.isHidden = true
//        streetAddressLabel.isHidden = true
//        enterAddressTextField.isHidden = true
//        cityLabel.isHidden = true
//        enterCityTextField.isHidden = true
//        buyNowButton.isHidden = true
        
        for view in view.self.subviews as [UIView] {
            view.isHidden = true
        }
        
        successImage.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
    }
}

