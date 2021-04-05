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
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

