//
//  Dynamic.swift
//  MVVM
//
//  Created by CXY on 2019/5/11.
//  Copyright © 2019 cxy. All rights reserved.
//

import UIKit

class Dynamic<T> {
    typealias Listener = (T) -> Void
    
    private var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
    }
    
    func bindAndFire(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
