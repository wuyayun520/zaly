
//: Declare String Begin

/*: "bg_chat_honey_left" :*/
fileprivate let const_scoreId:String = "primary two strip burn unitbg_ch"
fileprivate let main_lifetimeValue:String = "y_lefttexture his compound"

/*: "bg_chat_honey_right" :*/
fileprivate let userShouldInvitePath:String = "bg_chatmaybe female submit exposure"
fileprivate let appRunnerPath:[Character] = ["_","h","o","n"]
fileprivate let main_reasonKey:String = "ey_rightphoto agree contact eastern rip"

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiSightStr:[UInt8] = [0xc8,0xcd,0xc8,0xd3,0x87,0xc2,0xce,0xc3,0xc4,0xd1,0x99,0x88,0x7f,0xc7,0xc0,0xd2,0x7f,0xcd,0xce,0xd3,0x7f,0xc1,0xc4,0xc4,0xcd,0x7f,0xc8,0xcc,0xcf,0xcb,0xc4,0xcc,0xc4,0xcd,0xd3,0xc4,0xc3]

fileprivate func pastSkirt(remark num: UInt8) -> UInt8 {
    let value = Int(num) - 95
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#FA74B7" :*/
fileprivate let noti_checkBassMessage:[Character] = ["#","F","A","7","4","B","7"]

/*: "icon_coin" :*/
fileprivate let kDrawRecognizeUrl:[Character] = ["i","c","o","n","_","c"]
fileprivate let appCurveUrl:String = "ostroke"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeThen.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: @objcMembers public class RangeThen: TalkingChatMsgBaseCellData {
@objcMembers public class RangeThen: AfterwardsReactiveCompatible {
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_chat_honey_left")
            self.bubbleImg = UIImage.visualization(name: (String(const_scoreId.suffix(5)) + "at_hone" + String(main_lifetimeValue.prefix(6))))
            //: self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 40, bottom: 20, right: 50), resizingMode: .stretch)
            self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 40, bottom: 20, right: 50), resizingMode: .stretch)
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_chat_honey_right")
            self.bubbleImg = UIImage.visualization(name: (String(userShouldInvitePath.prefix(7)) + String(appRunnerPath) + String(main_reasonKey.prefix(8))))
            //: self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 50, bottom: 20, right: 40), resizingMode: .stretch)
            self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 50, bottom: 20, right: 40), resizingMode: .stretch)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiSightStr.map{pastSkirt(remark: $0)}, encoding: .utf8)!)
    }

    //: override public func contentSize() -> CGSize {
    override public func am() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = main_logStr - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        //: let yySize = yyLayout?.textBoundingRect.size ?? .zero
        let yySize = yyLayout?.textBoundingRect.size ?? .zero
        //: var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize
        //: self.textOrigin = CGPoint(x: 16, y: 16)
        self.textOrigin = CGPoint(x: 16, y: 16)
        //: temTextSize.height += 32
        temTextSize.height += 32
        //: temTextSize.width += 32
        temTextSize.width += 32
        //: if self.direction == .MsgDirectionIncoming && self.msgModel.msgInfo.wantGift.sendStatus != 1 {
        if self.direction == .MsgDirectionIncoming && self.msgModel.msgInfo.wantGift.sendStatus != 1 {
            //: temTextSize.height += 30
            temTextSize.height += 30
        }
        //: return CGSize(width: max(80, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(80, temTextSize.width), height: temTextSize.height)
    }

    //: public lazy var attributedString: NSMutableAttributedString = {
    public lazy var attributedString: NSMutableAttributedString = {
        //: let attr = formatGiftMsgString(giftModel: self.msgModel)
        let attr = element(giftModel: self.msgModel)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatGiftMsgString(giftModel: AbTalkingChatMsgBaseModel) -> NSMutableAttributedString {
    func element(giftModel: ServiceModel) -> NSMutableAttributedString {
        //: let attr = NSMutableAttributedString.init()
        let attr = NSMutableAttributedString()
        //: let font = UIFont.pingfangRugularFont(fontSize: 16)
        let font = UIFont.bonePlace(fontSize: 16)
        //: let giftname = changeGiftName(giftmodel: giftModel.msgInfo.wantGift)
        let giftname = display(giftmodel: giftModel.msgInfo.wantGift)
        //: let str = "\(giftModel.msgInfo.wantGift.content)"
        let str = "\(giftModel.msgInfo.wantGift.content)"
        //: let attr1 = NSMutableAttributedString.init(string: str, attributes: [.font: font, .foregroundColor: UIColor.appTitleColor()])
        let attr1 = NSMutableAttributedString(string: str, attributes: [.font: font, .foregroundColor: UIColor.dialog()])
        //: let attr2 = NSMutableAttributedString.init(string: "\(giftname)\n", attributes: [.font: font, .foregroundColor: UIColor.init(hex: "#FA74B7")!])
        let attr2 = NSMutableAttributedString(string: "\(giftname)\n", attributes: [.font: font, .foregroundColor: UIColor(hex: (String(noti_checkBassMessage)))!])
        //: let attr3 = NSMutableAttributedString.init(string: "\(giftModel.msgInfo.wantGift.giftPrice)", attributes: [.font: font, .foregroundColor: UIColor.init(hex: "#FA74B7")!])
        let attr3 = NSMutableAttributedString(string: "\(giftModel.msgInfo.wantGift.giftPrice)", attributes: [.font: font, .foregroundColor: UIColor(hex: (String(noti_checkBassMessage)))!])

        //: let giftImgV = UIImageView.init()
        let giftImgV = UIImageView()
        //: giftImgV.size = CGSize.init(width: 29, height: 29)
        giftImgV.size = CGSize(width: 29, height: 29)
        //: giftImgV.contentMode = .scaleAspectFit
        giftImgV.contentMode = .scaleAspectFit
        //: giftImgV.setGiftUrlImage(urlStr: giftModel.msgInfo.wantGift.giftIcon)
        giftImgV.recordingStr(urlStr: giftModel.msgInfo.wantGift.giftIcon)
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV, contentMode: .center, attachmentSize: giftImgV.size, alignTo: font, alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV, contentMode: .center, attachmentSize: giftImgV.size, alignTo: font, alignment: .center)
        //: let giftImgV2 = UIImageView.init()
        let giftImgV2 = UIImageView()
        //: giftImgV2.size = CGSize.init(width: 14, height: 14)
        giftImgV2.size = CGSize(width: 14, height: 14)
        //: giftImgV2.contentMode = .scaleAspectFit
        giftImgV2.contentMode = .scaleAspectFit
        //: giftImgV2.image = UIImage.BundleImageNamed(name: "icon_coin")
        giftImgV2.image = UIImage.locationName(name: (String(kDrawRecognizeUrl) + appCurveUrl.replacingOccurrences(of: "stroke", with: "in")))
        //: let attachText2 = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV2, contentMode: .center, attachmentSize: giftImgV2.size, alignTo: font, alignment: .center)
        let attachText2 = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV2, contentMode: .center, attachmentSize: giftImgV2.size, alignTo: font, alignment: .center)

        //: attr.append(attr1)
        attr.append(attr1)
        //: attr.append(attachText)
        attr.append(attachText)
        //: attr.append(attr2)
        attr.append(attr2)
        //: attr.append(attachText2)
        attr.append(attachText2)
        //: attr.append(attr3)
        attr.append(attr3)

        //: return attr
        return attr
    }

    //: func changeGiftName(giftmodel: WantGiftModel) -> String {
    func display(giftmodel: ExampleWishWellModel) -> String {
        //: var gameName = giftmodel.giftName
        var gameName = giftmodel.giftName
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if ManufacturerThen.share.interfaceLang == ImpressionName.en.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.en.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ImpressionName.en.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.ar.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ImpressionName.ar.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.es.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ImpressionName.es.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.pt.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ImpressionName.pt.rawValue] as? NSString ?? ""
        }
        //: return gameName as String
        return gameName as String
    }
}
