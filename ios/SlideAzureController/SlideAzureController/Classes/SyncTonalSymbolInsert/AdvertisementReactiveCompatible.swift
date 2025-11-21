
//: Declare String Begin

/*: "checkAndShowMaleInvitePopup_1" :*/
fileprivate let mainMemberMessage:String = "portfolioheportfolio"
fileprivate let constSurgeryFormat:String = "channel compare fatalowMaleIn"
fileprivate let noti_singleName:String = "VITE"

/*: "checkAndShowMaleInvitePopup_2" :*/
fileprivate let mainAssignForceTitle:String = "cpartnerec"
fileprivate let const_promptData:String = "Malecustomer sort explore eastern former"
fileprivate let dataRelatedKey:String = "tePolip shine bag"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvertisementReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

/// 男性邀请视频通话场景
//: let maleInviteCallSceneSEL_String_1 = "checkAndShowMaleInvitePopup_1"
let noti_userMarginPath = (mainMemberMessage.replacingOccurrences(of: "portfolio", with: "c") + "kAndSh" + String(constSurgeryFormat.suffix(8)) + noti_singleName.lowercased() + "Popup_1")
//: let maleInviteCallSceneSEL_String_2 = "checkAndShowMaleInvitePopup_2"
let user_firstId = (mainAssignForceTitle.replacingOccurrences(of: "partner", with: "h") + "kAndShow" + String(const_promptData.prefix(4)) + "Invi" + String(dataRelatedKey.prefix(4)) + "pup_2")

//: public class TalkingApplication: UIApplication {
public class AdvertisementReactiveCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false
    // 男性邀请通话弹窗
    //: var inviteCallView: MaleInviteCallView?
    var inviteCallView: LeadThen?
    //: private var callUid = ""
    private var callUid = ""
    //: private var callVideoUrl = ""
    private var callVideoUrl = ""
    //: private var callHeadPic = ""
    private var callHeadPic = ""

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        // 女性用户busy状态上报
        //: femaleBusyStatusReport()
        rewardFront()
        // 男性用户启动邀请弹窗逻辑
        //: showMaleInviteCallView_1()
        baptize()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension AdvertisementReactiveCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func rewardFront() {
        //: destroyTimer()
        accelerateTimer()
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue else { return }
        //: guard DismissReactiveCompatible.share.loginUid.count > 0 else { return }
        guard DismissReactiveCompatible.share.loginUid.count > 0 else { return }
        //: guard DismissReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard DismissReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isInfo && !TalkingSocketManager.shared.isCalling else { return }
        guard !ManagerPushListener.nowPanel().isLive, !SantaLuciaFirSocketDelegate.shared.isInfo, !SantaLuciaFirSocketDelegate.shared.isCalling else { return }
        //: if DismissReactiveCompatible.share.loginUserMode.videoAuth == "-1",
        if DismissReactiveCompatible.share.loginUserMode.videoAuth == "-1",
           //: DismissReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           DismissReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           //: DismissReactiveCompatible.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           DismissReactiveCompatible.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            upwardSegment(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.upwardSegment(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            upwardSegment(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func tickSh() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        accelerateTimer()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func upwardSegment(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        FlyerThen.lineUpOff(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.rewardFront()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func accelerateTimer() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}

// MARK: - 【男性用户邀请通话弹窗监听】

//: extension TalkingApplication {
extension AdvertisementReactiveCompatible {
    /// 场景一：停留在Hot页面、消息列表、我的页面 无任何操作
    //: func showMaleInviteCallView_1() {
    func baptize() {
        //: guard check_showMaleInvitePopup() else { return }
        guard popup() else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_1)
        nameless(selectorString: noti_userMarginPath)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_1)
        premiere(selectorString: noti_userMarginPath)
    }

    /// 场景一：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_1() {
    @objc private func checkAndShowMaleInvitePopup_1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard popup() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = exitSchedule() else { return }
        //: if vc is TalkingSocialViewController ||
        if vc is LimbReactiveCompatible ||
            //: vc is TalkingMessageViewController ||
            vc is RatingDisableThen ||
            //: vc is TalkingMeViewController {
            vc is EngineeringThen
        {
            //: showMaleInviteCallView()
            botAccess()
        }
    }

    /// 场景二/三：停留在某主播的动态详情页 或 个人主页（不管是否有操作）
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - videoUrl: 视频封面
    ///   - headPic: 头像
    //: func showMaleInviteCallView_2(uid: String, videoUrl: String, headPic: String) {
    func afterWith(uid: String, videoUrl: String, headPic: String) {
        //: guard check_showMaleInvitePopup() else { return }
        guard popup() else { return }
        //: guard uid != DismissReactiveCompatible.share.loginUserMode.userID else { return }
        guard uid != DismissReactiveCompatible.share.loginUserMode.userID else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_2)
        nameless(selectorString: user_firstId)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_2)
        premiere(selectorString: user_firstId)
        //: self.callUid = uid
        self.callUid = uid
        //: self.callVideoUrl = videoUrl
        self.callVideoUrl = videoUrl
        //: self.callHeadPic = headPic
        self.callHeadPic = headPic
    }

    /// 场景二/三：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_2() {
    @objc private func checkAndShowMaleInvitePopup_2() {
        //: guard check_showMaleInvitePopup() else { return }
        guard popup() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = exitSchedule() else { return }
        //: if vc is TalkingMomentDetailVC || vc is TalkingUserDetailViewController {
        if vc is WallRecognizerDelegate || vc is CoverViewDelegate {
            //: showMaleInviteCallView()
            botAccess()
        }
    }

    /// 展示男性邀请弹窗
    //: private func showMaleInviteCallView() {
    private func botAccess() {
        //: inviteCallView = MaleInviteCallView()
        inviteCallView = LeadThen()
        //: inviteCallView?.show(uid: self.callUid, videoUrl: self.callVideoUrl, headPic: self.callHeadPic)
        inviteCallView?.estimated(uid: self.callUid, videoUrl: self.callVideoUrl, headPic: self.callHeadPic)
        //: inviteCallView?.dismissBlock = { [weak self] in
        inviteCallView?.dismissBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.clearStatus()
            self.crystalClear()
        }
    }

    /// 判断是否应该展示男性邀请弹窗
    //: private func check_showMaleInvitePopup() -> Bool {
    private func popup() -> Bool {
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue,
              //: DismissReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              DismissReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              //: DismissReactiveCompatible.share.appUserConfigMode.inviteTimes > 0,
              DismissReactiveCompatible.share.appUserConfigMode.inviteTimes > 0,
              //: !TalkingSocketManager.shared.isInfo,
              !SantaLuciaFirSocketDelegate.shared.isInfo,
              //: !TalkingSocketManager.shared.isCalling,
              !SantaLuciaFirSocketDelegate.shared.isCalling,
              //: self.applicationState != .background,
              self.applicationState != .background,
              //: inviteCallView == nil else {
              inviteCallView == nil
        else {
            //: return false
            return false
        }

        //: return MaleInviteCallView.checkShowMaleInviteCallView()
        return LeadThen.visualizer()
    }

    /// 清除状态
    //: private func clearStatus() {
    private func crystalClear() {
        //: self.inviteCallView = nil
        self.inviteCallView = nil
        //: self.callUid = ""
        self.callUid = ""
        //: self.callVideoUrl = ""
        self.callVideoUrl = ""
        //: self.callHeadPic = ""
        self.callHeadPic = ""
    }

    /// 取消定时器
    /// - Parameter aSelector: 方法
    //: func cancelTimer(selectorString: String) {
    func nameless(selectorString: String) {
        //: self.clearStatus()
        self.crystalClear()
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: Selector(selectorString),
                                               selector: Selector(selectorString),
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启定时器
    /// - Parameter aSelector: 方法
    //: private func performTimer(selectorString: String) {
    private func premiere(selectorString: String) {
        //: perform(Selector(selectorString),
        perform(Selector(selectorString),
                //: with: nil,
                with: nil,
                //: afterDelay: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.inviteCall))
                afterDelay: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.inviteCall))
    }
}
