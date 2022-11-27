//
//  main.swift
//  string is equal or not
//
//  Created by Mukund vaghasiya  on 27/11/22.
//

import Foundation

print("Enter the string 1 :")
var str1 = readLine()!

print("Enter the string 2 :")
var str2 = readLine()!

if str1 == str2{
    str1 = str1+" "+str2
    print("Combine string:\(str1)")
}else{
    print("Not equal...!")
}

