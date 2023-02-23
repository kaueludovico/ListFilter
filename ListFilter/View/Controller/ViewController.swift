//
//  ViewController.swift
//  ListFilter
//
//  Created by Kaue Ludovico on 23/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var customView = TableScreenView()
    var categories: [Categories]?
    var filter: [[String: String]] = []
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateTableView()
        
        customView.categoryTableView.delegate = self
        customView.categoryTableView.dataSource = self
        customView.searchBar.delegate = self
    }
    
    func populateTableView() {
        if let mock = DBResourceMock.shared.getCategories() {
            categories = mock
            if let categories = self.categories {
                for i in categories {
                    self.filter.append([i.title: i.desc])
                }
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return customView.searchBar
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellID, for: indexPath) as! TableViewCell
        
        var cat: [Categories] = []
        self.filter.forEach { filter in
            for (key, value) in filter {
                cat.append(Categories(title: key, desc: value))
            }
        }
        cell.category = cat[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.filter = []
        if let categories = categories {
            for i in categories {
                if i.title.lowercased().contains(searchText.lowercased()) {
                    filter.append([i.title: i.desc])
                } else if searchText.isEmpty {
                    populateTableView()
                }
                customView.categoryTableView.reloadData()
            }
        }
    }
}
