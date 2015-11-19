//
//  CashDelegate.swift
//  My TextFields Challenge App
//
//  Created by Joe Z on 18.11.15.
//  Copyright © 2015 WaterfallDeveloper. All rights reserved.
//

import Foundation
import UIKit
class CashDelegate:NSObject, UITextFieldDelegate {
    var cashAmount = 0
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // remove $ sign and save new string
//        let newText = String(textField.text!.characters.dropFirst())
        
        if Int(string) != nil {
           cashAmount = Int("\(cashAmount)\(string)")!
        }
        
        textField.text = "$\(Float(cashAmount) / 100)"
        
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        cashAmount = 0
        textField.text = "$0.00"
        
    }

}