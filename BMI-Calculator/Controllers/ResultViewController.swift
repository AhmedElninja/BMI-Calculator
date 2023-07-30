//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ahmed Alaa on 30/03/2023.
//

import UIKit

class ResultViewController: UIViewController {

    //Mark:- Properties.
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    //Mark: - Outlets.
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    //Mark: - LifeCycle Methods.
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text =  bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

     }
    

    //Mark: - Actions.
    @IBAction func recalculateBtnTapped(_ sender: UIButton) {
        dismiss(animated: true)
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
