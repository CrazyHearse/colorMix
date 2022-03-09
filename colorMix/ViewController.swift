//
//  ViewController.swift
//  colorMix
//
//  Created by Евгений Ерофеев on 18.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mixView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mixView.backgroundColor = UIColor.orange
        mixView.layer.cornerRadius = mixView.bounds.height/2
        mixView.layer.borderColor = UIColor.black.cgColor
        mixView.layer.borderWidth = 3
    }
    // MARK: - IBOutlets
    
    @IBAction func sliderUpdate(_ sender: UISlider) {
        updateSliders()
    }
    
    @IBAction func redAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func greenAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        mixView.backgroundColor = UIColor.clear
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
    }
    
    // MARK: - Helpers
    
    func updateSliders() {
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mixView.backgroundColor = color
    }
}



