//
//  ArticleViewModel.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class ArticleViewModel: ArticleViewModelProtocol {
    
    // own model
    let article: Article
    
    var title: Dynamic<String>
    
    var body: Dynamic<String>
    
    var date: Dynamic<String>
    
    var thumbnail: Dynamic<UIImage?>
    
    
    init(_ article: Article) {
        self.article = article
        title = Dynamic(article.title)
        body = Dynamic(article.body)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        date = Dynamic(dateFormatter.string(from: article.date))
        
        thumbnail = Dynamic(nil)
        
        let downloadTask = URLSession.shared
            .downloadTask(with: article.thumbnail) {
                [weak self] location, response, error in
                if let location = location {
                    do {
                        let data = try Data(contentsOf: location)
                        if let image = UIImage(data: data) {
                            DispatchQueue.main.async {
                                self?.thumbnail.value = image
                            }
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                }
        }
        
        downloadTask.resume()
    }

}
