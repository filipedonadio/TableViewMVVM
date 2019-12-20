//
//  AttributeCell.swift
//  TableViewMVVM
//
//  Created by Filipe Donadio on 02/07/19.
//  Copyright © 2019 Filipe Donadio. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var valueLabel: UILabel?
    
    var item: Attribute?  {
        didSet {
            titleLabel?.text = item?.key
            valueLabel?.text = item?.value
        }
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
