//
//  Fonts.swift
//  SystemFonts
//
//  Created by Фёдор Королёв on 05.03.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

struct Fonts {
    let families: [String] = UIFont.familyNames
    
    var names: [[String]] {
        
        var names = [[String]]()
        
        for name in families {
            names.append(UIFont.fontNames(forFamilyName: name))
        }
    return names
    }
}
