//
//  main.swift
//  maxmin number
//
//  Created by Mukund vaghasiya  on 25/11/22.
//

import Foundation

print("Enter the value of a:")
var a = Int(readLine()!)!

print("Enter the value of b:")
var b = Int(readLine()!)!

print("Enter the value of b:")
var c = Int(readLine()!)!

if a > b && a > c{
    print("\(a) is maximum")
}
else if b > a && b > c{
    print("\(b) is maximum")
}
else{
    print("\(c) is maximum")
}

