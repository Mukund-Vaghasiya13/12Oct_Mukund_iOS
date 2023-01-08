//
//  ViewController.swift
//  tableview
//
//  Created by Mukund vaghasiya  on 07/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var table: UITableView!
    var country = ["USA","India","canada","Russia","china","Newziland","Europe"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ok = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        ok.txt_lable.text = country[indexPath.row]
        return ok
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    

    
}

