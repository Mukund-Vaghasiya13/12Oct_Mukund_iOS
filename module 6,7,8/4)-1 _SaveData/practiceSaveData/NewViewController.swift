//
//  NewViewController.swift
//  practiceSaveData
//
//  Created by Mukund vaghasiya  on 18/01/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    var userdata = [UserData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        userdata = dataHelper.instaceObj.getData()
        // Do any additional setup after loading the view.
    }
    
}
extension NewViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.txtName.text = userdata[indexPath.row].name
        cell.txtCity.text = userdata[indexPath.row].city
        cell.txtMobile.text = userdata[indexPath.row].mobile
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            userdata = dataHelper.instaceObj.deletData(index: indexPath.row)
            mytable.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
