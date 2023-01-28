//
//  ViewController.swift
//  13) tab bar
//
//  Created by Mukund vaghasiya  on 28/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentviewcontrol(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "orange") as! orangeViewController
        navigationController?.present(nav, animated: true)
        
    }
    
    @IBAction func alertOnClicl(_ sender: Any) {
        let alert = UIAlertController(title: "Testing...!🤣", message: "present alert ", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}

