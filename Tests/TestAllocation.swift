//
//  Tests.swift
//  Tests
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import XCTest

class TestAllocation: XCTestCase {
    
    func testClass() {
        self.measure {
            var target:[ClassDrawable] = []
            for _ in 0..<times {
                target.append(ClassLine())
            }
            for _ in 0..<times {
                target.append(ClassPoint())
            }
        }
    }
    
    func testFinalClass() {
        self.measure {
            var target:[ClassDrawable] = []
            for _ in 0..<2*times {
                target.append(FinalClassPoint())
            }
        }
    }
        func testStruct() {
        self.measure {
            var target:[Line] = []
            for _ in 0..<2*times {
                target.append(Line())
            }
        }
    }
    
    func testBigStructProtocol() {
        self.measure {
            var target:[Drawable] = []
            for _ in 0..<2*times {
                target.append(Line())
            }
        }
    }
    
    func testSmallStructProtocol() {
        self.measure {
            var target:[Drawable] = []
            for _ in 0..<2*times {
                target.append(Point())
            }
        }
    }
}
