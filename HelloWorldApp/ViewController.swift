//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Владислав Колундаев on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLightView: UIView!
    @IBOutlet var yellowColorTrafficLightView: UIView!
    @IBOutlet var greenColorTrafficLightView: UIView!
    
    @IBOutlet var switcherButtor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorTrafficLightView.alpha = 0.3
        yellowColorTrafficLightView.alpha = 0.3
        greenColorTrafficLightView.alpha = 0.3
        
        redColorTrafficLightView.layer.cornerRadius = 55
        yellowColorTrafficLightView.layer.cornerRadius = 55
        greenColorTrafficLightView.layer.cornerRadius = 55
        switcherButtor.layer.cornerRadius = 10
    }

    @IBAction func switchButton() {
        if redColorTrafficLightView.alpha != 1, yellowColorTrafficLightView.alpha != 1{
            greenColorTrafficLightView.alpha = 0.3
            redColorTrafficLightView.alpha = 1
            switcherButtor.setTitle("Next", for: .normal)
        } else if yellowColorTrafficLightView.alpha != 1 {
            redColorTrafficLightView.alpha = 0.3
            yellowColorTrafficLightView.alpha = 1
            switcherButtor.setTitle("Next", for: .normal)
        } else {
            redColorTrafficLightView.alpha = 0.3
            yellowColorTrafficLightView.alpha = 0.3
            greenColorTrafficLightView.alpha = 1
            switcherButtor.setTitle("Next", for: .normal)
        }
    }
    
}

