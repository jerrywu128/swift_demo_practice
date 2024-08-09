//
//  changeColorViewVC.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/5/7.
//

import UIKit

class changeColorViewVC: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 3
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchChange(sender: UISwitch){
        updateColor()
        updateControl()
    }
    
    func updateControl(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    @IBAction func sliderChange(_ sender: Any) {
        updateColor()
    }
    @IBAction func resetValue(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        updateColor()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
