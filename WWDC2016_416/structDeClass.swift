//
//  structDeClass.swift
//  WWDC2016_416
//
//  Created by Yume on 2017/3/3.
//  Copyright © 2017年 Yume. All rights reserved.
//

import Foundation

struct Attachment {
    let fileURL:URL
    let uuid:String
    let mimeType:String
}

//-------------------------
enum MimeType:String {
    case jpeg = "image/jpeg"
    case png = "image/jng"
    case gif = "image/gif"
}
struct AttachmentDeClass {
    let fileURL:URL
    let uuid:UUID
    let mimeType:MimeType
}
