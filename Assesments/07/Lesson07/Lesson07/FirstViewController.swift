//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

   //TODO one: Make this text view print the values of test_string and test_number, stored in NSUserDefaults
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var arrayofStrings: [String]? = ["Hello!"]
        //  var arrayofNumbers: [Int]? = 18
        
        // set text
        NSUserDefaults.standardUserDefaults().setObject("Hello!", forKey: "test_String")
        println(NSUserDefaults.standardUserDefaults().objectForKey("test_String")!)
        
        
        // set number
        NSUserDefaults.standardUserDefaults().setInteger(18, forKey: "test_Number")
        println(NSUserDefaults.standardUserDefaults().objectForKey("test_Number")!)
        
        
        // synchronize
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}
