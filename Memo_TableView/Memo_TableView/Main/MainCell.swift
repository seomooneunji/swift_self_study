//
//  MainCellTableViewCell.swift
//  Memo_TableView
//
//  Created by eunji on 2018. 7. 25..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
