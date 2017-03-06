//
//  noteTableViewCell.swift
//  My To Dos
//
//  Created by Brijesh Patel on 2017-03-05.
//  Copyright © 2017 Brijesh Patel. All rights reserved.
//

import UIKit

class noteTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var titleLabelofCell: UILabel!
    @IBOutlet weak var dueLabelofCell: UILabel!
    @IBOutlet weak var createdLabelofCell: UILabel!
    @IBOutlet weak var priorityBarView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
