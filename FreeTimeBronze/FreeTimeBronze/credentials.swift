//
//  credentials.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit






class credentials: UIViewController {

    @IBOutlet weak var usernameshow: UILabel!
    
    @IBOutlet weak var passwordshow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        usernameshow.text = global.topusername
        passwordshow.text = global.toppassword
        
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
