//
//  ZipCodeDelegate.swift
//  My TextFields Challenge App
//
//  Created by Joe Z on 18.11.15.
//  Copyright © 2015 WaterfallDeveloper. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text! as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        // allow "" to pass, otherwise check if the entered key is a number and that the resulting string length 5 max
        var changeText = newText == ""
        if !changeText {
            if let _ = Int(newText as String) {
                if newText.length <= 5 {
                    changeText = true
                }
                
            }
        }
        
        return changeText
    }
    
}
