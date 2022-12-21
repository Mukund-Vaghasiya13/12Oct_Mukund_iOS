//
//  main.swift
//  structure
//
//  Created by Mukund vaghasiya  on 20/12/22.
//

import Foundation

struct bankDetails
{
    var accnno:Int = 0
    var balance:Int = 0
    var name:String = ""
}

var a = bankDetails()
var bnk:[bankDetails] = []
for _ in 0...9
{
    print("Enter account no:")
    a.accnno = Int(readLine()!)!
    print("Enter total balance:")
    a.balance = Int(readLine()!)!
    print("Enter name:")
    a.name = readLine()!
    bnk.append(a)
}
for i in 0...9
{
    print("\n")
    print("Acccount no :\(bnk[i].accnno)")
    print("Balance : \(bnk[i].balance)")
    print("Name:\(bnk[i].name)")
    print("\n")
}

