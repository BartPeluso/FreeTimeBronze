//
//  logIn.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit


var varusername:String = ""
var varpassword:String = ""
var chars:Int = 0
var chars2:Int = 0




class logIn: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var wrong: UILabel!
    

    
   
    
    @IBAction func login(_ sender: Any) {
    
    
    
        varusername = username.text!
        varpassword = password.text!
        chars = varusername.count
       chars2 = varusername.count
        
    
        
        if chars == 0 && chars2 == 0 {
            
            wrong.text = ""
            
        }
        else {
            wrong.text = "No Accounts Exist, Go Make One!"
        }
       
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wrong.text = ""
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

