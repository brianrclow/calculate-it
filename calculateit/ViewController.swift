//
//  ViewController.swift
//  calculateit
//
//  Created by Brian Clow on 9/8/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textNumber1: UITextField!
    @IBOutlet var textNumber2: UITextField!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var errorImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func equalsButton(_ sender: UIButton) {
        
        let firstNumber = Double(textNumber1.text!)
        let secondNumber = Double(textNumber2.text!)
        
        if firstNumber != nil && secondNumber != nil {
            let equalsNumber = Double(firstNumber! + secondNumber!)
            answerLabel.text = "\(equalsNumber)"
            errorImage.image = UIImage(named: "success")
        }
        else {
            answerLabel.text = "missing a number!"
            errorImage.image = UIImage(named: "error.png")
        }
    }
}

