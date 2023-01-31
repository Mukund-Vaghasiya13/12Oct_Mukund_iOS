//
//  ViewController.swift
//  16) email validation
//
//  Created by Mukund vaghasiya  on 31/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var Phone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func save(_ sender: Any) {
        if email.text! == "" && Phone.text! == ""{
            let alert = UIAlertController(title: "invalid input", message: "enter proper value", preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .destructive)
            alert.addAction(action)
            present(alert, animated: true)
            
        }
        else
        {
            let nav = storyboard?.instantiateViewController(withIdentifier: "sevc") as! secondViewController
            navigationController?.pushViewController(nav, animated: true)
            
        }
    }
    
}
