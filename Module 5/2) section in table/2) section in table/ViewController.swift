//
//  ViewController.swift
//  2) section in table
//
//  Created by Mukund vaghasiya  on 08/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableview: UITableView!
    var arr = ["India","china","USA","Canada","newziland","Brazil","Argentina"]
    var newarr = ["japan","russia","europe","pakistan","nepal","taiwan","south korea"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "      "
        }
        return "      "
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0{
            return "      "
        }
        return "      "
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return arr.count
        }
        return newarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mycellfortable = tableview.dequeueReusableCell(withIdentifier: "mycell") as! myTableViewCell
        if indexPath.section == 0
        {
            mycellfortable.Txt_lable.text = arr[indexPath.row]
        }
        else{
            mycellfortable.Txt_lable.text = newarr[indexPath.row]
        }
        return mycellfortable
    }
    
    
}
