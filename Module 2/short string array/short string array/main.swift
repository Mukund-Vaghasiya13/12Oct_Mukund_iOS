//
//  main.swift
//  short string array
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var strarr = Array<String>()
var x:String = ""

print("Enter the size of array:")
var n = Int(readLine()!)!

for i in 0..<n{
    print("Enter arr[\(i)]:")
    x = readLine()!
    strarr.append(x)
}
 var stringshort = strarr.sorted()
print(stringshort)


