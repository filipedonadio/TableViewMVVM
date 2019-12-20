//
//  AboutCell.swift
//  TableViewMVVM
//
//  Created by Filipe Donadio on 02/07/19.
//  Copyright © 2019 Filipe Donadio. All rights reserved.
//

import UIKit

class AboutCell: UITableViewCell {

    @IBOutlet weak var aboutLabel: UILabel?
    
    var item: ProfileViewModelItem? {
        didSet {
            guard  let item = item as? ProfileViewModelAboutItem else {
                return
            }
            
            aboutLabel?.text = item.about
        }
    }
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
