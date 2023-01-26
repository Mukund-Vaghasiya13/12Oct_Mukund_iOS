//
//  ViewController.swift
//  11) tool bar
//
//  Created by Mukund vaghasiya  on 15/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func greenScreen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "green") as! greenViewController
        navigationController?.pushViewController(nav, animated: true)
        
        
    }
    
    @IBAction func yellowScreen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "yellow") as! yellowViewController
        navigationController?.pushViewController(nav, animated: true)
    }
    
    
    @IBAction func orangeScreen(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(withIdentifier: "orange") as! orangeViewController
        navigationController?.present(nav, animated: true)
        
    }
    
    
    
    @IBAction func blueScreen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "blue") as! blueViewController
        navigationController?.present(nav, animated: true)
    }
}

