//
//  ViewController.swift
//  12) hide tab bar
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class ViewController: UIViewController {

    var pass = "7030"
    var username = "test"
    
    @IBOutlet weak var usename: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func login(_ sender: Any) {
        if pass == password.text && username == usename.text{
            let nav = storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
            navigationController?.pushViewController(nav, animated: true)
            
        }
        
        
    }
}

