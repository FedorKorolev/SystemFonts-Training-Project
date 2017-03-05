//: Playground - noun: a place where people can play

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
let fonts = Fonts()

fonts.families
fonts.names
