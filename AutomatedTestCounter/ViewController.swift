//
//  ViewController.swift
//  AutomatedTestCounter
//
//  Created by Nikhil Tanappagol on 8/24/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter : Int = 0
    
    @IBOutlet var label_text: UILabel!
    
    @IBAction func btn_ClickMe(_ sender: UIButton) {
        counter += 1
        var updatedlabel = "Button clicked for : "
        updatedlabel = updatedlabel + String (counter) +  "times"
        label_text.text = updatedlabel
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

