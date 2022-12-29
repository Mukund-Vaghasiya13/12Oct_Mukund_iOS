//
//  main.swift
//  11) protocol
//
//  Created by Mukund vaghasiya  on 29/12/22.
//

import Foundation

protocol ForVariable{
    var number1:Int{get set}
    var number2:Int{get set}
}

class Calculation:ForVariable{
    var number1: Int = 0
    
    var number2: Int = 0
    func getdata()
    {
        print("Enter Number 1:")
        number1 = Int(readLine()!)!
        
        print("Enter Number 2:")
        number2 = Int(readLine()!)!
    }
    
    func add() ->Int{
        return number1+number2
    }
}

var add = Calculation()
add.getdata()
var sum = add.add()
print("Sum:\(sum)")
