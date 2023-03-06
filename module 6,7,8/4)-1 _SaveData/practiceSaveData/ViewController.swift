//
//  ViewController.swift
//  practiceSaveData
//
//  Created by Mukund vaghasiya  on 17/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtCity:UITextField!
    @IBOutlet weak var txtMobile: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.cornerRadius = 15
        
        
    }

    @IBAction func saveData(_ sender: UIButton) {
        let dic = ["name":txtName.text!,"city":txtCity.text!,"mobile":txtMobile.text!]
        dataHelper.instaceObj.savedata(object: dic)
        
        txtName.text = ""
        txtCity.text = ""
        txtMobile.text = ""
        
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        let navigate = self.storyboard?.instantiateViewController(withIdentifier: "newVC") as! NewViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
