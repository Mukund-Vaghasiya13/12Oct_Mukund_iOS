//
//  main.swift
//  add array element at last
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arr:[Int] = [1,2,3,4,5]

print("Enter the value to be added:")
var element = Int(readLine()!)!

arr.append(element)

print(arr)

