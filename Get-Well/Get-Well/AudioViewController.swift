//
//  AudioViewController.swift
//  Get-Well
//
//  Created by Elizabeth Yeh on 1/7/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

public var AudioPlayer = AVPlayer()
public var SelectedSongNumebr = Int()

class AudioViewController: UIViewController
{
    var iDArray = [String]()
    var nameArray = [String]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        var objectIDQuery = PFQuery(className: "Songs")
//        objectIDQuery.findObjectsInBackgroundWithBlock({
//            (objectsArray: [AnyObject]?, error: NSError?) -> Void in
//            
//            var objectIDs = objectArray as! [PFObject]
//            for i in 0...objectIDs.count
//            {
//                self.iDArray.append(objectIDs[i].valueforkey("objectID") as! Sstring)
//            }
//        })
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
