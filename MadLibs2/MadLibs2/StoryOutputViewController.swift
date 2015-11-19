//
//  StoryOutputViewController.swift
//  MadLibs2
//
//  Created by zach lysobey on 11/9/15.
//  Copyright © 2015 Abstract Evolution. All rights reserved.
//

import UIKit

class StoryOutputViewController: UIViewController {

    var words: [String] = []
    
    @IBOutlet weak var generatedStoryOutlet: UITextView!
    
    let defaultStory: String =
        "There once was a <word1> who liked to <word3> " +
        "<word2> programs on his computer. That <word1> " +
        "would <word3> so much that it hurt."

    override func viewDidLoad() {
        super.viewDidLoad()
        generatedStoryOutlet.text = getStoryTemplate()
            .stringByReplacingOccurrencesOfString("<word1>", withString: "Heyo!")
            .stringByReplacingOccurrencesOfString("<word2>", withString: "Boom!")
            .stringByReplacingOccurrencesOfString("<word3>", withString: "Zap!!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getStoryTemplate() -> String {
        return defaultStory
    }
}
