//
//  ViewController.swift
//  2) login sucessfully
//
//  Created by Mukund vaghasiya  on 30/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    
    
    @IBOutlet weak var textField2: UITextField!
    
    
    @IBOutlet weak var loginbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    @IBAction func loginBtn(_ sender: Any) {
     
        if(textField1.text == "" || textField2.text == ""){
            
            let action = UIAlertController(title: "OOPs😓", message: "Enter login details fully", preferredStyle: .alert)
            let add = UIAlertAction(title: "Ok", style: .default)
            action.addAction(add)
            present(action, animated: true)
            
        }
        else
        {
            
            let action = UIAlertController(title: "Login successfull", message: "Thankyou!", preferredStyle: .alert)
            let add = UIAlertAction(title: "Ok", style: .default)
            action.addAction(add)
            present(action, animated: true)
            
        }
        
    }
    
    
    @IBAction func Forgottenpass(_ sender: Any) {
       
        let action = UIAlertController(title: "Creat New account", message: "Thankyou!", preferredStyle: .alert)
        let add = UIAlertAction(title: "Ok", style: .default)
        action.addAction(add)
        present(action, animated: true)
    
    }
        
        @IBAction func CreatNewAcc(_ sender: Any) {
            let action = UIAlertController(title: "Creat New account", message: "Thankyou!", preferredStyle: .alert)
            let add = UIAlertAction(title: "Ok", style: .default)
            action.addAction(add)
            present(action, animated: true)
        }
       
    
    
}
    

