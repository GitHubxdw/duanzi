//
//  ListCell.swift
//  DuanZi
//
//  Created by xdw on 15/10/20.
//  Copyright © 2015年 xdw. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

   
    @IBOutlet weak var listLab: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
