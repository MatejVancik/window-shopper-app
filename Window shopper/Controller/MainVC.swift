//
//  ViewController.swift
//  Window shopper
//
//  Created by Matej Vancik on 1/30/18.
//  Copyright © 2018 Matej Vancik. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    
    @IBOutlet weak var hourVal: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        button.setTitle("Calculate", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(MainVC.onCalculate), for: .touchUpInside)
    
        wageText.inputAccessoryView = button
        priceText.inputAccessoryView = button
        
        hourVal.isHidden = true
        hourLabel.isHidden = true
    }
    
    @objc func onCalculate() {
        if let wageText = wageText.text,
        let priceText = priceText.text,
        let wage = Double(wageText),
            let price = Double(priceText) {
            view.endEditing(true)
            hourVal.isHidden = false
            hourLabel.isHidden = false
            hourVal.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
        }
    }

    @IBAction func onClearCalculatorTap(_ sender: Any) {
        hourVal.isHidden = true
        hourLabel.isHidden = true
        
        wageText.text = ""
        priceText.text = ""
        
    }
    
}

