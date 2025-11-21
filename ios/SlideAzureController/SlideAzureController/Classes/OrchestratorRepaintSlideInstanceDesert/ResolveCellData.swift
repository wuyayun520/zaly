
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_formatStr:[UInt8] = [0xdf,0xd8,0xdf,0xc2,0x9e,0xd5,0xd9,0xd2,0xd3,0xc4,0x8c,0x9f,0x96,0xde,0xd7,0xc5,0x96,0xd8,0xd9,0xc2,0x96,0xd4,0xd3,0xd3,0xd8,0x96,0xdf,0xdb,0xc6,0xda,0xd3,0xdb,0xd3,0xd8,0xc2,0xd3,0xd2]

private func combinedBound(physical num: UInt8) -> UInt8 {
    return num ^ 182
}

/*: "Open lucky blind-box\nSent " :*/
fileprivate let constBalanceName:String = "tune restriction gallery highlightOpen l"
fileprivate let dataGalleryTitle:String = "BLIND"
fileprivate let constLeagueData:String = "-box\n"

/*: "Sent " :*/
fileprivate let kPrettyStr:String = "healthy interaction press presentation lookSent "

/*: "#FFEE4B" :*/
fileprivate let const_micAverageFlexibleValue:[Character] = ["#","F","F","E","E"]
fileprivate let dataCollectCertainValue:String = "however coordinate anima4B"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResolveCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class ResolveCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ResolveCellData: AfterwardsReactiveCompatible {
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_formatStr.map{combinedBound(physical: $0)}, encoding: .utf8)!)
    }

    //: public override func contentSize() -> CGSize {
    override public func am() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 22 - 80
        let maxWidth = main_logStr - (25 + self.cellLayout.avatarSize.width) * 2 - 22 - 80
        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        //: let yySize = yyLayout?.textBoundingRect.size ?? .zero
        let yySize = yyLayout?.textBoundingRect.size ?? .zero
        //: var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize
        //: temTextSize.height += self.cellLayout.bubbleInsets.top+self.cellLayout.bubbleInsets.bottom
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+70
        temTextSize.width += self.cellLayout.bubbleInsets.left + 70
        //: return CGSize(width: max(80, temTextSize.width), height: max(64, temTextSize.height))
        return CGSize(width: max(80, temTextSize.width), height: max(64, temTextSize.height))
    }

    //: public lazy var attributedString: NSMutableAttributedString = {
    public lazy var attributedString: NSMutableAttributedString = {
        //: let attr = formatGiftMsgString(giftModel: self.msgModel.gift)
        let attr = sketchToCopernicanSystem(giftModel: self.msgModel.gift)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatGiftMsgString(giftModel: AbTalkingChatMsgGiftModel) -> NSMutableAttributedString {
    func sketchToCopernicanSystem(giftModel: DefinitionModel) -> NSMutableAttributedString {
        //: let attr = NSMutableAttributedString.init()
        let attr = NSMutableAttributedString()
        //: let color = (self.direction == .MsgDirectionOutgoing ? UIColor.white : UIColor.appTitleColor())
        let color = (self.direction == .MsgDirectionOutgoing ? UIColor.white : UIColor.dialog())
        //: let font = UIFont.pingfangRugularFont(fontSize: 17)
        let font = UIFont.bonePlace(fontSize: 17)
        //: let attr1: NSMutableAttributedString?
        let attr1: NSMutableAttributedString?
        //: let giftname = changeGiftName(giftmodel: giftModel)
        let giftname = greet(giftmodel: giftModel)
        //: if giftModel.showType == "\(ChatGiftType.myStery.rawValue)" {
        if giftModel.showType == "\(SightProviderCustomReflectable.myStery.rawValue)" {
            //: attr1 = NSMutableAttributedString.init(string: "Open lucky blind-box\nSent ".localized, attributes: [.font: font, .foregroundColor: color])
            attr1 = NSMutableAttributedString(string: (String(constBalanceName.suffix(6)) + "ucky " + dataGalleryTitle.lowercased() + constLeagueData + "Sent ").localized, attributes: [.font: font, .foregroundColor: color])
            //: }else {
        } else {
            //: attr1 = NSMutableAttributedString.init(string: "Sent ".localized, attributes: [.font: font, .foregroundColor: color])
            attr1 = NSMutableAttributedString(string: (String(kPrettyStr.suffix(5))).localized, attributes: [.font: font, .foregroundColor: color])
        }
        //: let attr3 = NSMutableAttributedString.init(string: " x\(giftModel.num)", attributes: [.font: font, .foregroundColor: color])
        let attr3 = NSMutableAttributedString(string: " x\(giftModel.num)", attributes: [.font: font, .foregroundColor: color])
        //: let color2 = (self.direction == .MsgDirectionOutgoing ? UIColor(hex: "#FFEE4B") : UIColor.appThemeColor())
        let color2 = (self.direction == .MsgDirectionOutgoing ? UIColor(hex: (String(const_micAverageFlexibleValue) + String(dataCollectCertainValue.suffix(2)))) : UIColor.attractiveIn())
        //: let attr2 = NSMutableAttributedString.init(string: "\(giftname)", attributes: [.font: font, .foregroundColor: color2])
        let attr2 = NSMutableAttributedString(string: "\(giftname)", attributes: [.font: font, .foregroundColor: color2])
        //: attr.append(attr1!)
        attr.append(attr1!)
        //: attr.append(attr2)
        attr.append(attr2)
        //: attr.append(attr3)
        attr.append(attr3)
        //: return attr
        return attr
    }

    //: private func changeGiftName(giftmodel: AbTalkingChatMsgGiftModel) -> String {
    private func greet(giftmodel: DefinitionModel) -> String {
        //: var gameName = giftmodel.name
        var gameName = giftmodel.name
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if ManufacturerThen.share.interfaceLang == ImpressionName.en.rawValue {
            //: gameName = giftmodel.nameI18n[LangType.en.rawValue] as? String ?? ""
            gameName = giftmodel.nameI18n[ImpressionName.en.rawValue] as? String ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
            //: gameName = giftmodel.nameI18n[LangType.ar.rawValue] as? String ?? ""
            gameName = giftmodel.nameI18n[ImpressionName.ar.rawValue] as? String ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
            //: gameName = giftmodel.nameI18n[LangType.es.rawValue] as? String ?? ""
            gameName = giftmodel.nameI18n[ImpressionName.es.rawValue] as? String ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
            //: gameName = giftmodel.nameI18n[LangType.pt.rawValue] as? String ?? ""
            gameName = giftmodel.nameI18n[ImpressionName.pt.rawValue] as? String ?? ""
        }
        //: return gameName
        return gameName
    }
}
