//
//  SetReminderPopOverViewController.swift
//  Get-Well
//
//  Created by Elizabeth Yeh on 1/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//


import UIKit

class SetReminderPopOverViewController: UIViewController
{
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var doneButton: UIButton!
    
    var delegate: DatePickerDelegate?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //    override func viewWillDisappear(animated: Bool)
    //    {
    //        super.viewWillDisappear(animated)
    //
    //        delegate?.dateWasChosen(datePicker.date)
    //
    //        let localNotification = UILocalNotification()
    //                  localNotification.fireDate = datePicker.date
    //                           print(NSDate())
    //                          print(localNotification.fireDate)
    //                   localNotification.timeZone = NSTimeZone.localTimeZone()
    //                   localNotification.alertBody = "Time to Relax"
    //                   localNotification.alertAction = "Open App"
    //                   localNotification.soundName = UILocalNotificationDefaultSoundName
    //
    //                UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    //
    //    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneWasPressed(sender: UIButton!)
    {
        delegate?.dateWasChosen(datePicker.date)
        
        let localNotification = UILocalNotification()
        localNotification.fireDate = datePicker.date
        print(NSDate())
        print(localNotification.fireDate)
        localNotification.timeZone = NSTimeZone.localTimeZone()
        localNotification.alertBody = "Time to Relax"
        localNotification.alertAction = "Open App"
        localNotification.soundName = UILocalNotificationDefaultSoundName
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
