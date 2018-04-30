//
//  DemoTableViewCell.swift
//  json2demoget
//
//  Created by a4tech on 23/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var customizedButton1: UIButton!
 
    @IBOutlet weak var customizedButton2: UIButton!
    
    @IBOutlet weak var customizedButton3: UIButton!
    

    @IBOutlet weak var customizedButton4: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func button1(_ sender: Any)
    {
        customizedButton1.isSelected = true;
        customizedButton2.isSelected = false
        customizedButton3.isSelected = false
        customizedButton4.isSelected = false
        
    }
    
    @IBAction func button2(_ sender: Any) {
        customizedButton2.isSelected = true;
        customizedButton1.isSelected = false
        customizedButton3.isSelected = false
        customizedButton4.isSelected = false
        
    }
    
    @IBAction func button3(_ sender: Any) {
        customizedButton3.isSelected = true;
        customizedButton1.isSelected = false
        customizedButton2.isSelected = false
        customizedButton4.isSelected = false
    }
    
    @IBAction func button4(_ sender: Any) {
        
        customizedButton4.isSelected = true;
        customizedButton2.isSelected = false
        customizedButton3.isSelected = false
        customizedButton1.isSelected = false
    }
    
    
    
}
    
    

