//
//  main.swift
//  3) string
//
//  Created by Mukund vaghasiya  on 29/12/22.
//

import Foundation


print("Enter your name:")
var str = readLine()!

print("Enter the character:")
var a = readLine()!

var ok = str.contains(a)
if ok == true{
    print("\(a) is present in \"\(str)\"")
}
else
{
    print("Not present in \"\(str)\"")
}
