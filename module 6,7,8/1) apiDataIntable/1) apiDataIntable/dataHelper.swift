//
//  dataHelper.swift
//  1) apiDataIntable
//
//  Created by Mukund vaghasiya  on 04/02/23.
//

import Foundation
import UIKit

struct DisplayData:Codable{
  
    var name:Name?
    var flags:FFlags?
    var region:String?
    var subregion:String?
}

struct FFlags:Codable{
    var png:String?
}
struct Name:Codable{
    var common:String?
}


