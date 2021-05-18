//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anna Ostapenko on 18.05.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var button: UIButton!
    
    var currentClick = ""
    
    @IBAction func onClick(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
        redLight.layer.opacity = 1
        switch currentClick {
        case "red":
            redLight.layer.opacity = 1
            greenLight.layer.opacity = 0.3
            currentClick = "yellow"
        case "yellow":
            yellowLight.layer.opacity = 1
            redLight.layer.opacity = 0.3
            currentClick = "green"
        case "green":
            greenLight.layer.opacity = 1
            yellowLight.layer.opacity = 0.3
            redLight.layer.opacity = 0.3
            currentClick = "red"
        default:
            return
        }
        
    }
    
    override func viewDidLoad() {
        currentClick = "red"
        let lightBorderRadius = redLight.bounds.width / 2
        redLight.layer.opacity = 0.3
        yellowLight.layer.opacity = 0.3
        greenLight.layer.opacity = 0.3
        
        redLight.layer.cornerRadius = lightBorderRadius
        yellowLight.layer.cornerRadius = lightBorderRadius
        greenLight.layer.cornerRadius = lightBorderRadius
    }
    
    
}

