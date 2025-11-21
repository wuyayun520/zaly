
//: Declare String Begin

/*: "title" :*/
fileprivate let main_humanFormat:String = "tmortaltle"

/*: "content" :*/
fileprivate let showSPreviousData:String = "atnte"
fileprivate let mainSwitchlyValue:String = "regiont"

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_quitBrushData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "img" :*/
fileprivate let app_searchName:String = "imangle"

/*: "jumpKey" :*/
fileprivate let data_energyText:String = "jumpKeenroll club resistance"
fileprivate let app_adjustmentMessage:String = "combined"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatSystemNotifJumpMsgCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ContainerReactiveCompatible: AfterwardsReactiveCompatible {
    // 数据
    //: var extraJson: JSON {
    var extraJson: JSON {
        //: return JSON(extraDict)
        return JSON(extraDict)
    }

    // banner size
    //: var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    // 是否有标题
    //: var hasBanner = false
    var hasBanner = false
    // 标题高度
    //: var titleHeight = 0.0
    var titleHeight = 0.0
    // 内容高度
    //: var contentHeight = 0.0
    var contentHeight = 0.0
    // 跳转高度
    //: var jumpHeight = 0.0
    var jumpHeight = 0.0
    // 标题富文本
    //: public lazy var titleAttrStr: NSMutableAttributedString = {
    public lazy var titleAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.dialog(), .font: UIFont.bigGallery(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["title"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(main_humanFormat.replacingOccurrences(of: "mortal", with: "i"))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    // 内容富文本
    //: public lazy var contentAttrStr: NSMutableAttributedString = {
    public lazy var contentAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appValueColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.ownLight(), .font: UIFont.bigGallery(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["content"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(showSPreviousData.replacingOccurrences(of: "at", with: "co") + mainSwitchlyValue.replacingOccurrences(of: "region", with: "n"))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_quitBrushData.reversed(), encoding: .utf8)!)
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: override public func contentSize() -> CGSize {
    override public func am() -> CGSize {
        //: let height = self.heightOfWidth(0)-20
        let height = self.skin(0) - 20
        //: return CGSize(width: bannerSize.width, height: height)
        return CGSize(width: bannerSize.width, height: height)
    }

    //: override public func heightOfWidth(_ width: CGFloat) -> CGFloat {
    override public func skin(_: CGFloat) -> CGFloat {
        //: var height = 0.0
        var height = 0.0
        //: if extraJson["img"].stringValue.count > 0 {
        if extraJson[(app_searchName.replacingOccurrences(of: "angle", with: "g"))].stringValue.count > 0 {
            //: height += bannerSize.height
            height += bannerSize.height
            //: hasBanner = true
            hasBanner = true
        }
        //: height += 10
        height += 10
        //: if extraJson["title"].stringValue.count > 0 {
        if extraJson[(main_humanFormat.replacingOccurrences(of: "mortal", with: "i"))].stringValue.count > 0 {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            //: if let titleH = yyLayout?.textBoundingSize.height {
            if let titleH = yyLayout?.textBoundingSize.height {
                //: titleHeight = titleH
                titleHeight = titleH
                //: height += titleHeight
                height += titleHeight
            }
        }
        //: if extraJson["content"].stringValue.count > 0 {
        if extraJson[(showSPreviousData.replacingOccurrences(of: "at", with: "co") + mainSwitchlyValue.replacingOccurrences(of: "region", with: "n"))].stringValue.count > 0 {
            //: height += 4
            height += 4
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            //: if let contentH = yyLayout?.textBoundingSize.height {
            if let contentH = yyLayout?.textBoundingSize.height {
                //: contentHeight = contentH
                contentHeight = contentH
                //: height += contentHeight
                height += contentHeight
            }
        }
        //: height += 10
        height += 10
        //: if extraJson["jumpKey"].stringValue.count > 0 {
        if extraJson[(String(data_energyText.prefix(6)) + app_adjustmentMessage.replacingOccurrences(of: "combined", with: "y"))].stringValue.count > 0 {
            //: jumpHeight = 35
            jumpHeight = 35
            //: height += jumpHeight
            height += jumpHeight
        }
        // cell间距
        //: height += 20
        height += 20

        //: return height
        return height
    }
}
