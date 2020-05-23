//
//  SceneDelegate.swift
//  RandomQuotesGenerator
//
//  Created by Maksym on 16/05/2020.
//  Copyright © 2020 Maksym. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    var pickerData = [
        "Confucius": ["“By three methods we may learn wisdom: First, by reflection, which is noblest; Second, by imitation, which is easiest; and third by experience, which is the bitterest.”", "“Everything has beauty, but not everyone sees it.”", "“Wheresoever you go, go with all your heart.”"],
        "Ernest Hemingway": ["“There is no friend as loyal as a book.”", "“There is nothing to writing. All you do is sit down at a typewriter and bleed.”", "“Happiness in intelligent people is the rarest thing I know.”"],
        "Friedrich Nietzsche": ["“Blessed are the forgetful, for they get the better even of their blunders.”", "“The snake which cannot cast its skin has to die. As well the minds which are prevented from changing their opinions; they cease to be mind.”", "“One must be a sea, to receive a polluted stream without becoming impure.”"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pickConfuciusQuote(_ sender: Any) {
        quoteLabel.text = pickerData["Confucius"]?.randomElement()
    }
    @IBAction func pickHemingwayQuote(_ sender: Any) {
        quoteLabel.text = pickerData["Ernest Hemingway"]?.randomElement()
    }
    @IBAction func pickNietzscheQuote(_ sender: Any) {
        quoteLabel.text = pickerData["Friedrich Nietzsche"]?.randomElement()
    }
}
