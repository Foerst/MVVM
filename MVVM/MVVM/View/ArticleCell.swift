//
//  ArticleCell.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    lazy var bodyTextView: UITextView = {
        let txtView = UITextView()
        txtView.font = UIFont.systemFont(ofSize: 14)
        txtView.isEditable = false
        
        return txtView
    }()
    
    
    lazy var dateLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = .lightGray
        lb.font = UIFont.systemFont(ofSize: 15)
        return lb
    }()
    
    lazy var thumbnailImageView: UIImageView = {
        let lb = UIImageView()
        return lb
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(bodyTextView)
        contentView.addSubview(dateLabel)
        contentView.addSubview(thumbnailImageView)
        titleLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 20)
        dateLabel.frame = CGRect(x: 0, y: 25, width: 100, height: 15)
        bodyTextView.frame = CGRect(x: 0, y: 40, width: 250, height: 150)
        thumbnailImageView.frame = CGRect(x: 260, y: 55, width: 130, height: 130)
    }

}
