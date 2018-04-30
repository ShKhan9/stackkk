

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
   
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var customizedBackButton: UIButton!
    
    var questionDictionary = [Int:String]()
    var optionDictionary = [Int:Array<String>]()
    
    
    override func viewDidLoad() {
        
         questionDictionary = [0:"Whether you have experienced pricking pain,desquamation,itching or dry skin sensation during seasonal alternate.", 1:"Whether your skin apt to flush( redness) in hot humid environment ", 2:"Whether your skin has multiple disernible dilated capillaries.", 3:"whether you have once been diagnosed atopic dermatitis or seborrheic dermatitis."]
        
         optionDictionary = [0:["Never","Seldom","Usually","Always"],1:["Never","Seldom","Usually","Always"],2:["Never","Seldom","Usually","Always"],3:["Yes", "No"]]
        

        titleLabel.text = "Fill Skin Type Survey Form "
        titleLabel.textColor = UIColor.black

        topicLabel.text = "Are You with sensitive skin type ?"
        topicLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        let homeNib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        self.tableView.register(homeNib, forCellReuseIdentifier: "DemoTableViewCell")

        self.customizedBackButton.layer.cornerRadius = 10
        self.customizedBackButton.clipsToBounds =  true
        
        self.tableView.allowsSelection = false
        self.navigationItem.backBarButtonItem?.title = ""
        
    }
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return questionDictionary.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell:DemoTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
            
            // FOR  Question DICTIONARY
            
           cell.questionLabel.lineBreakMode = .byWordWrapping
           cell.questionLabel.numberOfLines = 0
           cell.questionLabel.text = questionDictionary[indexPath.row]
           cell.questionLabel.font = UIFont.boldSystemFont(ofSize: 20)
            
            // FOR Option DICTIONARY
            
//            let answer:NSArray = optionDictionary[indexPath.row]! as NSArray;
//
//            cell.customizedButton1.setTitle( answer[0] as? String ,for: .normal);

           // cell.optionsLabel.text = dictionary2[indexPath.row]?.joined(separator: "    ")
            
            let arrOptions: [String] = optionDictionary[indexPath.row]!
            
            if indexPath.row == questionDictionary.count-1 {
                cell.customizedButton3.isHidden = true
                cell.customizedButton4.isHidden = true
                
                cell.customizedButton1.setTitle(arrOptions[0], for: .normal)
                cell.customizedButton2.setTitle(arrOptions[1], for: .normal)
            }
            else {
                cell.customizedButton3.isHidden = false
                cell.customizedButton4.isHidden = false
                
                cell.customizedButton1.setTitle(arrOptions[0], for: .normal)
                cell.customizedButton2.setTitle(arrOptions[1], for: .normal)
                cell.customizedButton3.setTitle(arrOptions[2], for: .normal)
                cell.customizedButton4.setTitle(arrOptions[3], for: .normal)
            }
            
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableViewAutomaticDimension
        }
        
        func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
            return 350.0
        }

    
   
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.size.height-150, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 5.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 8;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }


    
    @IBAction func backButtonAction(_ sender: Any)
    {
        self.showToast(message: "Back Button Pressed")
    }
    
    
    @IBAction func sendButtonAction(_ sender: Any)
    {
        self.showToast(message: "Send Button Pressed")
    }
    
}


