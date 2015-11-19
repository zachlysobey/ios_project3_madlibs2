//
//  StoryOutputViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/9/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class StoryOutputViewController: UIViewController {

    // User Default Keys
    let kWord1LabelText = "word1LabelText"
    let kWord1Placeholder = "word1Placeholder"
    let kWord2LabelText = "word2LabelText"
    let kWord2Placeholder = "word2Placeholder"
    let kWord3LabelText = "word3LabelText"
    let kWord3Placeholder = "word3Placeholder"
    let kStoryTemplate = "storyTemplate"

    var words: [String] = []
    
    @IBOutlet weak var generatedStoryOutlet: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        generatedStoryOutlet.text = generateStory()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getStoryTemplate() -> String {
        return (NSUserDefaults.standardUserDefaults().objectForKey(kStoryTemplate) as? String)!
    }

    func generateStory() -> String {
        return getStoryTemplate()
            .stringByReplacingOccurrencesOfString("<word1>", withString: words[0])
            .stringByReplacingOccurrencesOfString("<word2>", withString: words[1])
            .stringByReplacingOccurrencesOfString("<word3>", withString: words[2])
    }
}
