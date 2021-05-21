//
//  ViewController.swift
//  TrafficLight
//
//  Created by Anna Ostapenko on 18.05.21.
//

import UIKit

enum TrafficLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    private var currentLight = TrafficLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        let lightBorderRadius = redLight.bounds.width / 2
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = lightBorderRadius
        yellowLight.layer.cornerRadius = lightBorderRadius
        greenLight.layer.cornerRadius = lightBorderRadius
    }
    
    @IBAction func onStartClick(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)

        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOn
            redLight.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
        
    }
    
    
    
    
}

