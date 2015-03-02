
//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

// TODO six: Read the array saved in the previous file and print its space-delimited string representation here.

class SixthViewController: UIViewController {


    @IBOutlet weak var sixthTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        if let documentPath = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first as? NSURL {
            
            let filePath = documentPath.URLByAppendingPathComponent("sample.plist", isDirectory: false)
            
            if let savedArray = NSArray(contentsOfURL: filePath) {
                var arrayString = savedArray as AnyObject as [String]
                let printString = " ".join(arrayString)
                sixthTextView.text = printString
            }
            
        }
    
    
    
    
    }
}
