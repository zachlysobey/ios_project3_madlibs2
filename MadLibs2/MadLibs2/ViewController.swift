//
//  ViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/8/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // User Default Keys
    let kWord1LabelText = "word1LabelText"
    let kWord1Placeholder = "word1Placeholder"
    let kWord2LabelText = "word2LabelText"
    let kWord2Placeholder = "word2Placeholder"
    let kWord3LabelText = "word3LabelText"
    let kWord3Placeholder = "word3Placeholder"
    let kStoryTemplate = "storyTemplate"

    @IBOutlet weak var word1: UITextField!
    @IBOutlet weak var word1Label: UILabel!
    
    @IBOutlet weak var word2: UITextField!
    @IBOutlet weak var word2Label: UILabel!
    
    @IBOutlet weak var word3: UITextField!
    @IBOutlet weak var word3Label: UILabel!

    
    @IBAction func editTemplate(sender: AnyObject) {
        // Do I need this?
    }
    
    @IBAction func generateStory(sender: AnyObject) {
        self.performSegueWithIdentifier("generateStorySegue", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserDefaultsIfNil()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        setTextFieldPlaceholdersAndLabelsToUserDefaults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is StoryOutputViewController {
            passWordChoicesToStoryOutputViewController(segue)
        }
    }
    
    func setupUserDefaultsIfNil() {
        let defaultWord1Label = "Noun"
        let defaultWord1Placeholder = "Your Noun"
        let defaultWord2Label = "Adjective"
        let defaultWord2Placeholder = "Your Adjective"
        let defaultWord3Label = "Verb"
        let defaultWord3Placeholder = "Your Verb"
        let defaultStory: String =
            "There once was a <word1> who liked to <word3> " +
            "<word2> programs on his computer. That <word1> " +
            "would <word3> so much that it hurt."
        
        let userDefaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if !areUserDefaultsSet(userDefaults) {
            userDefaults.setObject(defaultWord1Label, forKey: kWord1LabelText)
            userDefaults.setObject(defaultWord1Placeholder, forKey: kWord1Placeholder)
            userDefaults.setObject(defaultWord2Label, forKey: kWord2LabelText)
            userDefaults.setObject(defaultWord2Placeholder, forKey: kWord2Placeholder)
            userDefaults.setObject(defaultWord3Label, forKey: kWord3LabelText)
            userDefaults.setObject(defaultWord3Placeholder, forKey: kWord3Placeholder)
            userDefaults.setObject(defaultStory, forKey: kStoryTemplate)
        }
    }

    func areUserDefaultsSet(userDefaults: NSUserDefaults) -> Bool {
        return userDefaults.stringForKey(kWord1LabelText) != nil
    }

    func setTextFieldPlaceholdersAndLabelsToUserDefaults() {
        let userDefaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        word1.placeholder = userDefaults.objectForKey(kWord1Placeholder) as? String
        word1Label.text = userDefaults.objectForKey(kWord1LabelText) as? String
        word2.placeholder = userDefaults.objectForKey(kWord2Placeholder) as? String
        word2Label.text = userDefaults.objectForKey(kWord2LabelText) as? String
        word3.placeholder = userDefaults.objectForKey(kWord3Placeholder) as? String
        word3Label.text = userDefaults.objectForKey(kWord3LabelText) as? String
    }
    
    func passWordChoicesToStoryOutputViewController(segue: UIStoryboardSegue) {
        let storyOutputViewController = segue.destinationViewController as! StoryOutputViewController
        storyOutputViewController.words = [
            word1.text!,
            word2.text!,
            word3.text!
        ]
    }

}
