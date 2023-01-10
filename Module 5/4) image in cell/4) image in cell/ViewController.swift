//
//  ViewController.swift
//  4) image in cell
//
//  Created by Mukund vaghasiya  on 10/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Mytable: UITableView!
    var arr = ["df0.jpeg","df1.jpeg","df2.jpeg","df3.jpeg","df4.jpeg"]
    var name = ["Gum fruit","Flower fruit","UO UO fruit","Flame fruit","OP OP"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var op = Mytable.dequeueReusableCell(withIdentifier: "mycell") as! TableViewCell
        op.MyImage.image = UIImage(named: arr[indexPath.row])
        op.MyLable.text = name[indexPath.row]
        return op
    }
    
}

