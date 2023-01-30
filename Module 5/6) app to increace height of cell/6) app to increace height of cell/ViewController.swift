//
//  ViewController.swift
//  6) app to increace height of cell
//
//  Created by Mukund vaghasiya  on 26/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    var array = ["Apple","Banana","Gava","Grapes","Orange"]
    @IBOutlet weak var txtField: UITextField!
    var height:CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.delegate = self
        mytable.dataSource = self
        
    }

    @IBAction func btnAction(_ sender: Any) {
        height = CGFloat(integerLiteral: Int(txtField.text!)!)
        mytable.reloadData()
    }
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return height
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celllS = mytable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        celllS.lblLable.text = array[indexPath.row]
        return celllS
    }
  
}
