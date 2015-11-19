//
//  TemplateEditorViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/8/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class TemplateEditorViewController: UIViewController {
    
    @IBOutlet weak var word1LabelField: UITextField!
    @IBOutlet weak var word1PlaceholderField: UITextField!
    @IBOutlet weak var word2LabelField: UITextField!
    @IBOutlet weak var word2PlaceholderField: UITextField!
    @IBOutlet weak var word3LabelField: UITextField!
    @IBOutlet weak var word3PlaceholderField: UITextField!
    
    @IBOutlet weak var storyTemplateField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func doneButtonAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }

}
