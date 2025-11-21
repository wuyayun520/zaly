// __DEBUG__
// __CLOSE_PRINT__
//
//  AttributedStringExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: extension  NSMutableAttributedString {
extension NSMutableAttributedString {
    //: func mutilpartAttributedStringWith(texts: [String],colors: [UIColor],fonts: [UIFont]) -> NSMutableAttributedString  {
    func missScopeAgain(texts: [String], colors: [UIColor], fonts: [UIFont]) -> NSMutableAttributedString {
        //: let count = texts.count
        let count = texts.count
        //: if count==0 {
        if count == 0 {
            //: return NSMutableAttributedString.init()
            return NSMutableAttributedString()
        }
        //: let  ret = NSMutableAttributedString.init()
        let ret = NSMutableAttributedString()
        //: var part = ""
        var part = ""

        //: for i in 0..<count {
        for i in 0 ..< count {
            //: part.append(texts[i])
            part.append(texts[i])
            //: ret.yy_appendString(texts[i])
            ret.yy_appendString(texts[i])
            //: let range =  part.exMatchStrRange(texts[i])
            let range = part.connectJump(texts[i])

            //: if i < colors.count {
            if i < colors.count {
                //: ret.addAttribute(NSAttributedString.Key.foregroundColor, value: colors[i], range: range.last ?? NSRange())
                ret.addAttribute(NSAttributedString.Key.foregroundColor, value: colors[i], range: range.last ?? NSRange())
            }
            //: if (i < fonts.count) {
            if i < fonts.count {
                //: ret.addAttribute(NSAttributedString.Key.font, value: fonts[i], range: range.last ?? NSRange())
                ret.addAttribute(NSAttributedString.Key.font, value: fonts[i], range: range.last ?? NSRange())
            }
        }
        //: return ret
        return ret
    }
}
