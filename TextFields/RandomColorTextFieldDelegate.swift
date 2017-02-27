//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Marwan Alani on 2017-02-26.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    // Array of colors
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .purple, .brown]

    // Function to return a random color
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(self.colors.count))
        return self.colors[randomIndex]
    }
    
    // Change the color of the text field
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}
