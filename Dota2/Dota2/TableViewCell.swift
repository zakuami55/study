//
//  TableViewCell.swift
//  Dota2
//
//  Created by Linh Nguyen Van on 5/14/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var chamImage: UIImageView!
    @IBOutlet weak var chamNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
