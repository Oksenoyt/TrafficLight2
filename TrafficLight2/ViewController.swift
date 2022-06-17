//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Elenka on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTrafficLightLabel: UIView!
    @IBOutlet weak var yellowTrafficLight: UIView!
    @IBOutlet weak var greenTrafficLight: UIView!
    
    @IBOutlet weak var colorChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLightLabel.alpha = 0.3
        redTrafficLightLabel.layer.cornerRadius = yellowTrafficLight.frame.size.width / 2
        
        yellowTrafficLight.alpha = 0.3
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.size.width / 2
        
        greenTrafficLight.alpha = 0.3
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.size.width / 2
    }


}

