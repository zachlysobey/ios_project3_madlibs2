//
//  TemplateEditorViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/8/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class TemplateEditorViewController: UIViewController {
    
    // User Default Keys
    let kWord1LabelText = "word1LabelText"
    let kWord1Placeholder = "word1Placeholder"
    let kWord2LabelText = "word2LabelText"
    let kWord2Placeholder = "word2Placeholder"
    let kWord3LabelText = "word3LabelText"
    let kWord3Placeholder = "word3Placeholder"
    let kStoryTemplate = "storyTemplate"

    @IBOutlet weak var word1LabelField: UITextField!
    @IBOutlet weak var word1PlaceholderField: UITextField!
    @IBOutlet weak var word2LabelField: UITextField!
    @IBOutlet weak var word2PlaceholderField: UITextField!
    @IBOutlet weak var word3LabelField: UITextField!
    @IBOutlet weak var word3PlaceholderField: UITextField!
    @IBOutlet weak var storyTemplateField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setFieldsToUserDefaults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func doneButtonAction(sender: AnyObject) {
        confirmAndSave()
    }

    func setFieldsToUserDefaults() {
        let userDefaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        word1LabelField.text = userDefaults.objectForKey(kWord1LabelText) as? String
        word1PlaceholderField.text = userDefaults.objectForKey(kWord1Placeholder) as? String
        word2LabelField.text = userDefaults.objectForKey(kWord2LabelText) as? String
        word2PlaceholderField.text = userDefaults.objectForKey(kWord2Placeholder) as? String
        word3LabelField.text = userDefaults.objectForKey(kWord3LabelText) as? String
        word3PlaceholderField.text = userDefaults.objectForKey(kWord3Placeholder) as? String
        storyTemplateField.text = userDefaults.objectForKey(kStoryTemplate) as? String
    }

    func setUserDefaultsToFieldValues() {
        let userDefaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(word1LabelField.text, forKey: kWord1LabelText)
        userDefaults.setObject(word1PlaceholderField.text, forKey: kWord1Placeholder)
        userDefaults.setObject(word2LabelField.text, forKey: kWord2LabelText)
        userDefaults.setObject(word2PlaceholderField.text, forKey: kWord2Placeholder)
        userDefaults.setObject(word3LabelField.text, forKey: kWord3LabelText)
        userDefaults.setObject(word3PlaceholderField.text, forKey: kWord3Placeholder)
        userDefaults.setObject(storyTemplateField.text, forKey: kStoryTemplate)
    }
    
    func confirmAndSave() {
        let alertController = UIAlertController(title: "Save changes?",
            message: "",
            preferredStyle: UIAlertControllerStyle.Alert)
        
        // Stay where we are
        let dontSaveAction = UIAlertAction(
            title: "Don't Save",
            style: UIAlertActionStyle.Cancel,
            handler: {(alertAction: UIAlertAction!) in
                self.dismissViewControllerAnimated(true, completion: nil)
            })
        
        // Exits
        let cancelAction = UIAlertAction(
            title: "Keep editting",
            style: UIAlertActionStyle.Destructive,
            handler: {(alertAction: UIAlertAction!) in })
        
        // Save's and Exits
        let saveAction = UIAlertAction(
            title: "Save",
            style: UIAlertActionStyle.Default,
            handler: {(alertAction: UIAlertAction!) in
                self.setUserDefaultsToFieldValues()
                self.dismissViewControllerAnimated(true, completion: nil)
            })
        
        alertController.addAction(dontSaveAction)
        alertController.addAction(cancelAction)
        alertController.addAction(saveAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }

}
