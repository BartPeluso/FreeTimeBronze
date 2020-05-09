//
//  info.swift
//  FreeTimeBronze
//
//  Created by student on 5/8/20.
//  Copyright © 2020 Peluso,Bart. All rights reserved.
//

import UIKit

class info: UIViewController {

    @IBOutlet weak var infoname: UILabel!
    
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var subtitle: UILabel!
    
    @IBOutlet weak var infoschool: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoname.text = global.name
        infoschool.text = global.school
        subtitle.text = "A proud member of \(global.school)!"
        
        if infoschool.text == "Texas State" {
            imgview.image = UIImage (named:"TexasState.png")
        }
        else if infoschool.text == "Texas A&M" {
            imgview.image = UIImage (named:"TexasAM.png")
        }
        else {
            imgview.image = UIImage (named:"TexasTech.png")
        }
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
