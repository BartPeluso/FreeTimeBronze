//
//  profile.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit

class profile: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let schools = ["Select", "Texas State", "Texas A&M", "Texas Tech"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return schools[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schools.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        which.text = schools[row]
    }
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var picker: UIDatePicker!
    
    
    
    
    @IBOutlet weak var wheel: UIPickerView!
    
    @IBOutlet weak var which: UILabel!
    
   
    @IBAction func name(_ sender: Any) {
        
        
    }
    @IBAction func `switch`(_ sender: UISwitch) {
    
         if (sender.isOn == true) {
            wheel.isHidden = false
    }
         else {
            wheel.isHidden = true
        }
         global.name = name.text!
        global.date = "\(picker.date)"
       
        
}
    
    
    @IBOutlet weak var profilesubmit: UIButton!
    @IBAction func faculty(_ sender: Any) {
        global.school = which.text!
        profilesubmit.isHidden = false
    }
    
    
    @IBAction func student(_ sender: Any) {
        global.school = which.text!
        profilesubmit.isHidden = false
    }
    @IBAction func profilesubmit(_ sender: Any) {
    
    
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wheel.isHidden = true
        profilesubmit.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
