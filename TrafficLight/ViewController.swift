//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var collorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.width
        yellowView.layer.cornerRadius = yellowView.frame.width
        greenView.layer.cornerRadius = greenView.frame.width
        
        redView.alpha = 0.1
        yellowView.alpha = 0.1
        greenView.alpha = 0.1
        
        collorButton.layer.cornerRadius = 20
    }
    
    @IBOutlet var collorViewsCollection: [UIView]!
    
    @IBAction func changeAlphaButton() {
        
    }
    
}

