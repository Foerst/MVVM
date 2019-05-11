//
//  RootViewController.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    private lazy var article = Article(title: "日本发生大地震", body: "当地时间2011年3月11日14:46（北京时间13:46）发生在日本东北部太平洋海域（日本称此处为“三陆冲”）的强烈地震。此次地震的矩震级Mw达到9.0级（美国地质调查局数据为Mw9.1），为历史第五大地震【仅次于1960年智利瓦尔迪维亚（9.5级）、1964年美国阿拉斯加州威廉王子湾（9.2级）、1957年美国阿拉斯加州安德烈亚诺夫群岛（9.1级）、2004年印度尼西亚苏门答腊岛（9.3级）】。震中位于日本宫城县以东太平洋海域，距仙台约130km，震源深度20公里。此次地震引发的巨大海啸对日本东北部岩手县、宫城县、福岛县等地造成毁灭性破坏，并引发福岛第一核电站核泄漏。", date: Date(timeIntervalSince1970: 41*365*33600), thumbnail: URL(string: "https://imgsrc.baidu.com/baike/pic/item/fc1f4134970a304eaa0b8c8ddfc8a786c9175c9f.jpg")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func push() {
        let articleVC = ArticleViewController()
        articleVC.viewModel = ArticleViewModel(article)
        navigationController?.pushViewController(articleVC, animated: true)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10) {
            self.article.body = "Changed Body!"
            articleVC.viewModel = ArticleViewModel(self.article)
        }
    }
    


}
