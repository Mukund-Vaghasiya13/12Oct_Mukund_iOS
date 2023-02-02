//
//  ViewController.swift
//  7) image picker
//
//  Created by Mukund vaghasiya  on 03/01/23.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    var img = UIImagePickerController()
    @IBOutlet weak var button1: UIButton!
    var tracker = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        img.delegate = self
    }
    @IBAction func Button1(_ sender: Any) {
        present(img, animated: true)
        tracker = 1
    }
    @IBAction func button2(_ sender: Any) {
        present(img, animated: true)
        tracker = 2
    }
    @IBAction func button3(_ sender: Any) {
        present(img, animated: true)
        tracker = 3
    }
}
extension ViewController:UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if tracker == 1
        {
            image1.image = (info[.originalImage] as! UIImage)
            dismiss(animated: true)
        }
        else if tracker == 2{
            image2.image = (info[.originalImage] as! UIImage)
            dismiss(animated: true)
        }
        else{
            image3.image = (info[.originalImage] as! UIImage)
            dismiss(animated: true)
        }
    }
}
