//
//  main.swift
//  addnew value at specfice position
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

var arr:[Int] = [1,2,3,4,5]
var position:Int = 0

print("Enter the New element of array:")
var newelement = Int(readLine()!)!

print("Enter the position:")
position = Int(readLine()!)!

arr.insert(newelement, at: position)

print(arr)






