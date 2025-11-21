
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let data_hideKey:String = "key sh resistancemsgInfo"

/*: "jumps" :*/
fileprivate let showVisitorContent:String = "docmps"

/*: "uid" :*/
fileprivate let app_toneMessage:String = "uorigind"

/*: "roomId" :*/
fileprivate let app_packContent:[UInt8] = [0x88,0x95,0x95,0x97,0xb3,0x9e]

private func aboveEvery(score num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "msgId" :*/
fileprivate let noti_earMsg:[UInt8] = [0xa2,0xbc,0xa8,0x86,0xab]

/*: "time" :*/
fileprivate let dataKingdomSureName:[UInt8] = [0xc2,0xdf,0xdb,0xd3]

private func takeIn(whole num: UInt8) -> UInt8 {
    return num ^ 182
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConfirmGuideReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class ConfirmGuideReactiveCompatible: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: SmallChatController?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = ConfirmGuideReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension ConfirmGuideReactiveCompatible {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func productMatch(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(data_hideKey.suffix(7)))][(showVisitorContent.replacingOccurrences(of: "doc", with: "ju"))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == DismissReactiveCompatible.share.loginUid {
            if dict[(app_toneMessage.replacingOccurrences(of: "origin", with: "i"))].stringValue == DismissReactiveCompatible.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if DepictionThen.isGroupChat(msg.groupID) {
        if DepictionThen.doingPrepare(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: app_packContent.map{aboveEvery(score: $0)}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: noti_earMsg.map{$0^207}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: dataKingdomSureName.map{takeIn(whole: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.totalerpretDown(info: dict)
        }
    }
}
