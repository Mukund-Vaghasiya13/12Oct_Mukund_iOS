//
//  main.swift
//  6) udf math opretion
//
//  Created by Mukund vaghasiya  on 28/11/22.
//

import Foundation
func addition(a:Int ,b:Int) -> Int{
    return a+b
}
func subtraction(a:Int ,b:Int) -> Int{
    return a-b
}
func multiply(a:Int,b:Int) -> Int{
    return a*b
}
func Division(a:Float ,b:Float) -> Float{
    return a/b
}
func modulo(a:Int ,b:Int) -> Int{
    return a%b
}


print("Enter the value of a:")
var a = Int(readLine()!)!

print("Enter the value of b:")
var b = Int(readLine()!)!

print("'+' : additin , '-' : subtraction, '*' : multliplication , '/' : division, '%' : Reminder")
var choice = readLine()!

switch (choice){
    case "+":print("sum is: \(addition(a: a, b: b))")
        break
    case "-":print("subtraction is: \(subtraction(a: a, b: b))")
        break
    case "*":print("product is: \(multiply(a: a, b: b))")
        break
    case "/":print("Division is: \(Division(a: Float(a), b: Float(b)))")
        break
    case "%":print("Reminser is: \(modulo(a: a, b: b))")
        break
    default:print("Invalide!")

}


