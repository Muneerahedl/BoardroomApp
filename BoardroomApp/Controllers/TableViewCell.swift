//
//  TableViewCell.swift
//  BoardroomApp
//
//  Created by rahaf on 29/08/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage
    : UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
