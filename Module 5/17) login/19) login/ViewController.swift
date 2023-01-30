//
//  ViewController.swift
//  19) login
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class ViewController: UIViewController {
    var data:[String] = []
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "pList", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!)
        data = dic?.object(forKey: "sinup") as! [String]
        if UserDefaults.standard.bool(forKey: "ok"){
            let nav = storyboard?.instantiateViewController(withIdentifier: "home") as! HomeViewController
            navigationController?.pushViewController(nav, animated: true)
        }
    }
    
    
    @IBAction func login(_ sender: Any) {
        if username.text == data[0] && password.text == data[1]{
            UserDefaults.standard.set(true, forKey: "ok")
            let nav = storyboard?.instantiateViewController(withIdentifier: "home") as! HomeViewController
            navigationController?.pushViewController(nav, animated: true)
        } else{
            let alert = UIAlertController(title: "login fail", message: "inputs are invalid", preferredStyle: .alert)
            let act = UIAlertAction(title: "OK", style: .default)
            alert.addAction(act)
            present(alert, animated: true)
        }
        
        
    }
    
}

