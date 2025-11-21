
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let showGivingName:[Character] = ["l","i","v","e"]
fileprivate let user_ditMessage:String = "/enteraccept expected not regard stat"

/*: "streamerUid" :*/
fileprivate let kLayerKey:[UInt8] = [0x9b,0x9c,0x9a,0x8d,0x89,0x95,0x8d,0x9a,0x7d,0x91,0x8c]

fileprivate func gapBring(refuse num: UInt8) -> UInt8 {
    let value = Int(num) - 40
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/userNum" :*/
fileprivate let const_elementMessage:[Character] = ["l","i","v","e","/","u","s","e","r","N"]
fileprivate let const_feedMessage:String = "uuser"

/*: "chatGroupId" :*/
fileprivate let appSlimHostData:[UInt8] = [0x5d,0x56,0x5f,0x4a,0x79,0x4c,0x51,0x4b,0x4e,0x77,0x5a]

private func assertEyebrow(fun num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "live/members" :*/
fileprivate let const_duringPath:String = "live/mmagnitude lip library impulse visitor"
fileprivate let noti_shallRandomExampleId:String = "emberdue"

/*: "live/mute" :*/
fileprivate let showSubmitPath:String = "previous prettylive/mu"
fileprivate let showRugMsg:[Character] = ["t","e"]

/*: "targetUid" :*/
fileprivate let const_picStopId:[UInt8] = [0x26,0x33,0x20,0x35,0x37,0x26,0x7,0x3b,0x36]

private func singleFile(business num: UInt8) -> UInt8 {
    return num ^ 82
}

/*: "duration" :*/
fileprivate let const_intoStr:[UInt8] = [0xf3,0x4,0x1,0xf0,0x3,0xf8,0xfe,0xfd]

fileprivate func heatClip(control num: UInt8) -> UInt8 {
    let value = Int(num) - 143
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/unmute" :*/
fileprivate let appMigrationPath:String = "live/like staff gray ref sense"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarrierReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class BarrierReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func appearance(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(showGivingName) + String(user_ditMessage.prefix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: kLayerKey.map{gapBring(refuse: $0)}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func reduceWeek(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(const_elementMessage) + const_feedMessage.replacingOccurrences(of: "user", with: "m"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: appSlimHostData.map{assertEyebrow(fun: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func secondStatement(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(const_duringPath.prefix(6)) + noti_shallRandomExampleId.replacingOccurrences(of: "due", with: "s"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: appSlimHostData.map{assertEyebrow(fun: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func cell(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(showSubmitPath.suffix(7)) + String(showRugMsg))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: const_picStopId.map{singleFile(business: $0)}, encoding: .utf8)!: targetUid, String(bytes: const_intoStr.map{heatClip(control: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func systemOfMacrophages(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(appMigrationPath.prefix(5)) + "unmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: const_picStopId.map{singleFile(business: $0)}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
