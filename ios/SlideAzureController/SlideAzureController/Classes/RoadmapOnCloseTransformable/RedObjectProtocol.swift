
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let const_downFormat:String = "Cachexplain new modify universal successful"
fileprivate let constLocationKey:String = "leVIPCallfocus decision remove create"
fileprivate let noti_towardValue:String = "IdsArtheory some"

/*: "CHANGE_BEAN" :*/
fileprivate let noti_priceTitle:String = "aroundHA"
fileprivate let main_transactionKey:String = "nut generate normalNGE_BEAN"

/*: "Failed to get user information, please return and try again" :*/
fileprivate let kActionValue:[UInt8] = [0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x64,0x6e,0x61,0x20,0x6e,0x72,0x75,0x74,0x65,0x72,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x6d,0x72,0x6f,0x66,0x6e,0x69,0x20,0x72,0x65,0x73,0x75,0x20,0x74,0x65,0x67,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "type" :*/
fileprivate let show_communicationMsg:[UInt8] = [0xfa,0xff,0xf6,0xeb]

fileprivate func haveTick(shoulder num: UInt8) -> UInt8 {
    let value = Int(num) + 122
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "uid" :*/
fileprivate let showHouseAttentionValue:String = "uiglass"

/*: "source" :*/
fileprivate let dataSitMessage:[UInt8] = [0x2b,0x37,0x2d,0x2a,0x3b,0x3d]

private func feePop(lock num: UInt8) -> UInt8 {
    return num ^ 88
}

/*: "fromFreeCall" :*/
fileprivate let appTotalValue:String = "FROM"
fileprivate let app_becomeUrl:String = "hopl"

/*: "cmd" :*/
fileprivate let const_areaMsg:[UInt8] = [0xd8,0xd6,0xdf]

private func populationProfile(split num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "requestCall" :*/
fileprivate let user_atMsg:String = "REQUE"

/*: "data" :*/
fileprivate let kFoundationStr:[UInt8] = [0x15,0x10,0x5,0x10]

private func pendingNever(file num: UInt8) -> UInt8 {
    return num ^ 113
}

/*: "onRequestCall" :*/
fileprivate let notiSufficientSecondText:String = "protocol stop trust suit lengthonRe"
fileprivate let main_feedbackStreamId:[Character] = ["q","u","e","s","t","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum FirPropertyProtocol: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void
typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void

//: class TalkingCallMenuManager: NSObject {
class RedObjectProtocol: NSObject {
    /// 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    /// 音视频功能入口（source = "videoPop" 为男性邀请视频通话弹窗）
    //: var source = ""
    var source = ""
    /// 发起建立通话失败Block
    //: var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    /// 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(DismissReactiveCompatible.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(const_downFormat.prefix(4)) + "eFema" + String(constLocationKey.prefix(9)) + String(noti_towardValue.prefix(5)) + "rayKey_") + "\(DismissReactiveCompatible.share.loginUid)"

    //: deinit {
    deinit {
        //: if TalkingSocketManager.shared.videoMatchDelegate === self {
        if SantaLuciaFirSocketDelegate.shared.videoMatchDelegate === self {
            //: TalkingSocketManager.shared.videoMatchDelegate = nil
            SantaLuciaFirSocketDelegate.shared.videoMatchDelegate = nil
        }
        //: if TalkingSocketManager.shared.errorDelegate === self {
        if SantaLuciaFirSocketDelegate.shared.errorDelegate === self {
            //: TalkingSocketManager.shared.errorDelegate = nil
            SantaLuciaFirSocketDelegate.shared.errorDelegate = nil
        }
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension RedObjectProtocol {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func quickClick(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.enablece(showMsg: kLikeStr)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = DoingcePopView(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.amplitudeModulation(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = FirPropertyProtocol(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (noti_priceTitle.replacingOccurrences(of: "around", with: "C") + String(main_transactionKey.suffix(8))), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (noti_priceTitle.replacingOccurrences(of: "around", with: "C") + String(main_transactionKey.suffix(8))), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.smart(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            greetResistance(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func greetResistance(type: FirPropertyProtocol) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.charm()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.shortAccount()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func shortAccount(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.enablece(showMsg: kLikeStr)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        SpecialPermissionTool.visualAspect(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.enablece(showMsg: appMicUrl)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            SantaLuciaFirSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            SantaLuciaFirSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.socket(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func charm(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.enablece(showMsg: kLikeStr)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        SpecialPermissionTool.remainMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.enablece(showMsg: appMicUrl)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            SantaLuciaFirSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            SantaLuciaFirSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.socket(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension RedObjectProtocol {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func smart(type: FirPropertyProtocol, vipPrompt: String) {
        //: guard DismissReactiveCompatible.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard DismissReactiveCompatible.share.loginUserMode.status == AfterArtSumLiteral.normal.rawValue else {
            //: self.requestCall(type: type)
            self.greetResistance(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = data_partyText.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.greetResistance(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        data_partyText.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = TrailerThen(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.greetResistance(type: type)
        }
        //: alert.show()
        alert.gapThe()
    }
}

// MARK: - ManagingDirectorObjectProtocol, EnableceErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension RedObjectProtocol: ManagingDirectorObjectProtocol, EnableceErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func socket(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.enablece(showMsg: String(bytes: kActionValue.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid, "source": source]
        var data: [String: Any] = [String(bytes: show_communicationMsg.map{haveTick(shoulder: $0)}, encoding: .utf8)!: type, (showHouseAttentionValue.replacingOccurrences(of: "glass", with: "d")): uid, String(bytes: dataSitMessage.map{feePop(lock: $0)}, encoding: .utf8)!: source]
        //: let index = EnableFreeCallType.nor
        let index = PrimaryBasicType.nor
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (appTotalValue.lowercased() + "FreeC" + app_becomeUrl.replacingOccurrences(of: "hop", with: "al")))
            //: TalkingSocketManager.shared.isFreeCall = true
            SantaLuciaFirSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: const_areaMsg.map{populationProfile(split: $0)}, encoding: .utf8)!: (user_atMsg.lowercased() + "stCall"), String(bytes: kFoundationStr.map{pendingNever(file: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        SantaLuciaFirSocketDelegate.shared.amOrigin(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func aggregation(data: [String: Any]) {
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(showHouseAttentionValue.replacingOccurrences(of: "glass", with: "d"))] = self.uid
        //: DismissReactiveCompatible.share.start1v1TalkCall(info: newData)
        DismissReactiveCompatible.share.syllabus(info: newData)
        //: self.onReqestCallErrorBlock?(0)
        self.onReqestCallErrorBlock?(0)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func attributeSuspend(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func assemblage(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(notiSufficientSecondText.suffix(4)) + String(main_feedbackStreamId)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.enablece(showMsg: msg)
            //: self.onReqestCallErrorBlock?(errorNo)
            self.onReqestCallErrorBlock?(errorNo)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == BuildTitleConvertible.MoneyLack.rawValue {
                //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else { return }
                //: PushThen.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                PushThen.share.twoParams(clickEvent: userReplacePackageId, sufficient: false)
            }
        }
    }
}
