//
//  TableViewCell.swift
//  15) data in plist
//
//  Created by Mukund vaghasiya  on 30/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var keyLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
