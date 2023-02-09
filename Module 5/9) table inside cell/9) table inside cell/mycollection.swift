//
//  mycollection.swift
//  9) table inside cell
//
//  Created by Mukund vaghasiya  on 09/02/23.
//

import UIKit

class mycollection: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource{
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let coll = collectionView.dequeueReusableCell(withReuseIdentifier: "coll", for: indexPath) as! CollectionViewCell
        coll.imageView.image = UIImage(named: "saturn.jpeg")
        return coll
    }
    
    

}
