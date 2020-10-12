//
//  Item2ViewController.swift
//  AppDojoSalonTask8
//
//  Created by 守屋譲司 on 2020/10/11.
//

import UIKit

class Item2ViewController: UIViewController {
    
    @IBOutlet weak var item2SliderValueLabel: UILabel!
    @IBOutlet weak var item2Slider: UISlider!
    
    private var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        
        item2Slider.value = appDelegate.sliderValue
        item2SliderValueLabel.text = String(appDelegate.sliderValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let item2SliderValue = item2Slider.value
        item2SliderValueLabel.text = String(item2SliderValue)
        appDelegate.sliderValue = item2SliderValue
    }
}
