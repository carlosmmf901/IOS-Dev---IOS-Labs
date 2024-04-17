//
//  ViewController.swift
//  New Product
//
//  Created by iOS Lab 04 on 24/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var currentColor: UIColor?
    var saveColorArray: [UIColor] = []
    
    
    @IBAction func saveColorAction(_ sender: Any) {
        guard let currentColor = colorView.backgroundColor 
        else  {
            return
        }
        self.currentColor = currentColor
        saveColorArray.append(currentColor)
        print("Cor salva: \(saveColorArray)")
        
    }
    
    //var currentColor = UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateColor()
        colorView.layer.borderWidth = 5
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
        colorView.backgroundColor = color
        
        
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
        
        
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        greenSlider.value = 1
        redSlider.value = 1
        blueSlider.value = 1
        updateColor()
        saveColorArray.removeAll()
        print("Cor salva: \(saveColorArray)")
    }
    
    
    
        
}
