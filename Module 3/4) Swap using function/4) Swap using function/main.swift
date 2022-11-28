//
//  main.swift
//  4) Swap using function
//
//  Created by Mukund vaghasiya  on 28/11/22
//

import Foundation

func swap(no1:Int,no2:Int){
    var a = no1 ,b = no2,temp:Int
    temp = a
    a = b
    b = temp
    
    print("Value of a is \(a) & b is \(b)")
   
}

var a:Int,b:Int,temp:Int

print("Enter the value of a:")
a = Int(readLine()!)!

print("Enter the value of b:")
b = Int(readLine()!)!

swap(no1: a, no2: b)


