//
//  main.swift
//  optional
//
//  Created by Mukund vaghasiya  on 26/11/22.
//

import Foundation

var Number:Int?

print("Enter the value:")
Number = Int(readLine()!)

if Number != nil{
    print("It has value \(Number!)")
}else{
    print("It has no value")
}




