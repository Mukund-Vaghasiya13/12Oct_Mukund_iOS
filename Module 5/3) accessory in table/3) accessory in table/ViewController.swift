//
//  ViewController.swift
//  3) accessory in table
//
//  Created by Mukund vaghasiya  on 08/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    let arr = ["Aplle","mango","orange","pineple","grapes","banana"]
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.dataSource = self
        mytable.delegate = self
        
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eachCell = mytable.dequeueReusableCell(withIdentifier: "mycell") as! CoustomTableViewCell
        eachCell.lable.text = arr[indexPath.row]
        eachCell.accessoryType = .detailButton
        return eachCell
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alert = UIAlertController(title: "accessory testing", message: "action on accessory", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }

}
