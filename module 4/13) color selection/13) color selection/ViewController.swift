//
//  ViewController.swift
//  13) color selection
//
//  Created by Mukund vaghasiya  on 04/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var picker: UIPickerView!
    var arr:[String] = ["red","orange","blue","yellow","purple","cyan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0{
            view.backgroundColor = .red
        }else if row == 1{
            view.backgroundColor = .orange
        }else if row == 2{
            view.backgroundColor = .blue
        }else if row == 3{
            view.backgroundColor = .yellow
        }else if row == 4{
            view.backgroundColor = .purple
        }else{
            view.backgroundColor = .cyan
        }
    }
}

