//
//  ArticleViewModelProtocol.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

protocol ArticleViewModelProtocol {
    var title: Dynamic<String> { get }
    var body: Dynamic<String> { get }
    var date: Dynamic<String> { get }
    var thumbnail: Dynamic<UIImage?> { get }
}
