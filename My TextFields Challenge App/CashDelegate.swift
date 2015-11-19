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
    var cashInPennies = 0
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // remove $ sign and save new string
//        let newText = String(textField.text!.characters.dropFirst())
        
        if Int(string) != nil {
           cashInPennies = Int("\(cashInPennies)\(string)")!
        }
        
        let dollarInt = cashInPennies/100
        let dollarString = "$" + "\(dollarInt)" + "."
        let centsAmount = cashInPennies % 100
        var zero = ""
        if centsAmount < 10 {
            zero = "0"
        }
        
        let centsString = "\(zero)\(centsAmount)"
        let finalString = dollarString + centsString
        
        textField.text = finalString
        
        return false
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        cashInPennies = 0
        textField.text = "$0.00"
        
    }

}