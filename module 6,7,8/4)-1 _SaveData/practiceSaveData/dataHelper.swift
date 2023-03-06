//
//  dataHelper.swift
//  practiceSaveData
//
//  Created by Mukund vaghasiya  on 17/01/23.
//

import UIKit
import CoreData

class dataHelper: NSObject {
    
    var contex = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    static var instaceObj = dataHelper()
    
    func savedata(object:[String:String]){
        
        let userdata = NSEntityDescription.insertNewObject(forEntityName: "UserData", into: contex) as! UserData
        userdata.name = object["name"]
        userdata.city = object["city"]
        userdata.mobile = object["mobile"]
        
        do{
            try contex.save()
        }
        catch{
            print("data not saved")
        }
        
    }
    func getData() -> [UserData]{
        
        var usd = [UserData]()
        
        let fetchReq = NSFetchRequest<NSManagedObject>(entityName: "UserData")
        do{
            usd = try contex.fetch(fetchReq) as! [UserData]
        }
        catch{
            print("not able to fetch data")
        }
        
        
        return usd
    }
    
    func deletData(index:Int) -> [UserData] {
        
        var usd = getData()
        contex.delete(usd[index])
        usd.remove(at: index)
        
        do{
           try contex.save()
        }
        catch{
            print("Opps delet data error!")
        }
        return usd
    }

}
