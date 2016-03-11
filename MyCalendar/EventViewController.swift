//
//  EventViewController.swift
//  MyCalendar
//
//  Created by Michael Simon on 3/9/16.
//  Copyright (c) 2016 Michael Simon. All rights reserved.
//

import UIKit
import CoreData

class EventViewController: UIViewController {

    @IBAction func BackButton(sender: AnyObject) {
    
    }
    
    @IBAction func DeleteButton(sender: AnyObject) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext
        
        managedContext.deleteObject(currentEvent!)
    }
    
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var EventLabel: UILabel!
    var currentEvent : NSManagedObject?
    let dateFormat = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = currentEvent?.valueForKey("title") as! String?
        dateFormat.dateFormat = "MM/DD/YYYY"
        DateLabel.text = currentEvent?.valueForKey("date")!.dateFormat as String?
        EventLabel.text = currentEvent?.valueForKey("event") as! String?
        TimeLabel.text = currentEvent?.valueForKey("time") as! String?
        
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
    }


}
