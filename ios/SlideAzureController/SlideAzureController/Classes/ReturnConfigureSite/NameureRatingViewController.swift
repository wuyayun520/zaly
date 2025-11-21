
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userCharacterPath:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

private func ticketBind(about num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "Continue matching with other users？" :*/
fileprivate let noti_relationData:[UInt8] = [0x82,0xae,0xaf,0xb5,0xa8,0xaf,0xb4,0xa4,0xe1,0xac,0xa0,0xb5,0xa2,0xa9,0xa8,0xaf,0xa6,0xe1,0xb6,0xa8,0xb5,0xa9,0xe1,0xae,0xb5,0xa9,0xa4,0xb3,0xe1,0xb4,0xb2,0xa4,0xb3,0xb2,0x2e,0x7d,0x5e]

private func armRestriction(link num: UInt8) -> UInt8 {
    return num ^ 193
}

/*: "Yes" :*/
fileprivate let mainVideoData:String = "river click openYes"

/*: "robotVideoNum" :*/
fileprivate let k_resignStr:[Character] = ["r","o","b","o","t"]
fileprivate let const_everyoneValue:String = "Viexactly hung smooth why initial"
fileprivate let noti_narrowMsg:String = "permission new recommend auto satisfydeoNum"

/*: "freeCallTimes" :*/
fileprivate let kDueData:String = "bagree"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameureRatingViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class NameureRatingViewController: WeddingLovelyRecognizerDelegate {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: IceChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: SpecialEndMiniView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = RatingPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userCharacterPath.map{ticketBind(about: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as? TalkingNavigationController
        let nav = self.navigationController as? TicktockViewController
        //: nav?.protectedPushVc = nil
        nav?.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currInfoVC = nil
            SantaLuciaFirSocketDelegate.shared.currInfoVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.searched(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isInfo = true
        SantaLuciaFirSocketDelegate.shared.isInfo = true
        //: setupSubviews()
        historyBridge()
        //: setupSubViewsConstraint()
        conversationConstraint()
        //: req_callGetUserInfo()
        pageScript()
        //: self.startPreview()
        self.feedbackIn()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.storageReward()
        //: self.player?.removeVideoWidget()
        self.player?.since()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isInfo = false
        SantaLuciaFirSocketDelegate.shared.isInfo = false
        //: TalkingSocketManager.shared.isCalling = false
        SantaLuciaFirSocketDelegate.shared.isCalling = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: RunningView = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = RunningView(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(GenerateVideoManager.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: DevoteThen = {
        //: let v = TalkingVideoWindowView()
        let v = DevoteThen()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: main_logStr - 15 - actualWidth(w: 125), y: dataPointTitle + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.quantityerruptMenu()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: SmallThen = {
        //: let m = TalkingVideoInitivCallTool()
        let m = SmallThen()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: PackagingPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = PackagingPlayListener()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension NameureRatingViewController {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func pageScript() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = IceChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isInfoNow = true
        self.chatModel?.isInfoNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.loseTrack(url: GenerateVideoManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.panelChoice()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension NameureRatingViewController {
    /// 预览视频画面
    //: private func startPreview() {
    private func feedbackIn() {
        //: self.videoManager.startPreview()
        self.videoManager.panelChoice()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func confinesAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func quantityerruptMenu() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.statView()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension NameureRatingViewController: BilliardPlayerThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            const_pathMsg.tabKeep(eventID: show_meFormat)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func tillChannelTime(player _: PackagingPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func funcCompareProgress(player _: PackagingPlayListener, progress _: CGFloat) {}
}

// MARK: - HiddenObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension NameureRatingViewController: HiddenObjectProtocol {
    //: func interactionView_reportSucceed() {
    func declaration() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func browsing() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func sumerplay() {
        //: TalkingAlertShow.hideAlert()
        AllowanceReactiveCompatible.minuteOriginBridge()
        //: if self.isRandomVCPush && !interactionView.isAutoCloseView {
        if self.isRandomVCPush && !interactionView.isAutoCloseView {
            //: TalkingAlertShow.alert(title: nil, message: "Continue matching with other users？".localized, leftBtnTitle: "No".localized, rightBtnTitle: "Yes".localized, leftBlock: {
            AllowanceReactiveCompatible.maximal(title: nil, message: String(bytes: noti_relationData.map{armRestriction(link: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "No".localized, rightBtnTitle: (String(mainVideoData.suffix(3))).localized, leftBlock: {
                //: self.randowCallIsEndTool(isNewRandow: false)
                self.dotEnter(isNewRandow: false)
                //: }, rightBlock: {
            }, rightBlock: {
                //: self.randowCallIsEndTool(isNewRandow: true)
                self.dotEnter(isNewRandow: true)
                //: })
            })
            //: return
            return
        }
        //: interactionViewEndCall(isPush: false)
        larva(isPush: false)
        //: popCurrentViewController()
        confinesAnimated()
    }

    //: func interactionViewEndCall(isPush: Bool) {
    func larva(isPush: Bool) {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currInfoVC = nil
            SantaLuciaFirSocketDelegate.shared.currInfoVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = GenerateVideoManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : DismissReactiveCompatible.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(GenerateVideoManager.shared.videoCallModel.uid)" : DismissReactiveCompatible.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        GenerateVideoManager.shared.requireCompletion(type: 2, duration: duration, stopUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: DismissReactiveCompatible.share.loginUserMode.robotVideoNum = json["robotVideoNum"].intValue
            DismissReactiveCompatible.share.loginUserMode.robotVideoNum = json[(String(k_resignStr) + String(const_everyoneValue.prefix(2)) + String(noti_narrowMsg.suffix(6)))].intValue
            //: DismissReactiveCompatible.share.loginUserMode.freeCallTimes = json["freeCallTimes"].intValue
            DismissReactiveCompatible.share.loginUserMode.freeCallTimes = json[(kDueData.replacingOccurrences(of: "bag", with: "f") + "CallTimes")].intValue
            /// 结束通话，改变通话状态才进行下次匹配
            //: if isPush {
            if isPush {
                //: NotificationCenter.default.post(name: MATCHVIDEOCALL_END_NOTIFICATION, object: nil)
                NotificationCenter.default.post(name: userWorkValue, object: nil)
            }
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            const_pathMsg.tabKeep(eventID: show_meFormat)
        }

        //: PushThen.share.func__jumpVideoCallToWebRecharge(popupCallIndex: DismissReactiveCompatible.share.appUserConfigMode.popupCallEndEvent)
        PushThen.share.manner(popupCallIndex: DismissReactiveCompatible.share.appUserConfigMode.popupCallEndEvent)

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.exitSchedule()?.isKind(of: PrimaryDelegate.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.exitSchedule() as! PrimaryDelegate
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
            }
        }
    }

    /// 随机匹配通话挂断时
    //: func randowCallIsEndTool(isNewRandow: Bool) {
    func dotEnter(isNewRandow: Bool) {
        //: if !isNewRandow{
        if !isNewRandow {
            //: interactionViewEndCall(isPush: false)
            larva(isPush: false)
            //: if let targetVC = navigationController?.viewControllers.first(where: { $0 is RandomMatchVC }) {
            if let targetVC = navigationController?.viewControllers.first(where: { $0 is AdvertizingReactiveCompatible }) {
                //: navigationController?.viewControllers = [targetVC]
                navigationController?.viewControllers = [targetVC]
                //: navigationController?.popToViewController(targetVC, animated: false)
                navigationController?.popToViewController(targetVC, animated: false)
            }
            //: }else {
        } else {
            //: interactionViewEndCall(isPush: true)
            larva(isPush: true)
            //: popCurrentViewController()
            confinesAnimated()
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func crunch(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.currentCamera(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func camera(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.resort(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func recital() {
        //: TalkingSocketManager.shared.currInfoVC = self
        SantaLuciaFirSocketDelegate.shared.currInfoVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = SpecialEndMiniView.op()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.schedule()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.doMidget()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.statView()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.exitSchedule()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        confinesAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension NameureRatingViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func historyBridge() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.compound(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func conversationConstraint() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
