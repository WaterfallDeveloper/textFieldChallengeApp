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
    @IBOutlet weak var switchTextField: UITextField!
    @IBOutlet weak var lockingSwitch: UISwitch!
    
    // text field delegates
    let zipCodeDelegate = ZipCodeDelegate()
    let cashDelegate = CashDelegate()
    let lockedTextDelegate = LockedTextDelegate()
    
    @IBAction func switchChangedState(sender: UISwitch) {
        lockedTextDelegate.locked = !lockingSwitch.on
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: assign delegates
        zipCodeTextField.delegate = zipCodeDelegate
        cashTextField.delegate = cashDelegate
        switchTextField.delegate = lockedTextDelegate
        lockedTextDelegate.locked = !lockingSwitch.on
        
    }

}

