
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let const_lastRoundId:[Character] = ["b","g","_","t","a","l","k","_","o"]
fileprivate let kSoleData:[Character] = ["t","h","e","r"]

/*: "bg_talk_me" :*/
fileprivate let appFormalKey:String = "bg_talmodify bear daily"
fileprivate let noti_protectionId:String = "k_memystery announcement form show"

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataBehindTitle:[UInt8] = [0x43,0x48,0x43,0x4e,0x2,0x3d,0x49,0x3e,0x3f,0x4c,0x14,0x3,0xfa,0x42,0x3b,0x4d,0xfa,0x48,0x49,0x4e,0xfa,0x3c,0x3f,0x3f,0x48,0xfa,0x43,0x47,0x4a,0x46,0x3f,0x47,0x3f,0x48,0x4e,0x3f,0x3e]

fileprivate func playerAccuracy(bone num: UInt8) -> UInt8 {
    let value = Int(num) + 38
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterwardsReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: SparkCellData {
@objcMembers public class AfterwardsReactiveCompatible: SparkCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.visualization(name: (String(const_lastRoundId) + String(kSoleData)))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MailSpillLayoutReactiveCompatible.weight()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.visualization(name: (String(appFormalKey.prefix(6)) + String(noti_protectionId.prefix(4))))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MailSpillLayoutReactiveCompatible.wave()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataBehindTitle.map{playerAccuracy(bone: $0)}, encoding: .utf8)!)
    }
}
