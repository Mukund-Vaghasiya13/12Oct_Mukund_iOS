//
//  myTableViewCell.swift
//  2) section in table
//
//  Created by Mukund vaghasiya  on 08/01/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBOutlet weak var Txt_lable: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
