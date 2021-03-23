//
//  ViewController.swift
//  Destini-iOS13
//
//  Created Arseni Laputska on 19/08/2020.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {

        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoriesText()
        choice1Button.setTitle(storyBrain.getChoicesText1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoicesText2(), for: .normal)
    }
}
