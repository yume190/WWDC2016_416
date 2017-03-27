////
////  TestCallFunction.swift
////  WWDC2016_416
////
////  Created by Yume on 2017/3/3.
////  Copyright © 2017年 Yume. All rights reserved.
////
//
//import XCTest
//
//class TestAllocationAndCall: XCTestCase {
//
//    func testClass() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:ClassDrawable = ClassLine()
//                let _ = drawable.draw()
//            }
//        }
//    }
//    
//    func testFinalClass() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:ClassDrawable = FinalClassPoint()
//                let _ = drawable.draw()
//            }
//        }
//    }
//    
//    func testStruct() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:Line = Line()
//                let _ = drawable.draw()
//            }
//        }
//    }
//    
//    func testSmallStructProtocol() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:Drawable = Point()
//                let _ = drawable.draw()
//            }
//        }
//    }
//    
//    func testBigStructProtocol() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:Drawable = Line()
//                let _ = drawable.draw()
//            }
//        }
//    }
//    
//    func testStructUseGeneric() {
//        self.measure {
//            for _ in 0..<times {
//                let drawable:Line = Line()
//                let _ = drawing(drawable: drawable)
//            }
//        }
//    }
//    
//}
