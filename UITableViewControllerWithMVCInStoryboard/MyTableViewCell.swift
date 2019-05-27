//
//  TableViewCell.swift
//  UITableViewControllerWithMVCInStoryboard
//
//  Created by Артём Кармазь on 5/27/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    func reload(cell model: Person) {
        nameLabel.text = "Name: " + model.name
        professionLabel.text = "Profession: " + model.profession
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
