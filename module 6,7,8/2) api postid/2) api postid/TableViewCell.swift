//
//  TableViewCell.swift
//  2) api postid
//
//  Created by Mukund vaghasiya  on 09/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var Post: UILabel!
    
    @IBOutlet weak var Name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
