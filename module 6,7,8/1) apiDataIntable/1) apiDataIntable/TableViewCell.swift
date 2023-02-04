//
//  TableViewCell.swift
//  1) apiDataIntable
//
//  Created by Mukund vaghasiya  on 04/02/23.
//

import UIKit
import WebKit
class TableViewCell: UITableViewCell {

    @IBOutlet weak var web: WKWebView!
    
    @IBOutlet weak var contNmae: UILabel!
    
    @IBOutlet weak var region: UILabel!
    
    @IBOutlet weak var Capital: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
