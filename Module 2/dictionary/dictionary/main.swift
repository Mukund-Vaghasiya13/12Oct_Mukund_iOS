//
//  main.swift
//  dictionary
//
//  Created by Mukund vaghasiya  on 28/11/22.
//

import Foundation

var arr:[Any] = []
var data1:[String:Any] = ["Name":"mukund","roll no":42]
arr.append(data1)
var data2:[String:Any] = ["Name":"hello","roll no":43]
arr.append(data2)

for i in 0..<arr.count{
    print("\(arr[i])")
}



