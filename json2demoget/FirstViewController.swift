//
//  FirstViewController.swift
//  json2demoget
//
//  Created by a4tech on 17/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
     self.navigationItem.backBarButtonItem?.title = ""
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        
  
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondView = storyboard.instantiateViewController(withIdentifier: "HomeTableViewCell") as! ViewController
        
      // let secondView:ViewController = self.storyboard?.instantiateViewController(withIdentifier: "sec") as! ViewController
        self.navigationController?.pushViewController(secondView, animated:true)
        self.navigationItem.backBarButtonItem?.title = ""
        
       // self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
       
        
        
    }
    

}
