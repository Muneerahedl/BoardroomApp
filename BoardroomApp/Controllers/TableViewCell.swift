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
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var discription: UILabel!

    @IBOutlet weak var wifi: UIImageView!
    @IBOutlet weak var availble: UILabel!
    // @IBOutlet weak var avail: UILabel!
    
  //  @IBOutlet weak var wifi: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(name:String,imageName:String,disc:String){
        self.name.text = name
     //   self.imageView?.image = UIImage(data: )
        self.discription.text = disc
    }

}
