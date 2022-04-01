//
//  ViewController.swift
//  GoodWill Message
//
//  Created by nato on 18/03/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var calculatorMSG = CalculatorMSG()
    
    var colourSelectionData = ["blue", "yellow", "red", "green", "orange", "purple", "grey", "white"]
    
    @IBOutlet weak var colourSelection: UIPickerView!
    @IBOutlet weak var moodSelection: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.colourSelection.delegate = self
        self.colourSelection.dataSource = self
        
    }
    
    @IBAction func moodSlider(_ sender: UISlider) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colourSelectionData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colourSelectionData[row]
    }

        
    @IBAction func messagePressed(_ sender: UIButton) {
        
        let mood = moodSelection.value
        
        calculatorMSG.calculatorMessage(mood: mood)
        
        self.performSegue(withIdentifier: "goToMessage", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "goToMessage" {
            let destinationVC = segue.destination as! MessageViewController
            destinationVC.msgValue = calculatorMSG.getMSGValue()
            destinationVC.message = calculatorMSG.getMessage()
            destinationVC.color = calculatorMSG.getColor()
        }
        
    }
    
}

