//
//  TableViewCell.swift
//  Get-Well
//
//  Created by Elizabeth Yeh on 1/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell
{
    
    @IBOutlet weak var todoDescription: UILabel!
    @IBOutlet weak var todoCheckbox: UIImageView!
    
    var isDone = false
    
}
