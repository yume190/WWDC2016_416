//
//  ClassDrawable.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import Foundation

class ClassDrawable {
    func draw() -> Int {
        return 0
    }
}

class ClassLine:ClassDrawable {
    let x1:Int = 0
    let x2:Int = 0
    let y1:Int = 0
    let y2:Int = 0
    override func draw() -> Int {
        return x1 + y1 + x2 + y2
    }
}

class ClassPoint:ClassDrawable {
    let x1:Int = 0
    let y1:Int = 0
    override func draw() -> Int {
        return x1 + y1
    }
}

final class FinalClassPoint:ClassDrawable {
    let x1:Int = 0
    let y1:Int = 0
    final override func draw() -> Int {
        return x1 + y1
    }
}
