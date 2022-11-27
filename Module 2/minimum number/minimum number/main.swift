//
//  main.swift
//  minimum number
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

print("Enter the value of a:")
var a = Int(readLine()!)!

print("Enter the value of b:")
var b = Int(readLine()!)!

print("Enter the value of c:")
var c = Int(readLine()!)!

if a < b && a < c{
    print("\(a) is minimum")
}else if b < a && b < c{
    print("\(b) is minimum")
}else{
    print("\(c) is minimum")
}
