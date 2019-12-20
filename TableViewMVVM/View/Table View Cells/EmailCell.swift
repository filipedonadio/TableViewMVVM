//
//  EmailCell.swift
//  TableViewMVVM
//
//  Created by Filipe Donadio on 02/07/19.
//  Copyright © 2019 Filipe Donadio. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem else {
                return
            }
            
            emailLabel?.text = item.email
        }
    }

    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
