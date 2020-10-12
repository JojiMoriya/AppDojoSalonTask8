//
//  Item1ViewController.swift
//  AppDojoSalonTask8
//
//  Created by 守屋譲司 on 2020/10/11.
//

import UIKit

class Item1ViewController: UIViewController {

    @IBOutlet  weak var item1SliderValueLabel: UILabel!
    @IBOutlet  weak var item1Slider: UISlider!
    
    private var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        
        item1Slider.value = appDelegate.sliderValue
        item1SliderValueLabel.text = String(appDelegate.sliderValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let item1SliderValue = item1Slider.value
        item1SliderValueLabel.text = String(item1SliderValue)
        appDelegate.sliderValue = item1SliderValue
    }
}
