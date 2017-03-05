//
//  Fonts.swift
//  SystemFonts
//
//  Created by Фёдор Королёв on 05.03.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

struct Fonts {
    let fontFamilyNames: [String] = UIFont.familyNames
    
    func getFontsNames() -> [String] {
        var fontNames = [String]()
        
        for familyName in fontFamilyNames {
            fontNames += UIFont.fontNames(forFamilyName: familyName)
        
        }
    return fontNames
    }
}
