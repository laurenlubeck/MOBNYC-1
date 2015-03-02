//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    // TODO Five: Strings can be entered into this text box in a space-delimited fashion. They represent an array of strings. E.g. the entry "a b c" corresponds to array ["a", "b", "c"]. Save the array of strings that corresponds to the text in this text box to a file.
    
    
    @IBOutlet weak var fifthTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        if let documentPath = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first as? NSURL {
            
            let filePath = documentPath.URLByAppendingPathComponent("sample.plist", isDirectory: false)
            let textToDisplay = fifthTextView.text
            var arrayToDisplay = [""]
            for char in textToDisplay {
                if char != " " {
                    var item = String(char)
                    arrayToDisplay.append(item)
                }
            }
            
            arrayToDisplay.removeAtIndex(0)
            
            (arrayToDisplay as NSArray).writeToURL(filePath, atomically: true)

            
        }
    
    
    }




}



