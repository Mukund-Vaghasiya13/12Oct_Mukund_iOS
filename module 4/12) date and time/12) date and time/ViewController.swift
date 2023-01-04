//
//  ViewController.swift
//  12) date and time
//
//  Created by Mukund vaghasiya  on 04/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseTimeAndDate(_ sender: UIDatePicker) {
        let getDate = sender.date
        let setFormate = DateFormatter()
        setFormate.dateFormat = "dd/MM/yyyy hh:mm:ss"
        Lable.text = setFormate.string(from: getDate)
        
    }
    
}

