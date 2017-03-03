//
//  BucketItemTableViewCell.swift
//  SwipeIt
//
//  Created by Katharine Xie on 2/10/17.
//  Copyright © 2017 Katharine Xie. All rights reserved.
//

import UIKit

class BucketItemTableViewCell: UITableViewCell {
    
    //MARK: properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
