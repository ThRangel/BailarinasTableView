//
//  TableViewCell.swift
//  thVanebien
//
//  Created by CEDAM05 on 5/31/19.
//  Copyright © 2019 PX. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var infoBailarina: UILabel!
    @IBOutlet weak var fotoBailarina: UIImageView!
    @IBOutlet weak var nombreBailarina: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
