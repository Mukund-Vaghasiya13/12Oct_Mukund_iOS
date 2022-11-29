//
//  main.swift
//  7) Bankactivity
//
//  Created by Mukund vaghasiya  on 29/11/22.
//

import Foundation

class bank
{
    var balance:Int = 0
    func enterBalance()
    {
        
        print("Enter the balance:")
        balance = Int(readLine()!)!
    }
    func Withdrawn()
    {
        print("Enter the Withdrawn amount:")
        let amount = Int(readLine()!)!
        balance = balance - amount
        
        print("Total balance is : \(balance)")
        
    }
    func Deposite()
    {
        print("Enter the Deposite amount:")
        let amount = Int(readLine()!)!
        balance = balance + amount
        
        print("Total balance is : \(balance)")
        
    }
}

var Ob = bank()
Ob.enterBalance()
print("Enter 'w' : to withdraw & 'd' : to deposit")
var ch = readLine()!
if ch == "w"
{
    Ob.Withdrawn()
}
else if ch == "d"
{
    Ob.Deposite()
}
else
{
    print("Invalide")
}


