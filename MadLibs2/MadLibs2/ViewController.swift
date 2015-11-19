//
//  ViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/8/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var word1: UITextField!
    @IBOutlet weak var word1Label: UILabel!
    
    @IBOutlet weak var word2: UITextField!
    @IBOutlet weak var word2Label: UILabel!
    
    @IBOutlet weak var word3: UITextField!
    @IBOutlet weak var word3Label: UILabel!
    
    @IBAction func editTemplate(sender: AnyObject) {
        
    }

    @IBAction func generateStory(sender: AnyObject) {
        self.performSegueWithIdentifier("generateStorySegue", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewController = segue.destinationViewController as! StoryOutputViewController
        viewController.words = [
            word1.text!,
            word2.text!,
            word3.text!
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
