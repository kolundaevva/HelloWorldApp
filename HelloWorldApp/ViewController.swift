//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Владислав Колундаев on 16.10.2020.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLightView: UIView!
    @IBOutlet var yellowColorTrafficLightView: UIView!
    @IBOutlet var greenColorTrafficLightView: UIView!
    
    @IBOutlet var switcherButtor: UIButton!
    
    var light = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorTrafficLightView.alpha = 0.3
        yellowColorTrafficLightView.alpha = 0.3
        greenColorTrafficLightView.alpha = 0.3
        
        redColorTrafficLightView.layer.cornerRadius = redColorTrafficLightView.frame.height / 2
        yellowColorTrafficLightView.layer.cornerRadius = redColorTrafficLightView.frame.height / 2
        greenColorTrafficLightView.layer.cornerRadius = redColorTrafficLightView.frame.height / 2
        switcherButtor.layer.cornerRadius = 10
    }

    @IBAction func switchButton() {
        
        switcherButtor.setTitle("Next", for: .normal)
        
        switch light {
        case .red:
            greenColorTrafficLightView.alpha = 0.3
            redColorTrafficLightView.alpha = 1
            light = .yellow
        case .yellow:
            redColorTrafficLightView.alpha = 0.3
            yellowColorTrafficLightView.alpha = 1
            light = .green
        case .green:
            yellowColorTrafficLightView.alpha = 0.3
            greenColorTrafficLightView.alpha = 1
            light = .red
        }
    }
    
}

