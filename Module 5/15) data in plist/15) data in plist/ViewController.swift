//
//  ViewController.swift
//  15) data in plist
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var things:[String] = []
    
    @IBOutlet weak var Oktable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "myP list", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!)
        
        things = dic?.object(forKey:"things") as! [String]
        
        Oktable.delegate = self
        Oktable.dataSource = self
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return things.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Oktable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        TableViewCell
        cell.keyLable.text = things[indexPath.row]
        return cell
    
    }
        
}

