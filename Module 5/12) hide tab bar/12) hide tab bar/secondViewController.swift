//
//  secondViewController.swift
//  12) hide tab bar
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class secondViewController: UIViewController {

    
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var favorit: UITextField!
    
    @IBOutlet weak var city: UITextField!
    
    
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func save(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "tab") as! UITabBarController
        navigationController?.pushViewController(nav, animated: false)
        city.text = ""
        phone.text = ""
        email.text = ""
        favorit.text = ""
    }
    
    
  

}
