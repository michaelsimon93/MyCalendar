//
//  ViewController.swift
//  MyCalendar
//
//  Created by Michael Simon on 3/9/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func CreateEventButton(sender: AnyObject) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        
        /*
        
        //how to format the time
        let timeFormatter = NSDateFormatter()
        
        //styling the line
        timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        //converting the time into a string
        let strTime = timeFormatter.stringFromDate(TimeSelector.date)
        */
        
    }
    

}

