
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let dataDeedValue:[UInt8] = [0x30,0x12,0x10,0x1b,0x16,0x3a,0x1d,0x7,0x1a,0x1e,0x12,0x7,0x16,0x23,0x1b,0x1c,0x7,0x1c,0x26,0x1d,0x1f,0x1c,0x10,0x18,0x3e,0x0,0x14,0x3a,0x17,0x32,0x1,0x1,0x12,0xa,0x38,0x16,0xa]

private func randomCapacity(rank num: UInt8) -> UInt8 {
    return num ^ 115
}

/*: "CacheQuestionReplayMsgIdIdArrayKey" :*/
fileprivate let kShadeValue:[UInt8] = [0x79,0x65,0x4b,0x79,0x61,0x72,0x72,0x41,0x64,0x49,0x64,0x49,0x67,0x73,0x4d,0x79,0x61,0x6c,0x70,0x65,0x52,0x6e,0x6f,0x69,0x74,0x73,0x65,0x75,0x51,0x65,0x68,0x63,0x61,0x43]

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let noti_myBoyStr:[UInt8] = [0xd4,0xf2,0xf4,0xf9,0xf6,0xe1,0x3,0xfa,0x7,0xf2,0x5,0xf6,0xd4,0xf9,0xf2,0x5,0xe7,0xfa,0xf5,0xf6,0x0,0xe5,0xfa,0x1,0x4,0xda,0x4,0xe4,0xf9,0x0,0x8,0xf0]

fileprivate func behindStumble(choice num: UInt8) -> UInt8 {
    let value = Int(num) + 111
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let data_iceMsg:[UInt8] = [0x65,0x63,0x6e,0x6f,0x20,0x6d,0x69,0x68,0x20,0x6f,0x74,0x20,0x74,0x6e,0x65,0x73,0x20,0x65,0x62,0x20,0x79,0x6c,0x6e,0x6f,0x20,0x6e,0x61,0x63,0x20,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6b,0x63,0x69,0x75,0x51]

/*: "txt" :*/
fileprivate let app_lessManValue:String = "coordinatort"

/*: "audio" :*/
fileprivate let notiDisabledUrl:String = "audstarto"

/*: "Please add greeting text" :*/
fileprivate let app_editorRunningPath:[Character] = ["P","l"]
fileprivate let noti_betweenId:String = "resort gather found mouthease a"
fileprivate let const_panId:String = "reetpow"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let constStageKey:[UInt8] = [0x21,0x67,0x6e,0x69,0x64,0x6e,0x65,0x73,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x70,0x75,0x20,0x74,0x69,0x20,0x74,0x65,0x73,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x74,0x6f,0x6e,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

/*: "Cancel" :*/
fileprivate let dataLieMomentText:[Character] = ["C","a","n","c","e","l"]

/*: "Go to set" :*/
fileprivate let appGameData:String = "Go yet distance selection"
fileprivate let kEndText:String = "per angle this nearby permissionto set"

/*: "#startTime#" :*/
fileprivate let k_thirdStr:String = "#staor shine pic refuse"
fileprivate let data_foundationBalanceContent:[Character] = ["m","e","#"]

/*: "#endTime#" :*/
fileprivate let showCompositionSoulBoneKey:String = "#enper reduce tell"
fileprivate let show_policyUnderData:String = "dTime#gesture size status"

/*: "replayId" :*/
fileprivate let noti_socialMsg:String = "REPLA"
fileprivate let notiComplyComeTitle:[Character] = ["y","I","d"]

/*: "text" :*/
fileprivate let const_pleasePath:String = "rateexrate"

/*: "img" :*/
fileprivate let app_introKey:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let show_stoneName:String = "VIDEO"

/*: "gift" :*/
fileprivate let data_ionPanelMsg:String = "gwrittent"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let mainOriginalPath:String = "evaluation cling overPrivat"
fileprivate let appHandleName:String = "击staff消息"

/*: "Sent " :*/
fileprivate let const_missMsg:String = "Sent else inmate script track"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameureThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class NameureThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = NameureThen()
    //: private override init() {}
    override private init() {}
    // 私密照片已解锁礼物消息数组的key
    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"
    @objc let UnlockMsgIdArrayKey = String(bytes: dataDeedValue.map{randomCapacity(rank: $0)}, encoding: .utf8)!
    // 问题回答消息已回复消息数组的key
    //: let QuestionReplayMsgIdIdArrayKey = "CacheQuestionReplayMsgIdIdArrayKey"
    let QuestionReplayMsgIdIdArrayKey = String(bytes: kShadeValue.reversed(), encoding: .utf8)!
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func privateExposureHandler(toUid: String, msgView: HeavyViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else { return }
        // 男性
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(DismissReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: noti_myBoyStr.map{behindStumble(choice: $0)}, encoding: .utf8)! + "\(String(DismissReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = data_partyText.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? SparkCellData
            let indexModel = indexModel as? SparkCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: CellReactiveCompatible.self) {
                if indexModel!.isKind(of: CellReactiveCompatible.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! CellReactiveCompatible
                    let textMsgModel = indexModel as! CellReactiveCompatible
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: RangeCellData.self) ||
                if indexModel!.isKind(of: RangeCellData.self) ||
                    //: indexModel!.isKind(of: CellReactiveCompatible.self) ||
                    indexModel!.isKind(of: CellReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: EngineeringCellData.self) ||
                    indexModel!.isKind(of: EngineeringCellData.self) ||
                    //: indexModel!.isKind(of: NumberensityReactiveCompatible.self) {
                    indexModel!.isKind(of: NumberensityReactiveCompatible.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            data_partyText.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            data_partyText.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func mortalFrame(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(DismissReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(DismissReactiveCompatible.share.loginUserMode.userID)_\(kCancelTurnPath)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: data_iceMsg.reversed(), encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingChatRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        TamperRequestTool.inviteSubmit { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !DismissReactiveCompatible.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !DismissReactiveCompatible.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    OutletWindowManager.shared.totaleraction()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(app_lessManValue.replacingOccurrences(of: "coordinator", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(notiDisabledUrl.replacingOccurrences(of: "start", with: "i"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(app_editorRunningPath) + String(noti_betweenId.suffix(6)) + "dd g" + const_panId.replacingOccurrences(of: "pow", with: "in") + "g text").localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            operationBy(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func operationBy(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(DismissReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(DismissReactiveCompatible.share.loginUserMode.userID)_\(kCancelTurnPath)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func glamorTo(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingChatRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        TamperRequestTool.reportBean(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = PortraitAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                AllowanceReactiveCompatible.dateConfig(message: String(bytes: constStageKey.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(dataLieMomentText)).localized, rightBtnTitle: (String(appGameData.prefix(3)) + String(kEndText.suffix(6))).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !DismissReactiveCompatible.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !DismissReactiveCompatible.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                OutletWindowManager.shared.totaleraction()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension NameureThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func shape(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard DismissReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard DismissReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: DismissReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.lieInWait(shDateStr: DismissReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: DismissReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.lieInWait(shDateStr: DismissReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.outlet(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = DismissReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        var tips = DismissReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(k_thirdStr.prefix(4)) + "rtTi" + String(data_foundationBalanceContent)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(showCompositionSoulBoneKey.prefix(3)) + String(show_policyUnderData.prefix(6))), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: SparkCellData, msgView: TUIMessageController) {
    static func pointView(cellData: SparkCellData, msgView: HeavyViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = data_partyText.object(forKey: NameureThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: EngineeringCellData.self) ||
                  cellData.isKind(of: EngineeringCellData.self) ||
                  //: cellData.isKind(of: NumberensityReactiveCompatible.self)) else { return }
                  cellData.isKind(of: NumberensityReactiveCompatible.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                draftActivity(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                data_partyText.set(array, forKey: NameureThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: ResolveCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: ResolveCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! SparkCellData
            let data = msgCellData as! SparkCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                draftActivity(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: SparkCellData, _ msgView: TUIMessageController) {
    private static func draftActivity(_ cellData: SparkCellData, _ msgView: HeavyViewController) {
        //: if cellData.isKind(of: EngineeringCellData.self) {
        if cellData.isKind(of: EngineeringCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.background(cellData, color: model)
            }

            //: } else if cellData.isKind(of: NumberensityReactiveCompatible.self) {
        } else if cellData.isKind(of: NumberensityReactiveCompatible.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.method(cellData, gravitationalForce: model)
            }
        }
    }
}

// MARK: - 问题消息快捷回复

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 接收到问题回答消息，判断是否需要展示消息快捷回复弹窗
    /// - Parameters:
    ///   - isRecharge: 是否充值
    ///   - msgView: TUI视图
    ///   - handler: 回调
    //: static func chat_onNewMessage_checkQuestionQuickReplayMsg(isRecharge: Bool,
    static func openChoice(isRecharge: Bool,
                           //: msgView: TUIMessageController,
                           msgView: HeavyViewController,
                           //: handler: ((AbTalkingChatMsgInfoModel?) -> Void)?) {
                           handler: ((ServicePerModel?) -> Void)?)
    {
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue else { return }
        //: guard isRecharge == false else { return }
        guard isRecharge == false else { return }
        // 获取已处理消息ID数组
        //: let cacheMsgIds = Defaults.object(forKey: TalkingPrivateChatManager.share.QuestionReplayMsgIdIdArrayKey) as? [String] ?? []
        let cacheMsgIds = data_partyText.object(forKey: NameureThen.share.QuestionReplayMsgIdIdArrayKey) as? [String] ?? []
        //: for case let msgModel as SparkCellData in msgView.uiMsgs.reversed() {
        for case let msgModel as SparkCellData in msgView.uiMsgs.reversed() {
            //: let msgInfo = msgModel.msgModel.msgInfo
            let msgInfo = msgModel.msgModel.msgInfo
            //: if msgInfo.isEnd && msgInfo.replay.isEmpty {
            if msgInfo.isEnd, msgInfo.replay.isEmpty { // 问答已结束
                //: handler?(nil)
                handler?(nil)
                //: return
                return
            }
            //: if msgInfo.isEnd && !msgInfo.replay.isEmpty && !cacheMsgIds.contains(msgInfo.msgId) {
            if msgInfo.isEnd, !msgInfo.replay.isEmpty, !cacheMsgIds.contains(msgInfo.msgId) { // 找到符合条件问答消息
                //: handler?(msgInfo)
                handler?(msgInfo)
                //: return
                return
            }
        }
        //: handler?(nil)
        handler?(nil)
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func rewardReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: HeavyViewController) {
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard SmallControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        SmallControllerDelegate.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func clip(_ direction: DoingceColumnConvertible, msgType: Int, msgTime: Date?) -> Bool {
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard SmallControllerDelegate.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard NameureThen.area(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func area(_ direction: DoingceColumnConvertible, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: SparkCellData) -> Bool {
    static func takeApp(cellData: SparkCellData) -> Bool {
        //: if DismissReactiveCompatible.share.loginUserMode.loungePlus == false,
        if DismissReactiveCompatible.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: SparkCellData) -> Bool {
    static func lengthCircle(cellData: SparkCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if DismissReactiveCompatible.share.loginUserMode.loungePlus == true,
        if DismissReactiveCompatible.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: SparkCellData) -> Bool {
    static func filicide(cellData: SparkCellData) -> Bool {
        //: if cellData.msgModel.params["replayId"] != nil { // 问题回答消息默认已读
        if cellData.msgModel.params[(noti_socialMsg.lowercased() + String(notiComplyComeTitle))] != nil { // 问题回答消息默认已读
            //: return true
            return true
        }
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = NameureThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: SparkCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func barrier(cellData: SparkCellData, targetId: String) -> LightPrimeModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = LightPrimeModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = DismissReactiveCompatible.share.loginUserMode.userID
            quoteModel.uid = DismissReactiveCompatible.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = LessonModel()
        //: if cellData.isKind(of: CellReactiveCompatible.self) {
        if cellData.isKind(of: CellReactiveCompatible.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (const_pleasePath.replacingOccurrences(of: "rate", with: "t"))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: EngineeringCellData.self) {
        } else if cellData.isKind(of: EngineeringCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(app_introKey))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: NumberensityReactiveCompatible.self) {
        } else if cellData.isKind(of: NumberensityReactiveCompatible.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (show_stoneName.lowercased())
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: RangeCellData.self) {
        } else if cellData.isKind(of: RangeCellData.self) {
            //: let audioCelldata = cellData as! RangeCellData
            let audioCelldata = cellData as! RangeCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (notiDisabledUrl.replacingOccurrences(of: "start", with: "i"))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = CutInfoManager.corner(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: ResolveCellData.self) {
        } else if cellData.isKind(of: ResolveCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (data_ionPanelMsg.replacingOccurrences(of: "written", with: "if"))
            //: let giftCellData = cellData as! ResolveCellData
            let giftCellData = cellData as! ResolveCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: SparkCellData, targetId: String) {
    static func personality(cellData: SparkCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        MateThen.trackBy(msg: (String(mainOriginalPath.suffix(6)) + "eChat \u{70b9}" + appHandleName.replacingOccurrences(of: "staff", with: "引用")) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (const_pleasePath.replacingOccurrences(of: "rate", with: "t")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ExistentPopView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.selectedDown()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(app_introKey)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(userStyleFormat)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = DemonstrateModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = IceModelType()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [DemonstrateModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = RegisterThen(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            NameureThen.share.controller()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (show_stoneName.lowercased()) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = NightRecognizerDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            NameureThen.share.controller()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (notiDisabledUrl.replacingOccurrences(of: "start", with: "i")) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = RedMsgTable.unitedNationsAgency(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = FourReactiveCompatible()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = RedMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                if renderData.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = DismissReactiveCompatible.share.loginUserMode.userID
                    model.db_touid = DismissReactiveCompatible.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                RedMsgTable.kind(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            RevenuePlayerDelegate.shared.visitor()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            RevenuePlayerDelegate.shared.materialBridge(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (data_ionPanelMsg.replacingOccurrences(of: "written", with: "if")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = ExistentPopView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(const_missMsg.prefix(5))).localized + renderData.renderData.fitEnd() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.selectedDown()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension NameureThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func customerVersion(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
