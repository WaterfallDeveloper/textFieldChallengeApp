//
//  ViewController.swift
//  My TextFields Challenge App
//
//  Created by Joe Z on 18.11.15.
//  Copyright © 2015 WaterfallDeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockedTextField: UITextField!
    @IBOutlet weak var lockTextField: UISwitch!
    
    // text field delegates
    let zipCodeDelegate = ZipCodeDelegate()
    let cashDelegate = CashDelegate()
//    let lockedTextDelegate = LockedTextDelegate()
    
    
    // TODO: write all delegates
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: assign delegates
        zipCodeTextField.delegate = zipCodeDelegate
        cashTextField.delegate = cashDelegate
//        lockedTextDelegate.locked = !lockTextField.on
//        lockTextField.delegate = lockedTextDelegate
        
        
    }

}

