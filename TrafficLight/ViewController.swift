//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья on 31.07.2022.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonPress: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func buttonPressedAction() {
        if buttonPress.currentTitle == "START" {
            buttonPress.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            currentLight = .red
        }
    }
}

