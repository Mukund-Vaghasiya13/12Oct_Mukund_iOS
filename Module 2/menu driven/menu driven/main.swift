//
//  main.swift
//  menu driven
//
//  Created by Mukund vaghasiya  on 26/11/22.
//

import Foundation

var a = 0,b = 0
var choice:String = ""

print("Enter the value of a:")
a = Int(readLine()!)!

print("Enter the value of b:")
b = Int(readLine()!)!

print("Enter the symbols to perform the follwing opretion")

print("+ :Addition")
print("- :Subtraction")
print("* :Multiplication")
print("/ :Division")
print("% :Modulo")

print("Enter the choice:")
choice = readLine()!

switch(choice)
{
case "+": print("sum:\(a+b)")
    
case "-": print("subtraction:\(a-b)")
    
case "*": print("Product:\(a*b)")

case "/": print("Division:\(a/b)")
    
case "%": print("Modulo:\(a%b)")
    
default: print("Invalid 😕")
}


