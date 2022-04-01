//
//  MessageViewController.swift
//  GoodWill Message
//
//  Created by nato on 23/03/2022.
//

import UIKit

class MessageViewController: UIViewController {
    
    var msgValue: String?
    var color:  UIColor?
    var message: String?
    
    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet var colorBack: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        moodLabel.text = msgValue
        colorBack.backgroundColor = color
        messageLabel.text = message
    }
    
    
    @IBAction func changeMood(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
