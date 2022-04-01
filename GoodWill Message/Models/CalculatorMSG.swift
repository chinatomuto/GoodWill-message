//
//  CalculatorMSG.swift
//  GoodWill Message
//
//  Created by nato on 23/03/2022.
//

import Foundation
import UIKit

struct CalculatorMSG {
    
    var msg: MSG?
    
    func getMSGValue() -> String {
        let msgtostring = String(format: "%.1f", msg?.value ?? 0.0)
        return msgtostring
    }
    
    func getMessage() -> String {
        return msg?.message ?? "no message"
    }
    
    func getColor() -> UIColor {
        return msg?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculatorMessage(mood: Float) {
        let moods = mood
        
        if moods < 1.5 {
            msg = MSG(value: "😭", message: "God got ya, go back to him!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else {
            msg = MSG(value: "😇", message: "Give God all the praise at all times!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
    }
    
}
