//
//  UserData+CoreDataProperties.swift
//  practiceSaveData
//
//  Created by Mukund vaghasiya  on 17/01/23.
//
//

import Foundation
import CoreData


extension UserData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserData> {
        return NSFetchRequest<UserData>(entityName: "UserData")
    }

    @NSManaged public var name: String?
    @NSManaged public var mobile: String?
    @NSManaged public var city: String?

}

extension UserData : Identifiable {

}
