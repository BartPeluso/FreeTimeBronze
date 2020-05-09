//
//  week.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit
var joy:String = ""
class week: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let days = ["Select", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return days[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        joy = days[row]
        
        if joy == "Monday" {
            monday.isHidden = false
        }
        else {
            monday.isHidden = true
        }
        if joy == "Tuesday" {
            tuesday.isHidden = false
        }
        else {
            tuesday.isHidden = true
        }
        if joy == "Wednesday" {
            wednesday.isHidden = false
        }
        else {
            wednesday.isHidden = true
        }
    }
    
    @IBOutlet weak var monday: UIButton!
    @IBOutlet weak var tuesday: UIButton!
    
    @IBOutlet weak var wednesday: UIButton!
    @IBOutlet weak var wheeldays: UIPickerView!
    /*func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        which.text = w[row]
    }
 */
    override func viewDidLoad() {
        super.viewDidLoad()

        monday.isHidden = true
        tuesday.isHidden = true
        wednesday.isHidden = true
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
