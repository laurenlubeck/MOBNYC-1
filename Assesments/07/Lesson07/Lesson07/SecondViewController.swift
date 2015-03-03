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
    
    // instantiate the text view and variable user defaults
    @IBOutlet weak var secondTextView: UITextView!
    var userDefaults = NSUserDefaults.standardUserDefaults()

    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        //create variables for the settings string and settings slider
        var settingsName = userDefaults.stringForKey("settingsString")
        var sliderNumber = userDefaults.floatForKey("settingsSlider")
        
        // print the settings string and settings slider
        if let name: String? = settingsName {
        
                secondTextView.text = "Name: \(name!), Slider: \(sliderNumber)"
                
                // print settings string and slider
            println(settingsName)
            println(sliderNumber)
        }

    }

@IBAction func didTapSettings(sender: AnyObject) {
    // open settings
    if let settingsString = UIApplicationOpenSettingsURLString {
        if let fileURL = NSURL(string: settingsString) {
            UIApplication.sharedApplication().openURL(fileURL)
        }
    }
    
}
}