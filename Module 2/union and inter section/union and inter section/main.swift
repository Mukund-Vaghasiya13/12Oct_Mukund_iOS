//
//  main.swift
//  union and inter section
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arrA:[Int] = []
var arrB:[Int] = []
var val = 0

print("Enter the size of arrA:")
var n = Int(readLine()!)!

for _ in 0..<n
{
   print("Enter the value of arrA:")
    val = Int(readLine()!)!
    
    arrA.append(val)
}
for _ in 0..<n
{
   print("Enter the value of arrB:")
    val = Int(readLine()!)!
    
    arrB.append(val)
}
var setA = Set(arrA)
var setB = Set(arrB)
var ans  = Set<Int>()

print("Enter the 'U' for union & 'I' for intersection")
var choice = readLine()!

if choice == "U"{
    ans = setA.union(setB)
    print(ans)
}
else if choice == "I"
{
     ans = setA.intersection(setB)
    print(ans)
}else {
    print("Invalid 😓")
    
}




