//
//  ViewController.swift
//  MemeMaker
//
//  Created by Dmitry Reshetnik on 05.04.2021.
//

import UIKit

class ViewController: UIViewController {
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

