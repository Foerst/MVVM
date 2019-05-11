//
//  ArticleViewController.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class ArticleViewController: UITableViewController {
    
    private lazy var cell = ArticleCell(style: .default, reuseIdentifier: "ArticleCell")

    var viewModel: ArticleViewModel? {
        didSet {
            guard let viewModel =  self.viewModel else { return }
            viewModel.title.bindAndFire {
                [unowned self] in
                self.cell.titleLabel.text = $0
            }
            
            viewModel.body.bindAndFire {
                [unowned self] in
                self.cell.bodyTextView.text = $0
            }
            
            viewModel.date.bindAndFire {
                [unowned self] in
                self.cell.dateLabel.text = $0
            }
            
            viewModel.thumbnail.bindAndFire {
                [unowned self] in
                self.cell.thumbnailImageView.image = $0
            }
            
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(ArticleCell.self, forCellReuseIdentifier: "ArticleCell")
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 200
    }
    
    deinit {
        print("\(self.classForCoder) \(#function)" )
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        return cell
    }
    

}
