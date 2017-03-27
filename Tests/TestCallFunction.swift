//
//  TestCallFunction.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import XCTest

class TestCallFunction: XCTestCase {
    lazy var classTarget:[ClassDrawable] = {
        var target:[ClassDrawable] = []
        for _ in 0..<times {
            target.append(ClassLine())
        }
        for _ in 0..<times {
            target.append(ClassPoint())
        }
        return target
    }()
    lazy var finalClassTarget:[ClassDrawable] = {
        var target:[ClassDrawable] = []
        for _ in 0..<2*times {
            target.append(FinalClassPoint())
        }
        return target
    }()
    lazy var structTarget:[Line] = [Line](repeating: Line(), count: 2*times)
    lazy var smallStructTarget:[Drawable] = [Drawable](repeating: Point(), count: 2*times)
    lazy var bigStructTarget:[Drawable] = [Drawable](repeating: Line(), count: 2*times)
    
    override func tearDown() {
        classTarget = []
        structTarget = []
        smallStructTarget = []
        bigStructTarget = []
        super.tearDown()
    }
    
    func testClass() {
        self.measure {
            for drawable in self.classTarget {
                let _ = drawable.draw()
            }
        }
    }
    
    func testFinalClass() {
        self.measure {
            for drawable in self.finalClassTarget {
                let _ = drawable.draw()
            }
        }
    }
    
    func testStruct() {
        self.measure {
            for drawable in self.structTarget {
                let _ = drawable.draw()
            }
        }
    }
    
    func testSmallStructProtocol() {
        self.measure {
            for drawable in self.smallStructTarget {
                let _ = drawable.draw()
            }
        }
    }
    
    func testBigStructProtocol() {
        self.measure {
            for drawable in self.bigStructTarget {
                let _ = drawable.draw()
            }
        }
    }
    
    func testStructUseGeneric() {
        self.measure {
            for drawable in self.structTarget {
                let _ = drawing(drawable: drawable)
            }
        }
    }
    
}
