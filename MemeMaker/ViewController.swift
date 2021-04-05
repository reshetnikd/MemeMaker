//
//  ViewController.swift
//  MemeMaker
//
//  Created by Dmitry Reshetnik on 05.04.2021.
//

import UIKit

class ViewController: UIViewController {
    let topChoices = [CaptionOption(emoji: "🧑🏻‍💻", caption: "You never have to debug"), CaptionOption(emoji: "🤵🏻‍♂️", caption: "You can't get fired"), CaptionOption(emoji: "💵", caption: "You can't lose money")]
    let bottomChoices = [CaptionOption(emoji: "💻", caption: "If you don't code"), CaptionOption(emoji: "🕺🏻", caption: "If you don't have a job"), CaptionOption(emoji: "🙅🏻‍♂️", caption: "If you never had any")]
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func changeLabel(_ sender: UISegmentedControl) {
        changeCaption()
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        changeCaption()
    }
    
    func changeCaption() {
        switch topSegmentedControl.selectedSegmentIndex {
            case 0:
                topCaptionLabel.text = topChoices[0].caption
            case 1:
                topCaptionLabel.text = topChoices[1].caption
            case 2:
                topCaptionLabel.text = topChoices[2].caption
            default:
                break
        }
        
        switch bottomSegmentedControl.selectedSegmentIndex {
            case 0:
                bottomCaptionLabel.text = bottomChoices[0].caption
            case 1:
                bottomCaptionLabel.text = bottomChoices[1].caption
            case 2:
                bottomCaptionLabel.text = bottomChoices[2].caption
            default:
                break
        }
    }


}

