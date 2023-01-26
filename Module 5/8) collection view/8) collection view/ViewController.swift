//
//  ViewController.swift
//  8) collection view
//
//  Created by Mukund vaghasiya  on 26/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MtCollection: UICollectionView!
    
    var arr = ["earth.jpeg","jupitar.jpeg","mars.jpeg","moon.jpeg","naptune.jpeg","pluto.jpeg","saturn.jpeg","sun.jpeg"]
    var name = ["Earth","Jupitar","Mars","Moon","Neptune","Pluto","Saturn","Sun"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = MtCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        myCell.ImageForCell.image = UIImage(named: arr[indexPath.row])
        myCell.lblLable.text = name[indexPath.row]
        return myCell
    }
    
    
}
