
//: Declare String Begin

/*: "uid" :*/
fileprivate let app_finiteUrl:[Character] = ["u","i","d"]

/*: "floatingScreen" :*/
fileprivate let kBeginData:String = "floatrip"
fileprivate let const_nextFormat:String = "double audience look awake longgScreen"

/*: "MF:LiveChatMsg" :*/
fileprivate let main_observerMsg:String = "MF:Lcookie near remove revenue between"
fileprivate let kFrontId:String = "swing wind forehead be connecthatMs"
fileprivate let userHeFormat:[Character] = ["g"]

/*: "MF:LiveChatMentionMsg" :*/
fileprivate let noti_shadowGenderFormat:String = "MF:Livshare bone between thing select"
fileprivate let data_recommendationTitle:String = "region sound distinctive yourselfMent"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let show_yourselfMsg:String = "star observe bullet have orMF:L"
fileprivate let notiNearbyMsg:String = "hatGieffect transition ref customer portrait"
fileprivate let const_structureFormat:String = "ftMsgword join merely"

/*: "LiveGift_ :*/
fileprivate let constThirdId:[Character] = ["L","i","v","e","G","i","f","t","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WritingViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: class TalkingLiveBeautifyViewController: TalkingBaseViewController {
class WritingViewDelegate: WeddingLovelyRecognizerDelegate {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        offSubviews()
        //: setupSubViewsConstraint()
        manage()
        //: initNotifacation()
        tarPresentation()
        //: TalkingDanmuManager.shared().delegate = self
        TotalensitySpillDecisionMakerDanmuManager.reader().delegate = self
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        agent()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频渲染视图
    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: AdReactiveCompatible = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = AdReactiveCompatible(frame: .zero)
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

    //: lazy var topView: TalkingLiveRoomTopView = {
    lazy var topView: ViewReactiveCompatible = {
        //: let view = TalkingLiveRoomTopView()
        let view = ViewReactiveCompatible()
        //: view.weakVC = self
        view.weakVC = self
        //: view.rightBtnBlock = { [weak self] in
        view.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
        }
        //: return view
        return view
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

// 通知
//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
    //: func initNotifacation() {
    func tarPresentation() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(effectUponLiquidAssets),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: data_mineSaltStr,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(beforePair),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: noti_countProductionStr,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(blockUserExitRoom(notification:)),
                                               selector: #selector(vidSwitchd(notification:)),
                                               //: name: LIVE_BLOCK_USER_NOTIFICATION,
                                               name: user_popValue,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(hold(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: showSenseId,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func danmuMoveTop() {
    @objc func effectUponLiquidAssets() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(main_nameData - showFileTitle - bottomView.height - appInviteValue))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func beforePair() {
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

    /// 拉黑用户踢出房间
    //: @objc func blockUserExitRoom(notification: NSNotification) -> Void {
    @objc func vidSwitchd(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid = userinfo["uid"] as? String
        let uid = userinfo[(String(app_finiteUrl))] as? String

        //: if String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUserMode.userID {
        if String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUserMode.userID {
            //: V2TIMManager.sharedInstance().muteGroupMember(TalkingLiveManager.shared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
            V2TIMManager.sharedInstance().muteGroupMember(ManagerPushListener.nowPanel().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
                //: } fail: { code, decstr in
            } fail: { _, _ in
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func hold(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(kBeginData.replacingOccurrences(of: "rip", with: "in") + String(const_nextFormat.suffix(7)))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = DismissModelType.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.awake(model)
        }
    }
}

// MARK: - Request

//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
    /// 停止直播
    //: private func req_stopLive() {
    private func shackUpLimit() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        ManagerPushListener.tabCollection(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            ManagerPushListener.nowPanel().translation()
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomBottomViewDelegate {
extension WritingViewDelegate: BlendViewDelegate {
    //: func func__commentBtnClick() {
    func quitLimited() {
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.refuseRecording()
    }
}

// MARK: - RegularManagerDelegate

//: extension TalkingLiveBeautifyViewController: TalkingDanmuManagerDelegate {
extension WritingViewDelegate: RegularManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func oldByMsg(Msg: AfterHandyJSON) {
        //: addGiftEffectModelArr(Msg: Msg)
        attachDown(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func choice(Msg: AfterHandyJSON) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.subjectMatterModel(msgModel: Msg)
        // 展示未读消息提醒标识(文本、@、礼物)
        //: if Msg.MsgExtension == "MF:LiveChatMsg" ||
        if Msg.MsgExtension == (String(main_observerMsg.prefix(4)) + "iveC" + String(kFrontId.suffix(5)) + String(userHeFormat)) ||
            //: Msg.MsgExtension == "MF:LiveChatMentionMsg" ||
            Msg.MsgExtension == (String(noti_shadowGenderFormat.prefix(6)) + "eChat" + String(data_recommendationTitle.suffix(4)) + "ionMsg") ||
            //: Msg.MsgExtension == "MF:LiveChatGiftMsg" {
            Msg.MsgExtension == (String(show_yourselfMsg.suffix(4)) + "iveC" + String(notiNearbyMsg.prefix(5)) + String(const_structureFormat.prefix(5)))
        {
            //: TalkingLiveManager.shared().updateUnredMessageCount()
            ManagerPushListener.nowPanel().wire()
        }
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
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.ditBridge(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func humiliation() {}

    //: func func__userLogout() {}
    func opend() {}
}

// MARK: - DelegateObjectProtocol 资料卡

//: extension TalkingLiveBeautifyViewController: TalkingLiveUserCardViewDelegate {
extension WritingViewDelegate: DelegateObjectProtocol {
    //: func func__atUserClick(uid: String, nickname: String) {
    func fashionNeedAppear(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.ditBridge(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
    /// 加载之前动画
    //: func initCachEffectData() {
    func agent() {
        //: let toUid = "LiveGift_\(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)"
        let toUid = (String(constThirdId)) + "\(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.thenMakeupId(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func attachDown(Msg: AfterHandyJSON) {
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
//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
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

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomInputViewDelegate {
extension WritingViewDelegate: ReserveThen {
    //: @objc func dismissClick() {
    @objc func pageRecording() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.taAttach()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func stackSpace(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        rankUid(msgStr: msgStr, toUid: atUid)
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
    func rankUid(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        TotalensitySpillDecisionMakerDanmuManager.dimension(groupId: ManagerPushListener.nowPanel().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

// MARK: - Event

//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
    /// 开播成功，刷新直播间
    //: func refreshLiveRoomView() {
    func grassroots() {
        //: topView.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        topView.wind(ManagerPushListener.nowPanel().liveRoomModel)
        //: bottomView.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        bottomView.miniskirt(ManagerPushListener.nowPanel().liveRoomModel)
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func hiFlat(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.haltCos()
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = exitSchedule() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.hiFlat()
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
}

// MARK: - Layout

//: extension TalkingLiveBeautifyViewController {
extension WritingViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func offSubviews() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.addSubview(topView.svgaView)
        view.addSubview(topView.svgaView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func manage() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
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
            //: make.bottom.equalTo(bottomView.snp.top)
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
}
