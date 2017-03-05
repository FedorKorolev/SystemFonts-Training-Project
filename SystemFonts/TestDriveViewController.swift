//
//  TestDriveViewController.swift
//  SystemFonts
//
//  Created by Фёдор Королёв on 05.03.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class TestDriveViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        testDriveLabel.font = UIFont(name: fontName, size: CGFloat(fontSize))
        self.title = fontName
    }
    
    var fontName = String()
    var fontSize = 14 {
        didSet {
            if fontSize > 30 {
                fontSize = 30
            }
            testDriveLabel.font = UIFont(name: fontName, size: CGFloat(fontSize))
            sizeTextField.text? = String(fontSize)
            stepper.value = Double(fontSize)
        }
    }
    
    
    @IBOutlet weak var testDriveLabel: UILabel!
    
    
    @IBOutlet weak var sizeTextField: UITextField!
    
    @IBAction private func sizeTextFieldChanged(_ sender: UITextField) {
        if let sizeText = sender.text,
           let sizeValue = Int(sizeText),
           sizeValue > 8 {
                fontSize = sizeValue
        }
    }
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction private func stepperValueChanged(_ sender: UIStepper) {
        fontSize = Int(sender.value)
        
    }
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
