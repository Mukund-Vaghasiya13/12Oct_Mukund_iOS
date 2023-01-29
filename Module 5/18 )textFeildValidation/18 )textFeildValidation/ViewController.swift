//
//  ViewController.swift
//  18 )textFeildValidation
//
//  Created by Mukund vaghasiya  on 28/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var PhoneNo: UITextField!
    @IBOutlet weak var EmailData: UITextField!
    @IBOutlet weak var City: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func validation()
    {
        if FirstName.text == "" || LastName.text == "" || PhoneNo.text == "" || EmailData.text == "" || City.text == ""{
            if FirstName.text == ""{
                FirstName.layer.borderColor = UIColor.red.cgColor
                FirstName.layer.borderWidth = 2.0
            }else{
                FirstName.layer.borderColor = .none
            }
            if LastName.text == ""{
                LastName.layer.borderColor = UIColor.red.cgColor
                LastName.layer.borderWidth = 2.0
            }
            else{
                LastName.layer.borderColor = .none
            }
            if PhoneNo.text == ""{
                PhoneNo.layer.borderWidth = 2.0
                PhoneNo.layer.borderColor = UIColor.red.cgColor
            }
            else{
                PhoneNo.layer.borderColor = .none
            }
             if EmailData.text == ""{
                EmailData.layer.borderColor = UIColor.red.cgColor
                EmailData.layer.borderWidth = 2.0
            }
            else{
                EmailData.layer.borderColor = .none
            }
            if City.text == ""{
                City.layer.borderColor = UIColor.red.cgColor
                City.layer.borderWidth = 2.0
            }
            else{
                City.layer.borderColor = .none
            }
            let alert = UIAlertController(title: "Input Missing", message: "Enter data in text feild", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
        }
        else{
            let nav = storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
            navigationController?.pushViewController(nav, animated: true)
            
        }
    }
    
    @IBAction func Submit(_ sender: Any) {
        validation()
    }
    
}

