
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let appParaContent:[UInt8] = [0x83,0xae,0xb4,0xb7,0xa6,0xb3,0xa4,0xaf,0x96,0xb2,0xa2,0xb2,0xa2,0x93,0xa8,0xac,0xa2,0xa9,0x98,0x94,0xb3,0xa6,0xb3,0xb2,0xb4,0x85,0xa6,0xb5,0x8e,0xa9,0xae,0xb3]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let kTitleData = String(bytes: appParaContent.map{$0^199}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func lengthBlock(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
