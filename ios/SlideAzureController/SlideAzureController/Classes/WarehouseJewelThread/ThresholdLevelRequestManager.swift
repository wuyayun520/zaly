
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let main_nextDoorStr:[Character] = ["m","f","/","u"]
fileprivate let constYesMessage:String = "ser/his contact"
fileprivate let dataCommunicateMsg:String = "trust validrInfo"

/*: "uid" :*/
fileprivate let const_minuteJustMessage:[UInt8] = [0x91,0x85,0x80]

fileprivate func swingSkip(primary num: UInt8) -> UInt8 {
    let value = Int(num) + 228
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/getReceivedGifts" :*/
fileprivate let constEarnEnrollValue:String = "maker private state fairmf/"
fileprivate let noti_pairUrl:[Character] = ["u","s","e","r","/","g","e","t","R","e","c","e","i","v","e","d","G","i","f","t","s"]

/*: "mf/crush/send" :*/
fileprivate let k_pressData:String = "mf/cadd elite"
fileprivate let kLiteralAssistValue:String = "return capture firm restore/send"

/*: "targetUid" :*/
fileprivate let constActivityValue:[UInt8] = [0xfe,0xeb,0xfc,0xf1,0xef,0xfe,0xdf,0xf3,0xee]

fileprivate func centerOuter(enter num: UInt8) -> UInt8 {
    let value = Int(num) + 118
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/attention" :*/
fileprivate let data_ownerMsg:[UInt8] = [0xd3,0xd5,0xc3,0xd4,0x89,0xc7,0xd2,0xd2,0xc3,0xc8,0xd2,0xcf,0xc9,0xc8]

private func fenceLine(port num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "user/removeAttention" :*/
fileprivate let const_secureTitle:String = "user/rconversion leave object star"
fileprivate let main_nothingId:[Character] = ["t","t","e","n","t","i","o","n"]

/*: "attentionUid" :*/
fileprivate let kThinValue:[UInt8] = [0xc8,0xdd,0xdd,0xcc,0xc7,0xdd,0xc0,0xc6,0xc7,0xfc,0xc0,0xcd]

private func signalAdd(brush num: UInt8) -> UInt8 {
    return num ^ 169
}

/*: "removeAttentionUid" :*/
fileprivate let k_restrictionMsg:[UInt8] = [0x4c,0x5b,0x53,0x51,0x48,0x5b,0x7f,0x4a,0x4a,0x5b,0x50,0x4a,0x57,0x51,0x50,0x6b,0x57,0x5a]

private func magnitudeoAlive(translation num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "user/addBlack" :*/
fileprivate let show_whyFormat:[UInt8] = [0x6b,0x63,0x61,0x6c,0x42,0x64,0x64,0x61,0x2f,0x72,0x65,0x73,0x75]

/*: "user/remBlack" :*/
fileprivate let const_rawTitle:String = "hidden image publish date costuser/rem"
fileprivate let const_streamMessage:[Character] = ["B","l","a","c","k"]

/*: "mf/moment/like" :*/
fileprivate let k_viaStr:[Character] = ["m","f","/","m","o","m","e","n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let constNightDrawText:[UInt8] = [0xdc,0xde,0xdc,0xd4,0xdd,0xe3,0xb8,0xd3]

fileprivate func thirdSlide(bit num: UInt8) -> UInt8 {
    let value = Int(num) - 111
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let appBeforeStr:[UInt8] = [0xfc,0xf1,0xf8,0xed]

private func demandPush(level num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let data_tellAlterMessage:[Character] = ["m","f","/","u","s","e","r","/","u","p"]
fileprivate let showSnakeTitle:String = "lonowd"

/*: "auth_pic" :*/
fileprivate let mainEarnData:[UInt8] = [0x63,0x69,0x70,0x5f,0x68,0x74,0x75,0x61]

/*: "mf/business/getQuickMsgUserList" :*/
fileprivate let userRescueStr:[UInt8] = [0xf4,0xff,0xb6,0xfb,0xec,0xea,0xf0,0xf7,0xfc,0xea,0xea,0xb6,0xfe,0xfc,0xed,0xc8,0xec,0xf0,0xfa,0xf2,0xd4,0xea,0xfe,0xcc,0xea,0xfc,0xeb,0xd5,0xf0,0xea,0xed]

private func scheduleTa(pending num: UInt8) -> UInt8 {
    return num ^ 153
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThresholdLevelRequestManager.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class ThresholdLevelRequestManager: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func media(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(main_nextDoorStr) + String(constYesMessage.prefix(4)) + "getUse" + String(dataCommunicateMsg.suffix(5)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: const_minuteJustMessage.map{swingSkip(primary: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func exampleOfCompletion(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(constEarnEnrollValue.suffix(3)) + String(noti_pairUrl))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: const_minuteJustMessage.map{swingSkip(primary: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func networkTranslation(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(k_pressData.prefix(4)) + "rush" + String(kLiteralAssistValue.suffix(5)))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: constActivityValue.map{centerOuter(enter: $0)}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func streetSmartCompletion(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: data_ownerMsg.map{fenceLine(port: $0)}, encoding: .utf8)! : (String(const_secureTitle.prefix(6)) + "emoveA" + String(main_nothingId))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: kThinValue.map{signalAdd(brush: $0)}, encoding: .utf8)!: uid] : [String(bytes: k_restrictionMsg.map{magnitudeoAlive(translation: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func burnMention(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: show_whyFormat.reversed(), encoding: .utf8)! : (String(const_rawTitle.suffix(8)) + String(const_streamMessage))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: const_minuteJustMessage.map{swingSkip(primary: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    ManageressTrailerThen.shared.balance(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    ManageressTrailerThen.shared.eraseTexture(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func befittingCompletion(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(k_viaStr))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: constNightDrawText.map{thirdSlide(bit: $0)}, encoding: .utf8)!: mid, String(bytes: appBeforeStr.map{demandPush(level: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func soundDay(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func uploadNote(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(data_tellAlterMessage) + showSnakeTitle.replacingOccurrences(of: "now", with: "a") + "AuthPic")
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: mainEarnData.reversed(), encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 一键SayHi

    //: class func func__sayHiData(completion: @escaping FinishBlock) {
    class func rootQuantity(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/business/getQuickMsgUserList"
        reqModel.requestPath = String(bytes: userRescueStr.map{scheduleTa(pending: $0)}, encoding: .utf8)!
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
