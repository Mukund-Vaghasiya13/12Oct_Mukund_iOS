//
//  CoustomTableViewCell.swift
//  3) accessory in table
//
//  Created by Mukund vaghasiya  on 08/01/23.
//

import UIKit

class CoustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
