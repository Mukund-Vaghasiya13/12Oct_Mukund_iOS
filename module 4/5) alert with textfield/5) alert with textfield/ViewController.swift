//
//  ViewController.swift
//  5) alert with textfield
//
//  Created by Mukund vaghasiya  on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Lable1: UILabel!
    
    @IBOutlet weak var Lable2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnClick(_ sender: Any) {
        let alert = UIAlertController(title: "Text Field", message: "Featch vale from textfield", preferredStyle: .alert)
        alert.addTextField {
            field in
            field.placeholder = "Enter the value"
            field.textAlignment = .center
        }
        alert.addTextField {
            field in
            field.placeholder = "Enter the value"
            field.textAlignment = .center
        }
        let action = UIAlertAction(title: "Cancle", style: .cancel)
        let getvalue = UIAlertAction(title: "Get Value", style: .default,handler: { (Action) in
            self.Lable1.text = alert.textFields![0].text
            self.Lable2.text = alert.textFields![1].text
            
        })
        alert.addAction(action)
        alert.addAction(getvalue)
        present(alert, animated: true)
    }
    
}
