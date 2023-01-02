//
//  ViewController.swift
//  cilck on button
//
//  Created by Mukund vaghasiya  on 29/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var Lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnActionOnClick(_ sender: Any) {
        Lable.text = textField.text
    }
    
}

