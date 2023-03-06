//
//  TableViewCell.swift
//  practiceSaveData
//
//  Created by Mukund vaghasiya  on 18/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var txtName: UILabel!
    
    @IBOutlet weak var txtMobile: UILabel!
    
    @IBOutlet weak var txtCity: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
