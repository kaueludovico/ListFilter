//
//  TableViewCell.swift
//  ListFilter
//
//  Created by Kaue Ludovico on 23/02/23.
//

import UIKit

class TableViewCell: BaseViewCell {
    
    var category: Categories? {
        didSet {
            categoryLabel.text = category?.title
            descriptionLabel.text = category?.desc
        }
    }
    
    lazy var descriptionLabel: UILabel = {
        let uiLabel = UILabel()
        uiLabel.textColor = .gray
        uiLabel.font = UIFont.systemFont(ofSize: 11)
        uiLabel.numberOfLines = 0
        return uiLabel
    }()
    
    lazy var categoryLabel: UILabel = {
        let uiLabel = UILabel()
        uiLabel.textColor = .black
        uiLabel.font = UIFont.systemFont(ofSize: 16)
        return uiLabel
    }()
    
    override func addSubviews() {
        addSubview(categoryLabel)
        addSubview(descriptionLabel)
    }
    
    override func setConstraints() {
        categoryLabel.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 16, bottom: 0, right: 0),
            size: .init(width: 200, height: 20))
        
        descriptionLabel.anchor(
            top: categoryLabel.bottomAnchor,
            leading: categoryLabel.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: nil,
            padding: .init(top: 2, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 20))
    }
}
