//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Elenka on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redTrafficLightLabel: UIView!
    @IBOutlet weak var yellowTrafficLightLabel: UIView!
    @IBOutlet weak var greenTrafficLightLabel: UIView!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightLabel.alpha = 0.3
        redTrafficLightLabel.layer.cornerRadius = yellowTrafficLightLabel.frame.size.width / 2
        
        yellowTrafficLightLabel.alpha = 0.3
        yellowTrafficLightLabel.layer.cornerRadius = yellowTrafficLightLabel.frame.size.width / 2
        
        greenTrafficLightLabel.alpha = 0.3
        greenTrafficLightLabel.layer.cornerRadius = greenTrafficLightLabel.frame.size.width / 2
        
        colorChangeButton.layer.cornerRadius = 20
    }
    
    var includedColor = "not included"
    
    @IBAction func changeButtonTapped() {
        colorChangeButton.setTitle("NEXT", for: .normal)
        
        switch includedColor {
        case "red":
            yellowTrafficLightLabel.alpha = 1
            redTrafficLightLabel.alpha = 0.3
            includedColor = "yellow"
        case "yellow":
            greenTrafficLightLabel.alpha = 1
            yellowTrafficLightLabel.alpha = 0.3
            includedColor = "green"
        default:
            redTrafficLightLabel.alpha = 1
            greenTrafficLightLabel.alpha = 0.3
            includedColor = "red"
        }
    }
}

