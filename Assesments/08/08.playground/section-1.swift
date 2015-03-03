//// Assignment 8 playground
//
//import XCPlayground
//
//// Let asynchronous code run
//XCPSetExecutionShouldContinueIndefinitely()
//
////TODO one: Write and call a function that make a successful network connection to google.com using core networking APIs, then print out the results.
//
//if let url = NSURL (string: "http://google.com") {
//    let task = NSURLSession.sharedSession().dataTaskWithURL(url,//        completionHandler: { (data, response, error) -> Void in//        // print the data response and error messages
//        println(response)
//        println(data)
//        println(error)
//        
//        var stringOfData = NSString(data: data, encoding: NSUTF8StringEncoding)
//        println(stringOfData)
//
//        })
//    task.resume()
//}


////TODO two: Write and call a function that makes a failing network connection (using core networking APIs) to http://generalassemb.ly/foobar.baz, a nonexistant page. Print out the status code and body of the response.
//
//    if let url = NSURL(string: "http://generalassemb.ly/foobar.baz") {
//    let task = NSURLSession.sharedSession().dataTaskWithURL(url,//    completionHandler: { (data, response, error) -> Void in
//    // print the data response and error message//    println(response)//    println(data)//    println(error)
//
//    // print the error string//    var stringOfError = NSString(data: error, encoding://    NSUTF8StringEncoding)//    println(stringOfError)//    })
//    task.resume()
//}

//TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.

//var webSafeCity: String?
//
//webSafeCity = cityName.text.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet())
//    
//    
//if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(webSafeCity!)") {
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//    var jsonError: NSError?
//    if let jsonDict = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: &jsonError) as? NSDictionary {
//    self.json = jsonDict
//
//    dispatch_async(dispatch_get_main_queue(), {
//    checkWeather()
//    checkWeatherSummary()
//    })
//    }
//    })
//        // Required to start the network task
//        task.resume()
//    }
//
//func checkWeather(){
//        json = jsonDict
//        if let newItem = json["main"] as? NSDictionary {
//        if let title = newItem["temp"] as? CGFloat {
//        println(title)
//        }
//        
//        }
//        }
//}
//
//func checkWeatherSummary(){
//            if let json = self.json {
//            if let newItem = json["weather"]![0] as? NSDictionary {
//            
//            if let title = newItem["main"] as? String {
//            println(title) }
//            }
//            }
//}
//
//
//
////TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.
//
//
