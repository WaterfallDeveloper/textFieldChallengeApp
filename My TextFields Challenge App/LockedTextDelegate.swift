//
//  LockedTextDelegate.swift
//  My TextFields Challenge App
//
//  Created by Joe Z on 18.11.15.
//  Copyright © 2015 WaterfallDeveloper. All rights reserved.
//

import Foundation
import UIKit

class LockedTextDelegate: NSObject, UITextFieldDelegate {
    var locked = true
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return !locked
    }
}
