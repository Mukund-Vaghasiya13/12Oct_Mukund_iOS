//
//  main.swift
//  delet value fromarr
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arr:[Int] = []
var x = 0

print("Enter the size of array:")
let n = Int(readLine()!)!

for i in 0..<n{
    print("arr[\(i)]:")
    x = Int(readLine()!)!
    arr.append(x)
}
print(arr)

print("Enter the index of array to de deleted:")
var Remove = Int(readLine()!)!

arr.remove(at: Remove)
print(arr)


