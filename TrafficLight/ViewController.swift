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
    
    @IBOutlet var changeButton: UIButton!
    
    @IBOutlet var viewsCollection: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width
        yellowView.layer.cornerRadius = yellowView.frame.width
        greenView.layer.cornerRadius = greenView.frame.width
        
        redView.alpha = 0.2
        yellowView.alpha = 0.2
        greenView.alpha = 0.2
        
        changeButton.layer.cornerRadius = 20
    }

    @IBAction func changeAlphaButton() {
        
    }
    
}

