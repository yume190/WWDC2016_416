//
//  ProtocolDrawable.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import Foundation

protocol Drawable {
    func draw() -> Int
}

struct Line:Drawable {
    let x1:Int = 0
    let x2:Int = 0
    let y1:Int = 0
    let y2:Int = 0
    func draw() -> Int {
        return x1 + y1 + x2 + y2
    }
}

class Line2Data {
    var x1:Int = 0
    var x2:Int = 0
    var y1:Int = 0
    var y2:Int = 0
    
    init(){}
    init(_ data:Line2Data) {
        self.x1 = data.x1
        self.x2 = data.x2
        self.y1 = data.y1
        self.y2 = data.y2
    }
}
struct Line2:Drawable {
    var storage:Line2Data
    mutating func move() {
        if !isKnownUniquelyReferenced(&storage) {
            self.storage = Line2Data(storage)
        }
    }
    func draw() -> Int  {
        return storage.x1 + storage.y1 + storage.x2 + storage.y2
    }
}

struct Point:Drawable {
    let x1:Int = 0
    let y1:Int = 0
    func draw() -> Int  {
        return x1 + y1
    }
}

func drawing<T:Drawable>(drawable:T) -> Int {
    return drawable.draw()
}

