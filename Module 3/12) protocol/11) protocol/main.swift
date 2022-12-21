//
//  main.swift
//  11) protocol
//
//  Created by Mukund vaghasiya  on 21/12/22.
//

import Foundation


@objc protocol Methods{
    func add(number1:Int,number2:Int)
    @objc optional func sub(number1:Int,number2:Int)
}

class calculation: Methods
{
    func add(number1: Int, number2: Int) {
        print("Addition:\(number1 + number2)")
    }
    
    func sub(number1: Int, number2: Int) {
        print("Subtraction:\(number1 - number2)")
    }
}


var cal = calculation()
print("Enter no 1:")
var a = Int(readLine()!)!
print("Enter no 2:")
var b = Int(readLine()!)!
cal.add(number1: a, number2: b)
cal.sub(number1: a, number2: b)
