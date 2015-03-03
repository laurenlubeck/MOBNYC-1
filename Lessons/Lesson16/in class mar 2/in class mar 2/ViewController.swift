//
//  ViewController.swift
//  in class mar 2
//
//  Created by Lauren Lubeck  on 3/2/15.
//  Copyright (c) 2015 Lauren Lubeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if let url = NSURL (string: "http://api.openweathermap.org/data/2.5/weather?q=nyc,ny") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: {
                (data, response, error) -> Void in
                
                
                if let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
                    
                    var weather = Weather(json: jsonDict)
                    if let friendlyWeather = weather.friendlyWeather {
                        dispatch_async(dispatch_get_main_queue(), {
                            self.label.text = friendlyWeather
                        })
                    }
                }
            })
            task.resume()
        }
        
    }
}