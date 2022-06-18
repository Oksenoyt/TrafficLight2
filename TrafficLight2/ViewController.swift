//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Elenka on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redTrafficLightView: UIView!
    @IBOutlet weak var yellowTrafficLightView: UIView!
    @IBOutlet weak var greenTrafficLightView: UIView!
    @IBOutlet weak var changeButton: UIButton!
    
    var includedColor = "not included"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightView.alpha = 0.3
        redTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.size.width / 2
        
        yellowTrafficLightView.alpha = 0.3
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.size.width / 2
        
        greenTrafficLightView.alpha = 0.3
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.size.width / 2
        
        changeButton.layer.cornerRadius = 20
    }
    
    @IBAction func changeButtonTapped() {
        changeButton.setTitle("NEXT", for: .normal)
        
        switch includedColor {
        case "red":
            yellowTrafficLightView.alpha = 1
            redTrafficLightView.alpha = 0.3
            includedColor = "yellow"
        case "yellow":
            greenTrafficLightView.alpha = 1
            yellowTrafficLightView.alpha = 0.3
            includedColor = "green"
        default:
            redTrafficLightView.alpha = 1
            greenTrafficLightView.alpha = 0.3
            includedColor = "red"
        }
    }
}

