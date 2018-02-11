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
    
    func remove(person:String) -> Bool {
        for name in Array(favoriteFlavorsOfIceCream.keys) {
            if person == name {
                favoriteFlavorsOfIceCream.removeValue(forKey: name)
                return true
            }
        }
            return false
    }
    
   
    // 7.
    
    func numberOfAttendees() -> Int {
        let num = favoriteFlavorsOfIceCream.count
        return num
    }
    
 
    // 8.
    func add(person:String, withFlavor flavor:String) -> Bool {
        for (name,flavorIce) in favoriteFlavorsOfIceCream {
            if person == name {
                return false
            }
        }
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }
    
    
    // 9.
    
    func attendeeList() -> String {
        var listAttendee = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            let flavor = favoriteFlavorsOfIceCream[name]
            listAttendee += (name + " likes " + flavor! + "\n")
        }
        listAttendee.removeLast()
        
        return listAttendee
    }
    
    
    
    
    
    

}



















