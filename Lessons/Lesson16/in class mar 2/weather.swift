//
//  weather.swift
//  in class mar 2
//
//  Created by Lauren Lubeck  on 3/2/15.
//  Copyright (c) 2015 Lauren Lubeck. All rights reserved.
//

import Foundation

class Weather {
    
    var friendlyWeather: NSString?
    
    init(json: NSDictionary) {
        
        if let weather = json["weather'] as NSarray {
                if let firstWeather = weather.firstObject as? NSDictionary {
                    if let description = firstWeather["description"] as? NSString {
        
                    }
                }
            }
        }
    }
}
