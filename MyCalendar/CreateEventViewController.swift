//
//  CreateEventViewController.swift
//  MyCalendar
//
//  Created by Michael Simon on 3/9/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit
import CoreData

class CreateEventViewController: UIViewController {

    var newEvent : NSManagedObject!
    
    @IBOutlet weak var TimePicker: UIDatePicker!
    @IBOutlet weak var AddEventText: UITextField!
    var date: UIDatePicker!
    
    @IBAction func CancelCreateButton(sender: AnyObject) {
        performSegueWithIdentifier("CancelSegue", sender: self)
    }
    
    @IBAction func AddEventButton(sender: AnyObject) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext
        
        //how to format the time
        let timeFormatter = NSDateFormatter()
        
        //styling the line
        timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        //converting the time into a string
        let strTime = timeFormatter.stringFromDate(TimePicker.date)

        
        newEvent.setValue(strTime, forKey: "time")
        newEvent.setValue(AddEventText, forKey: "event")
        newEvent.setValue(date, forKey: "date")
        newEvent.setValue(AddEventText, forKey: "title")
        
        do {
        try manageContext.save()
        }
        catch (let error, s, NSError) {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        do
        { try (managedContext.save())
        
        }
        catch (let error as NSError) {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        performSegueWithIdentifier("CreateSegue", sender: self)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Create Event"
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
        
        if (segue.identifier == "CancelSegue") {
            let vc = segue.destinationViewController as! ViewController
        }
        
        if (segue.identifier == "CreateSegue") {
            let vc = segue.destinationViewController as! ViewController
            let 
        }
        
        
        //I might need to add some functionality if the segues don't pass the data
    }

}
