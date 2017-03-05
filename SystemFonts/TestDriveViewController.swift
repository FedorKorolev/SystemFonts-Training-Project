//
//  TestDriveViewController.swift
//  SystemFonts
//
//  Created by Фёдор Королёв on 05.03.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class TestDriveViewController: UIViewController {
    
    @IBOutlet weak var testDriveLabel: UILabel!

    var fontName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private func setup() {
        self.title = fontName
        testDriveLabel.text = "Съешь ещё этих мягких французских булчек, да выпей же чаю"
        testDriveLabel.font = UIFont(name: fontName, size: 14)
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
