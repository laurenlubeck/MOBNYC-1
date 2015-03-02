//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
   
    // TODO three: Save the text in this text box to a flat file when 'next' is pressed.
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func didTapNext(sender: AnyObject) {
        println("saved")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        saveTextView()
        // Do any additional setup after loading the view.
    }
    
    func saveTextView() {
        if let documentPath = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first as? NSURL {
            
            let filePath = documentPath.URLByAppendingPathComponent("sample.txt", isDirectory: false)
            let textToDisplay = NSString(string: textView.text)
            
            textToDisplay.writeToURL(filePath, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
            
        }
    }
}
