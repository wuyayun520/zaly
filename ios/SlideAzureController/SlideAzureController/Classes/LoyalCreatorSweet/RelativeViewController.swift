
//: Declare String Begin

/*: "live_ended" :*/
fileprivate let k_orangeTitle:[Character] = ["l","i","v","e","_","e","n","d","e","d"]

/*: "The live broadcast has ended" :*/
fileprivate let main_reasonBehindPath:String = "woman creation least goingThe l"
fileprivate let const_numberName:String = "ADCAS"
fileprivate let app_partnerBulletId:String = "enlogd"

/*: "bth_live_male_phone_nor" :*/
fileprivate let const_billYetValue:String = "bth_drop break delay that"
fileprivate let appNeedName:String = "maacte"
fileprivate let const_targetMessage:String = "onag"

/*: "floatingScreen" :*/
fileprivate let k_itsStr:String = "fassistant"
fileprivate let const_makeupMessage:String = "oattarng"

/*: "You have been muted" :*/
fileprivate let app_opTitle:String = "You havemortal center tissue"
fileprivate let appMarginBoyKey:[Character] = [" ","b","e"]
fileprivate let k_chanceId:String = "en mshared kind stage or"

/*: "You have entered the other party's blacklist" :*/
fileprivate let app_succeedMsg:[UInt8] = [0x74,0x73,0x69,0x6c,0x6b,0x63,0x61,0x6c,0x62,0x20,0x73,0x27,0x79,0x74,0x72,0x61,0x70,0x20,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x68,0x74,0x20,0x64,0x65,0x72,0x65,0x74,0x6e,0x65,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

/*: "Live room exception, please return to retry, if multiple failures please contact the staff" :*/
fileprivate let k_sStr:[UInt8] = [0x37,0x12,0xd,0x1e,0x5b,0x9,0x14,0x14,0x16,0x5b,0x1e,0x3,0x18,0x1e,0xb,0xf,0x12,0x14,0x15,0x57,0x5b,0xb,0x17,0x1e,0x1a,0x8,0x1e,0x5b,0x9,0x1e,0xf,0xe,0x9,0x15,0x5b,0xf,0x14,0x5b,0x9,0x1e,0xf,0x9,0x2,0x57,0x5b,0x12,0x1d,0x5b,0x16,0xe,0x17,0xf,0x12,0xb,0x17,0x1e,0x5b,0x1d,0x1a,0x12,0x17,0xe,0x9,0x1e,0x8,0x5b,0xb,0x17,0x1e,0x1a,0x8,0x1e,0x5b,0x18,0x14,0x15,0xf,0x1a,0x18,0xf,0x5b,0xf,0x13,0x1e,0x5b,0x8,0xf,0x1a,0x1d,0x1d]

private func scoreMode(glass num: UInt8) -> UInt8 {
    return num ^ 123
}

/*: "isCalling" :*/
fileprivate let mainCommentStr:[Character] = ["i","s","C","a","l","l","i","n"]
fileprivate let k_mediaPath:[Character] = ["g"]

 
//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RelativeViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: enum LiveEnterType {
enum SightEnterType {
    //: case unknown
    case unknown // 默认，无需埋点统计
    //: case userDetail
    case userDetail // 个人资料
    //: case match
    case match // 速配
}

//: class TalkingLivePullStreamsViewController: TalkingBaseViewController {
class RelativeViewController: WeddingLovelyRecognizerDelegate {
    //: var type = LiveEnterType.userDetail
    var type = SightEnterType.userDetail // 入口
    //: var isShowKeyboard = false
    var isShowKeyboard = false // 键盘是否在显示
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var needReconnect = false
    private var needReconnect = false // 恢复网络是否需要重连

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        privacy()
        //: setupSubViewsConstraint()
        dialogLibrary()
        //: bindInteraction()
        celluloid()
        //: playLiveVideo()
        burnOpposite()
        //: req_enterRoomInfo()
        recentAntechamber()
        //: TalkingDanmuManager.shared().delegate = self
        TotalensitySpillDecisionMakerDanmuManager.reader().delegate = self
        //: V2TIMManager.sharedInstance().addGroupListener(listener: self)
        V2TIMManager.sharedInstance().addGroupListener(listener: self)
    }

    //: deinit {
    deinit {
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var player: TXLivePlayer = {
    private lazy var player: TXLivePlayer = {
        //: var player = TXLivePlayer()
        var player = TXLivePlayer()
        //: player.delegate = self
        player.delegate = self
        //: player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = {
    private lazy var videoCallManager: RedObjectProtocol = {
        //: let m = TalkingCallMenuManager()
        let m = RedObjectProtocol()
        //: m.uid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        m.uid = String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid)
        //: return m
        return m
        //: }()
    }()

    //: private lazy var stopLiveBgView: UIView = {
    private lazy var stopLiveBgView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        //: bg.isHidden = true
        bg.isHidden = true
        // icon
        //: let icon = UIImageView(image: UIImage.BundleImageNamed(name: "live_ended"))
        let icon = UIImageView(image: UIImage.locationName(name: (String(k_orangeTitle))))
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 205))
            make.top.equalTo(dataPointTitle + actualWidth(w: 205))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 52))
            make.width.height.equalTo(actualWidth(w: 52))
        }
        // title
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.8)
        lab.textColor = UIColor.white.withAlphaComponent(0.8)
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.pingfang(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "The live broadcast has ended".localized
        lab.text = (String(main_reasonBehindPath.suffix(5)) + "ive bro" + const_numberName.lowercased() + "t has " + app_partnerBulletId.replacingOccurrences(of: "log", with: "de")).localized
        //: bg.addSubview(lab)
        bg.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(30)
            make.top.equalTo(icon.snp.bottom).offset(30)
            //: make.centerX.width.equalToSuperview()
            make.centerX.width.equalToSuperview()
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: AdReactiveCompatible = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = AdReactiveCompatible(frame: .zero)
        //: view.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        view.miniskirt(ManagerPushListener.nowPanel().liveRoomModel)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: RangeView = {
        //: let text = TalkingLiveRoomInputView.init()
        let text = RangeView()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: EndView = {
        //: let view = TalkingDanmuMsgListTableView.init()
        let view = EndView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "bth_live_male_phone_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_billYetValue.prefix(4)) + "live_" + appNeedName.replacingOccurrences(of: "act", with: "l") + "_phone_n" + const_targetMessage.replacingOccurrences(of: "nag", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(stageFor), for: .touchUpInside)
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue &&
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue &&
            //: DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
            DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue
        {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: TickGenerateView = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = TickGenerateView()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: RatingTrackView = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = RatingTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: private lazy var topView: TalkingLiveRoomTopView = {
    private lazy var topView: ViewReactiveCompatible = {
        //: let v = TalkingLiveRoomTopView()
        let v = ViewReactiveCompatible()
        //: v.weakVC = self
        v.weakVC = self
        //: v.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        v.wind(ManagerPushListener.nowPanel().liveRoomModel)
        //: v.rightBtnBlock = { [weak self] in
        v.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
            //: self.popCurrentViewController()
            self.creation()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var floatScreenView: TalkingFloatScreenView = {
    private lazy var floatScreenView: AbsoluteRecognizerDelegate = { // 飘屏
        //: let v = TalkingFloatScreenView()
        let v = AbsoluteRecognizerDelegate()
        //: v.isHidden = (DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 播放直播内容
    //: @objc private func playLiveVideo() {
    @objc private func burnOpposite() {
        //: needReconnect = false
        needReconnect = false
        //: stopLiveBgView.isHidden = true
        stopLiveBgView.isHidden = true
        //: self.player.startLivePlay(TalkingLiveManager.shared().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        self.player.startLivePlay(ManagerPushListener.nowPanel().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
    }

    /// 加入弹幕
    //: func req_enterRoomInfo() {
    func recentAntechamber() {
        //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, announcementMsg: TalkingLiveManager.shared().liveRoomModel.notification)
        TotalensitySpillDecisionMakerDanmuManager.feedbackCompletion(groupId: ManagerPushListener.nowPanel().liveRoomModel.chatGroupId, announcementMsg: ManagerPushListener.nowPanel().liveRoomModel.notification)

        //: self.bottomView.toUid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        self.bottomView.toUid = String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid)
    }

    /// 退出房间
    //: func req_quitGroup() {
    func feedPullThePlug() {
        /// 退出弹幕房间
        //: V2TIMManager.sharedInstance().quitGroup(TalkingLiveManager.shared().liveRoomModel.chatGroupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(ManagerPushListener.nowPanel().liveRoomModel.chatGroupId, succ: {
            //: }, fail: { code, str in
        }, fail: { _, _ in
            //: })
        })
    }
}

// MARK: - 弹幕通知事件

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    //: @objc func danmuMoveTop() {
    @objc func materialFit() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(main_nameData - showFileTitle - bottomView.height - appInviteValue))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func caller() {
        //: var ishave = 0
        var ishave = 0
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: SmallControllerDelegate.self) || vc.isKind(of: BibliographyViewDelegate.self) {
                //: ishave += 1
                ishave += 1
            }
        }
        //: if ishave == 0 {
        if ishave == 0 {
            //: danmuView.snp.updateConstraints { make in
            danmuView.snp.updateConstraints { make in
                //: make.bottom.equalTo(bottomView.snp.top)
                make.bottom.equalTo(bottomView.snp.top)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 拨打音视频通话
    //: @objc private func callButtonClick() {
    @objc private func stageFor() {
        //: var videoStr = TalkingLiveManager.shared().liveRoomModel.videoPrice
        var videoStr = ManagerPushListener.nowPanel().liveRoomModel.videoPrice
        //: var voiceStr = TalkingLiveManager.shared().liveRoomModel.voicePrice
        var voiceStr = ManagerPushListener.nowPanel().liveRoomModel.voicePrice
        //: if DismissReactiveCompatible.share.loginUserMode.loungePlus {
        if DismissReactiveCompatible.share.loginUserMode.loungePlus {
            //: videoStr = TalkingLiveManager.shared().liveRoomModel.videoVIPPrice
            videoStr = ManagerPushListener.nowPanel().liveRoomModel.videoVIPPrice
            //: voiceStr = TalkingLiveManager.shared().liveRoomModel.voiceVIPPrice
            voiceStr = ManagerPushListener.nowPanel().liveRoomModel.voiceVIPPrice
        }
        //: videoCallManager.showVideoCallMenu(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")
        videoCallManager.quickClick(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")

        // 埋点
        //: switch self.type {
        switch self.type {
        //: case .match:
        case .match:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            const_pathMsg.tabKeep(eventID: data_guidePath, toUid: String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid))

        //: case .userDetail:
        case .userDetail:
            //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            const_pathMsg.tabKeep(eventID: show_onStr, toUid: String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid))

        //: case .unknown: break
        case .unknown: break
        }
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func creation(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.haltCos()
        //: req_quitGroup()
        feedPullThePlug() // 退出群聊
        //: TalkingLiveManager.destroy()
        ManagerPushListener.analysisDestroy() // 销毁单例
        //: TalkingDanmuManager.shared().delegate = nil
        TotalensitySpillDecisionMakerDanmuManager.reader().delegate = nil
        //: self.player.stopPlay()
        self.player.stopPlay()
        //: self.player.removeVideoWidget()
        self.player.removeVideoWidget()

        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = exitSchedule() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.creation()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func voiceValue(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(k_itsStr.replacingOccurrences(of: "assistant", with: "l") + const_makeupMessage.replacingOccurrences(of: "tar", with: "i") + "Screen")]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = DismissModelType.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.awake(model)
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomBottomViewDelegate {
extension RelativeViewController: BlendViewDelegate {
    //: func func__commentBtnClick() {
    func quitLimited() {
        //: if Int(Date().timeIntervalSince1970) < TalkingLiveManager.shared().liveRoomModel.muteExpireAt {
        if Int(Date().timeIntervalSince1970) < ManagerPushListener.nowPanel().liveRoomModel.muteExpireAt {
            //: self.func__showStatusBarErrorMsg(showMsg: "You have been muted".localized)
            self.enablece(showMsg: (String(app_opTitle.prefix(8)) + String(appMarginBoyKey) + String(k_chanceId.prefix(4)) + "uted").localized)
            //: return
            return
        }
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.refuseRecording()
    }
}

// MARK: - RegularManagerDelegate

//: extension TalkingLivePullStreamsViewController: TalkingDanmuManagerDelegate {
extension RelativeViewController: RegularManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func oldByMsg(Msg: AfterHandyJSON) {
        //: addGiftEffectModelArr(Msg: Msg)
        single(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func choice(Msg: AfterHandyJSON) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.subjectMatterModel(msgModel: Msg)
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func array(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: let view = TalkingLiveUserCardView.init(frame: self.view.frame, uid: pushUid ?? "")
        let view = TransferViewDelegate(frame: self.view.frame, uid: pushUid ?? "")
        //: view.delegate = self
        view.delegate = self
        //: view.show()
        view.lock()
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func disassembleUid(nickName: String, atUid: String?) {
        //: guard !isShowKeyboard else {
        guard !isShowKeyboard else {
            //: return
            return
        }
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.ditBridge(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func humiliation() {}

    //: func func__userLogout() {}
    func opend() {}
}

// MARK: - DelegateObjectProtocol 资料卡

//: extension TalkingLivePullStreamsViewController: TalkingLiveUserCardViewDelegate {
extension RelativeViewController: DelegateObjectProtocol {
    //: func func__atUserClick(uid: String, nickname: String) {
    func fashionNeedAppear(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.ditBridge(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func single(Msg: AfterHandyJSON) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in MotivationThen.share.beyondGet() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [FenceTransformable]
        }
        //: let giftModel = Msg.gift
        let giftModel = Msg.gift
        //: if giftModel != nil {
        if giftModel != nil {
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel!)
            giftTrackView.modelSource(model: giftModel!)
            //: giftEffectView.addGiftAnimatModelArr(modelArr: [giftModel!])
            giftEffectView.framework(modelArr: [giftModel!])
        }
    }
}

/// 屏幕点击事件
//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.view)
        var point = touch.location(in: self.view)
        //: point = commInputView.layer.convert(point, from: self.view.layer)
        point = commInputView.layer.convert(point, from: self.view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 发表弹幕代理

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomInputViewDelegate {
extension RelativeViewController: ReserveThen {
    //: @objc func dismissClick() {
    @objc func representative() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.taAttach()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func stackSpace(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        underOkUid(msgStr: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func breakOn(heightToBottom: CGFloat) {
        /// 半屏页打开时，不改变弹幕位置
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: SmallControllerDelegate.self) || vc.isKind(of: BibliographyViewDelegate.self) {
                //: return
                return
            }
        }
        //: isShowKeyboard = heightToBottom != 0 ? true : false
        isShowKeyboard = heightToBottom != 0 ? true : false
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: let height = heightToBottom == 0 ? 0 : -(heightToBottom-bottomView.height+commInputView.height-kDeviceSafeBottomHeight)
            let height = heightToBottom == 0 ? 0 : -(heightToBottom - bottomView.height + commInputView.height - appInviteValue)
            //: make.bottom.equalTo(bottomView.snp.top).offset(height)
            make.bottom.equalTo(bottomView.snp.top).offset(height)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func soundingBoardPoint(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 发送文本消息
    //: func sendToTextMsg(msgStr: String, toUid: String?) {
    func underOkUid(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        TotalensitySpillDecisionMakerDanmuManager.dimension(groupId: ManagerPushListener.nowPanel().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

///  V2TIMGroupListener 弹幕房间
//: extension TalkingLivePullStreamsViewController: V2TIMGroupListener {
extension RelativeViewController: V2TIMGroupListener {
    /// 被主播拉黑后，禁言退出房间
    //: func onMemberInfoChanged(_ groupID: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
    func onMemberInfoChanged(_: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
        //: if changeInfoList.first?.userID == DismissReactiveCompatible.share.loginUserMode.userID {
        if changeInfoList.first?.userID == DismissReactiveCompatible.share.loginUserMode.userID {
            //: let toastStr = "You have entered the other party's blacklist".localized
            let toastStr = String(bytes: app_succeedMsg.reversed(), encoding: .utf8)!.localized
            //: ProgressHUD.toast(toastStr)
            InsertProgressHUD.overDeadline(toastStr)
            //: popCurrentViewController()
            creation()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func shift() {
        //: self.player.setMute(true)
        self.player.setMute(true)
    }
}

// MARK: - 网络监听通知

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 网络监听通知
    //: @objc func reachabilityChanged(note: Notification) {
    @objc func menuNote(note: Notification) {
        //: guard needReconnect == true else { return }
        guard needReconnect == true else { return }
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: playLiveVideo()
            burnOpposite()
        }
    }
}

// MARK: - TXLivePlayListener【直播拉流监听】

//: extension TalkingLivePullStreamsViewController: TXLivePlayListener {
extension RelativeViewController: TXLivePlayListener {
    //: func onPlayEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: if evtID == PLAY_EVT_PLAY_END.rawValue {
        if evtID == PLAY_EVT_PLAY_END.rawValue { // 播放结束
            //: stopLiveBgView.isHidden = false
            stopLiveBgView.isHidden = false

            //: } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue {
        } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue { // 经过三次重试并且未能重连成功
            //: if DismissReactiveCompatible.share.networkStatus == .Unavailable {
            if DismissReactiveCompatible.share.networkStatus == .Unavailable {
                //: needReconnect = true
                needReconnect = true
                //: } else {
            } else {
                //: stopLiveBgView.isHidden = false
                stopLiveBgView.isHidden = false
            }

            //: } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
        } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            //: evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue {
            evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue
        { // 观众侧拉流失败，退出直播间
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception, please return to retry, if multiple failures please contact the staff".localized)
            self.enablece(showMsg: String(bytes: k_sStr.map{scoreMode(glass: $0)}, encoding: .utf8)!.localized)
            //: popCurrentViewController()
            creation()
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}
}

// MARK: - Layout

//: extension TalkingLivePullStreamsViewController {
extension RelativeViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func privacy() {
        //: self.view.backgroundColor = .appTitleColor()
        self.view.backgroundColor = .dialog()
        //: self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)
        self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)

        //: view.addSubview(stopLiveBgView)
        view.addSubview(stopLiveBgView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(callBtn)
        view.addSubview(callBtn)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dialogLibrary() {
        //: stopLiveBgView.snp.makeConstraints { make in
        stopLiveBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(appInviteValue + 10))
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
        }
        //: danmuView.snp.makeConstraints { make in
        danmuView.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top )
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(MsgTableViewHeight)
            make.height.equalTo(k_lessName)
            //: make.width.equalTo(MsgTableViewWidth)
            make.width.equalTo(mainObjectPath)
        }
        //: floatScreenView.snp.makeConstraints { make in
        floatScreenView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(-20)
            make.top.equalTo(topView.snp.bottom).offset(-20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(90)
            make.height.equalTo(90)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-20)
            make.bottom.equalTo(bottomView.snp.top).offset(-20)
            //: make.width.height.equalTo(actualWidth(w: 67))
            make.width.height.equalTo(actualWidth(w: 67))
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(self.view)
            make.leading.equalTo(self.view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-k_lessName)
        }
    }

    /// 事件绑定
    //: func bindInteraction() {
    func celluloid() {
        // 网络状态监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(menuNote(note:)),
                                               //: name: .reachabilityChanged,
                                               name: .reachabilityChanged,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(shift),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: show_logData,
                                               //: object: nil)
                                               object: nil)

        // 主播开播通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(playLiveVideo),
                                               selector: #selector(burnOpposite),
                                               //: name: LIVE_RECIVE_STARTLIVE_NOTIFICATION,
                                               name: show_dismissId,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(materialFit),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: data_mineSaltStr,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(caller),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: noti_countProductionStr,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(voiceValue(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: showSenseId,
                                               //: object: nil)
                                               object: nil)

        // 音视频呼叫时，直播间静音
        //: TalkingSocketManager.shared.rx
        SantaLuciaFirSocketDelegate.shared.rx
            //: .observeWeakly(Bool.self, "isCalling")
            .observeWeakly(Bool.self, (String(mainCommentStr) + String(k_mediaPath)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == true {
                if value == true {
                    //: self.player.setMute(true)
                    self.player.setMute(true)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 音视频通话时，直播间静音
        //: TalkingSocketManager.shared.rx
        SantaLuciaFirSocketDelegate.shared.rx
            .observeWeakly(Bool.self, "isInfo")
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.player.setMute(value ?? false)
                self.player.setMute(value ?? false)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
