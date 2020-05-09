//
//  signup.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit

class Global {
    
    var topusername:String = ""
    var bottomusername:String = ""
    var toppassword:String = ""
    var bottompassword:String = ""
    var char:Int = 0
    var char2:Int = 0
    var name:String = "1"
    var date:String = "2"
    var school:String = "3"
}

let global = Global()



class signup: UIViewController {


    
    
    @IBOutlet weak var confirmusername: UILabel!
    
    
    @IBOutlet weak var confirmpassword: UILabel!
    @IBOutlet weak var usernameone: UITextField!
    
    @IBOutlet weak var usernametwo: UITextField!
    
    @IBOutlet weak var passwordone: UITextField!
    
    @IBOutlet weak var passwordtwo: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    
    
    
    @IBAction func usernameone(_ sender: Any) {
         global.topusername = usernameone.text!
    }
    
    @IBAction func usernametwo(_ sender: Any) {
        global.bottomusername = usernametwo.text!
        
        if global.topusername != global.bottomusername {
            submit.isHidden = true
            confirmusername.text = "Doesn't Match!"
            reset.isHidden = false
        }
        
    }
    
    @IBAction func passwordone(_ sender: Any) {
        global.toppassword = passwordone.text!
        
        if global.topusername == global.bottomusername{
            submit.isHidden = false
        }
    }
    
    @IBAction func passwordtwo(_ sender: Any) {
         global.bottompassword = passwordtwo.text!
        
        if global.toppassword != global.bottompassword {
            submit.isHidden = true
            confirmpassword.text = "Doesn't Match"
            reset.isHidden = false
        }
    
    }
    
    
    @IBAction func reset(_ sender: Any) {
        global.bottompassword = ""
        passwordtwo.text = ""
        global.bottomusername = ""
        usernametwo.text = ""
        confirmpassword.text = "Confirm Password"
        confirmusername.text = "Confirm Username"
        reset.isHidden = true
        submit.isHidden = false
        
    }
    
    @IBAction func submit(_ sender: Any) {
       
        
        
       
        
        
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset.isHidden = true
        submit.isHidden = true
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
