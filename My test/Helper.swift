//
//  Helper.swift
//  My test
//
//  Created by Muteb Alolayan on 9/13/17.
//  Copyright © 2017 Muteb. All rights reserved.
//

import Foundation

class Helper {

    func main(num1: String, num2: String, tag: Int) -> String{
        
        switch tag {
        case 1:
            return divide(num1: num1, num2: num2)
        case 2:
            return String(Float(num1)! * Float(num2)!)
        case 3:
            return String(Float(num1)! - Float(num2)!)
        case 4:
            return String(Float(num1)! + Float(num2)!)
        default:
            return "0"
        }
    }
    
    
    func divide(num1: String, num2: String)->String
    {
        if(Float(num2) == 0){
            return "Error! cannot divide by zero"
        } else {
            return String(Float(num1)! / Float(num2)!)
        }
    }
}
