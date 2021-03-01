//
//  TodoTableViewCell.swift
//  MonTodo
//
//  Created by Sallivan James on 2021/02/28.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    @IBOutlet var questLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var monImageView: UIImageView!
    @IBOutlet var lifeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.monImageView.frame = CGRect(x: 20, y: 0, width: 60, height: 60)
        self.questLabel.frame = CGRect(x: 80, y: 5, width: 140, height: 30)
        self.dateLabel.frame = CGRect(x: 80, y:30, width: 140, height: 20)
        self.lifeLabel.frame = CGRect(x: 80, y: 50, width: 140, height: 20)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func fight(){
    
    }
    
}
