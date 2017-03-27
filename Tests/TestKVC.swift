//
//  TestKVC.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/27.
//  Copyright © 2017年 Yume. All rights reserved.
//

import XCTest
import Foundation

class KVC:NSObject {
    let x:Int = 0
    let y:Int = 0
    let z:Int = 0
    
    func go() -> Int {
        return x + y + z
    }
}
class TestKVC: XCTestCase {
    
    lazy var kvsc:[KVC] = {
        var target:[KVC] = []
        for _ in 0..<2*times {
            target.append(KVC())
        }
        return target
    }()
    
    
    func testCall() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.go()
            }
        }
    }
    
    func testKVCCallToInt() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.value(forKey: "go") as? Int
            }
        }
    }
    
    func testKVCCall() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.value(forKey: "go")
            }
        }
    }
    
    // var
    func testVar() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.x
            }
        }
    }
    
    func testKVCVarToInt() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.value(forKey: "x") as? Int
            }
        }
    }
    
    func testKVCVar() {
        self.measure {
            for kvc in self.kvsc {
                let _ = kvc.value(forKey: "x")
            }
        }
    }
}
