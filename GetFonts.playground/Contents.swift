//: Playground - noun: a place where people can play

import UIKit

struct Fonts {
    private let fontFamilyNames = UIFont.familyNames
    
    func getFontsNames() -> [String] {
        var fontNames = [String]()
        
        for familyName in fontFamilyNames {
            fontNames += UIFont.fontNames(forFamilyName: familyName)
        }
        
        return fontNames
    }
}