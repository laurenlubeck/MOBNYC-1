//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

 // TODO two: Make this text view print the values of the string and slider value stored in the settings bundle of the app.
    
    @IBOutlet weak var secondTextView: UITextView!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()

    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapSettings(sender: AnyObject) {

        // open settings
        if let settingsString = UIApplicationOpenSettingsURLString {
                            if let fileURL = NSURL(string: settingsString) {
                                UIApplication.sharedApplication().openURL(fileURL)
                            }
                        }

    
    }

        override func viewWillAppear(animated: Bool) {
            super.viewWillAppear(animated)
            let sliderValue = userDefaults.floatForKey("settingsSlider")
            if let stringValue = userDefaults.stringForKey("settingsString") {
                println(sliderValue)
                println(stringValue)
                
                //       secondTextView.text = "string value: \(stringValue) slider  value: \(sliderValue)"
            } else {
                secondTextView.text = "Error: please update settings"
            }

        }
        
    
}
