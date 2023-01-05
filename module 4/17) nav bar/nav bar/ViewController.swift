//
//  ViewController.swift
//  nav bar
//
//  Created by Mukund vaghasiya  on 05/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButton(_ sender: Any) {
        let alert = UIAlertController(title: "Message", message: "Use of nav bar", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
    @IBAction func nextview(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "secVc") as! secondViewController
        navigationController?.pushViewController(nav, animated: true)
    }
    
}

