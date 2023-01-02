//
//  ViewController.swift
//  4) Hide btn
//
//  Created by Mukund vaghasiya  on 02/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hideLable(_ sender: Any) {
        Lable.isHidden = true
    }
    
    
    @IBAction func showLable(_ sender: Any) {
        Lable.isHidden = false
    }
    
}

