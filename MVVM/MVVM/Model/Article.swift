//
//  Article.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class Article {
    var title = ""
    var body = ""
    var date = Date(timeIntervalSince1970: 0)
    var thumbnail = URL(string: "https://www.baidu.com")!
    
    init(title: String, body: String, date: Date, thumbnail: URL) {
        self.title = title
        self.body = body
        self.date = date
        self.thumbnail = thumbnail
    }
}
