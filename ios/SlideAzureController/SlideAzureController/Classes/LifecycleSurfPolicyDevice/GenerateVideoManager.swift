
//: Declare String Begin

/*: "dist/loungePlus" :*/
fileprivate let mainFinancialMsg:String = "dist/false dominant telephone state"
fileprivate let userNightTipModeTitle:String = "would productiongePlus"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let dataWellUrl:String = "threshold compare stallmf/fr"
fileprivate let user_minuteTitle:String = "justice makeup distribute transport peoplell/getV"
fileprivate let main_enoughName:String = "ideoInfoperiod opportunity"

/*: "fromType" :*/
fileprivate let kMediaData:[UInt8] = [0xd8,0xe4,0xe1,0xdf,0xc6,0xeb,0xe2,0xd7]

fileprivate func broadcastCourse(replace num: UInt8) -> UInt8 {
    let value = Int(num) - 114
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "videoId" :*/
fileprivate let appAssistSaveJobMsg:[Character] = ["v","i","d","e","o","I"]
fileprivate let user_delayBiteMsg:String = "D"

/*: "uid" :*/
fileprivate let k_rankFormat:String = "UID"

/*: "type" :*/
fileprivate let constSortKey:String = "typlimit"

/*: "logId" :*/
fileprivate let const_errorFitKey:[Character] = ["l","o","g","I","d"]

/*: "duration" :*/
fileprivate let app_mayValue:String = "ply"
fileprivate let app_hiProposalValue:[Character] = ["r","a","t","i","o","n"]

/*: "stopUid" :*/
fileprivate let showMortalName:String = "production audience ret mm extensionstopUid"

/*: "mf/freeCall/operation" :*/
fileprivate let main_triggerTitle:String = "mf/fnut normally"
fileprivate let notiDevelopmentName:String = "question containll/ope"
fileprivate let appLinkKey:String = "given"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenerateVideoManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class GenerateVideoManager: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = RoughnessModel()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = GenerateVideoManager()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(self.stop_VideoCallTimer),
                                                   selector: #selector(self.designPrimary),
                                                   //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                                   name: kOnValue,
                                                   //: object: nil)
                                                   object: nil)
        }
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension GenerateVideoManager {
    //: private func distroryNotif() {
    private func sendWithoutNotif() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func aliveApp() {
        //: guard DismissReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
        guard DismissReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            sendWithoutNotif()
            //: return
            return
        }
        //: let arr = DismissReactiveCompatible.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = DismissReactiveCompatible.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: self.req_getVideoInfo()
        self.halfInfo()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.videoCallTimerPopView()
            self.city()
        }
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func canny() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: self.req_getVideoInfo()
            self.halfInfo()
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(videoCallTimerPopView), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(city), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: @objc private func videoCallTimerPopView() {
    @objc private func city() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if exitSchedule()?.isKind(of: PrimaryDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = exitSchedule() as! PrimaryDelegate
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(RelativeWeddingQuickLookable.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(mainFinancialMsg.prefix(5)) + "loun" + String(userNightTipModeTitle.suffix(6)))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if exitSchedule()?.isKind(of: LeaseFourErrorDelegate.self) == true || exitSchedule()?.isKind(of: NameureRatingViewController.self) == true {
            //: return
            return
        }
        //: stop_VideoCallTimer()
        designPrimary()
        /// 没有获取数据，不显示弹窗
        //: if self.videoCallModel.uid == 0, self.videoCallModel.videoId == 0 {
        if self.videoCallModel.uid == 0, self.videoCallModel.videoId == 0 {
            //: return
            return
        }
        //: if self.videoCallModel.popupCallAcceptEvent == 3 {
        if self.videoCallModel.popupCallAcceptEvent == 3 {
            //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
            OutletWindowManager.shared.dorsalVertebra()
            //: } else {
        } else {
            //: TalkingPopupWindowManager.shared.videoCallViewPopUpWindow()
            OutletWindowManager.shared.term()
        }
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func designPrimary() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension GenerateVideoManager {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func halfInfo() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(dataWellUrl.suffix(5)) + "eeCa" + String(user_minuteTitle.suffix(7)) + String(main_enoughName.prefix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: kMediaData.map{broadcastCourse(replace: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.canny()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.sendWithoutNotif()
                //: self.stop_VideoCallTimer()
                self.designPrimary()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = RoughnessModel.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = PackagingPlayListener()
            //: player.setMute(bEnable: true)
            player.scheduleColumn(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.loseTrack(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: let  player2 = TalkingVideoPlayerManager.init()
            let player2 = PackagingPlayListener()
            //: player2.setMute(bEnable: true)
            player2.scheduleColumn(bEnable: true)
            //: player2.playerWithUrlAndVideoView(url: self.videoCallModel.callVideoUrl, view: UIView.init())
            player2.loseTrack(url: self.videoCallModel.callVideoUrl, view: UIView())
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func requireCompletion(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(appAssistSaveJobMsg) + user_delayBiteMsg.lowercased())] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(k_rankFormat.lowercased())] = videoCallModel.uid
        //: dict["type"] = type
        dict[(constSortKey.replacingOccurrences(of: "limit", with: "e"))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(const_errorFitKey))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(app_mayValue.replacingOccurrences(of: "ply", with: "du") + String(app_hiProposalValue))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(showMortalName.suffix(7)))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(main_triggerTitle.prefix(4)) + "reeCa" + String(notiDevelopmentName.suffix(6)) + "rati" + appLinkKey.replacingOccurrences(of: "given", with: "on"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
