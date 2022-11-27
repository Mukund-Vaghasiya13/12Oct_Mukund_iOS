//
//  main.swift
//  printarr using loop
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arr = Array<Int>()
var x = 0
print("Enter the size of array :")
var n = Int(readLine()!)!

for i in 0..<n
{
    print("arr[\(i)]:")
    x = Int(readLine()!)!
    arr.append(x)
}

for i in 0..<n
{
    print("\(i) index : \(arr[i])")
}

