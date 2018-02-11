//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream:[String:String] = ["Joe": "Peanut Butter and Chocolate","Tim": "Natural Vanilla","Sophie": "Mexican Chocolate","Deniz": "Natural Vanilla","Tom": "Mexican Chocolate","Jim": "Natural Vanilla","Susan": "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var matchedNames = [String]()
        for (name,flavorIce) in favoriteFlavorsOfIceCream {
            if flavor == flavorIce {
                matchedNames.append(name)
            }
        }
        return matchedNames
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor:String) -> Int {
        var nameCount = 0
        for (_,flavorIce) in favoriteFlavorsOfIceCream {
            if flavorIce == flavor {
                nameCount+=1
            }
        }
        return nameCount
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person:String) -> String? {
        var likeFlavor:String?
        likeFlavor = favoriteFlavorsOfIceCream[person]
        return likeFlavor
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor:String, forPerson person:String) -> Bool {
        for (name,flavorIce) in favoriteFlavorsOfIceCream {
            if name == person {
                favoriteFlavorsOfIceCream[person] = flavor
                return true
            }
        }
        return false
    }
    

    
    
    // 6.
    
    
    
    
    
    
    
    
    // 7.
    
    
    
    
    
    
    
    
    // 8.
    
    
    
    
    
    
    
    
    
    // 9.
    
    
    
    
    
    
    
    

}
