//
//  main.swift
//  taking value in array
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arr:[String] = []
var nm:String = ""

print("Enter the size of array:")
var n = Int(readLine()!)!

for _ in 0..<n
{
   
    print("Enter the name:")
    nm = readLine()!
    
    arr.append(nm)
    
}

print(arr)





