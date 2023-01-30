//
//  ViewController.swift
//  10) nav bar
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func binbutton(_ sender: Any) {
        let alert = UIAlertController(title: "button click", message: "alert action", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(action)
        present(alert, animated: true)
        
    }
    
    @IBAction func buttonsec(_ sender: Any) {
        let alert = UIAlertController(title: "button click", message: "alert action", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
}

