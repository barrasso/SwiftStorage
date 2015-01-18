//
//  ViewController.swift
//  PersistentStorage
//
//  Created by Mark on 1/18/15.
//  Copyright (c) 2015 MEB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // stores data
        NSUserDefaults.standardUserDefaults().setObject("Mark", forKey: "name")
        // retrieves data
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as String
        println(name)
        
        // init array
        var array = [1,2,3]
        // store array
        NSUserDefaults.standardUserDefaults().setObject(array, forKey: "array")
        // retrieve array
        var savedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as NSArray
        println(savedArray[2])

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

