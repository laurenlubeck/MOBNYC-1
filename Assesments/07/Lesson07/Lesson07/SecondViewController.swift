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
        var name: String
        
        // print the settings string and settings slider
        if let name = settingsName {
            
            // print settings string and slider and name to ensure variables exist
            println(settingsName)
            println(sliderNumber)
            println(name)
            
            // display in text box
            secondTextView.text = "Name: \(name) Slider: \(sliderNumber)"
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