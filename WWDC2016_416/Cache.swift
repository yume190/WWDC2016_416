//
//  Cache.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import Foundation

enum Color {case blue,green,gray}
enum Orientation {case left,right}
enum Tail {case none,tail,bubble}
var cache1 = [String:Int]()
// key = "\(color):\(orientation):\(tail)"

struct Attributes:Hashable {
    var color:Color
    var orientation:Orientation
    var tail:Tail
}
var cache2 = [Attributes:Int]()
