//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ahmed Alaa on 30/03/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //Mark: - Properties.
    var calculatorBrain =  CalculatorBrain()
    
    //Mark: - Outlets.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider! 
    @IBOutlet weak var weightSlider: UISlider!
    
    //Mark: - LifeCycle Method.
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //Mark: - Actions.
    @IBAction func hightSliderChange(_ sender: UISlider) {
       let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
       let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculateBtnTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destiantionVC = segue.destination as! ResultViewController
            destiantionVC.bmiValue = calculatorBrain.getBMIValue()
            destiantionVC.advice = calculatorBrain.getAdvice()
            destiantionVC.color = calculatorBrain.getColor()
        }
    }
    
}
 
 
