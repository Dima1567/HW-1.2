//
//  ViewController.swift
//  Home Work 1.2
//
//  Created by Dima Savitskiy on 19.05.21.
//

import UIKit

enum CurrenLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currenLight = CurrenLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        print("Размер стороны, доступный в методе viewDidLoad: \(redLight.frame.height)")
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
        print("Размер стороны, доступный в методе viewWillLayoutSubviews:\(redLight.frame.height)")
    }
    
    
    @IBAction func startButtonPressed() {
       if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
       }
        
        switch currenLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currenLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currenLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currenLight = .red
       
        }
    }
}


