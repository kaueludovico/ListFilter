//
//  TableScreenView.swift
//  ListFilter
//
//  Created by Kaue Ludovico on 23/02/23.
//

import UIKit

class TableScreenView: BaseView {
    let cellID = "cellID"
    
    lazy var categoryTableView: UITableView = {
        let uiTableView = UITableView()
        uiTableView.register(TableViewCell.self, forCellReuseIdentifier: cellID)
        uiTableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: uiTableView.bounds.width, right: 16)
        uiTableView.backgroundColor = .white
        return uiTableView
    }()
    
    lazy var searchBar: UISearchBar = {
        let uiSearchBar = UISearchBar()
        uiSearchBar.searchBarStyle = .minimal
        uiSearchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Buscar", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        uiSearchBar.searchTextField.backgroundColor = .gray
        uiSearchBar.searchTextField.leftView?.tintColor = .black
        uiSearchBar.searchTextField.font = .systemFont(ofSize: 14)
        uiSearchBar.searchTextField.layer.cornerRadius = 7
        uiSearchBar.searchTextField.layer.masksToBounds = true
        uiSearchBar.returnKeyType = UIReturnKeyType.done
        uiSearchBar.enablesReturnKeyAutomatically = false
        uiSearchBar.autocapitalizationType = .none
        return uiSearchBar
    }()
    
    override func addSubviews() {
        addSubview(categoryTableView)
    }
    
    override func setConstraints() {
        categoryTableView.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: frame.size.width, height: frame.size.height))
    }
}
