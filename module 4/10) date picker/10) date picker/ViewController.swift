//
//  ViewController.swift
//  10) date picker
//
//  Created by Mukund vaghasiya  on 04/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datecontroler:UIDatePicker!
    @IBOutlet weak var lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func datePickerFunction(_ sender: Any) {
        let getdate = datecontroler.date
        let setdate = DateFormatter()
        setdate.dateStyle = .short
        lable.text = setdate.string(from: getdate)
        print(getdate)
        
    }
    
}

