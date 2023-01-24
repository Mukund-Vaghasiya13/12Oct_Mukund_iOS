//
//  ViewController.swift
//  16) activity view controller
//
//  Created by Mukund vaghasiya  on 24/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareData(_ sender: Any) {
        let share = UIActivityViewController(activityItems: [TxtField.text!], applicationActivities: nil)
        present(share, animated: true)
    }
    
}

