//
//  main.swift
//  1) Modifie
//
//  Created by Mukund vaghasiya  on 29/12/22.
//

import Foundation

var arr:[Int] = [1,2,3,4,5,6]
var a:Int = 0
var p:Int = 0
 print("Enter:\n r) remove all element from array \n a) to append vale in array \n i) to insert value in array")
var choice = readLine()!
switch choice{
    
case "r":arr.removeAll()
         print(arr)
         break
case "a":print("Enter the value to be append:")
         a = Int(readLine()!)!
         arr.append(a)
         print(arr)
         break
case "i":print("Enter the value:")
         a = Int(readLine()!)!
         print("Enter the pposition of index")
         p = Int(readLine()!)!
         arr.insert(a, at: p)
         print(arr)
         break
default:print("Invalid")
}
