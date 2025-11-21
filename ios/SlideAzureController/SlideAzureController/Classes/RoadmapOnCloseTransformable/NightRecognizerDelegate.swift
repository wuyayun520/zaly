
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainEnjoyData:[UInt8] = [0x75,0x72,0x75,0x68,0x34,0x7f,0x73,0x78,0x79,0x6e,0x26,0x35,0x3c,0x74,0x7d,0x6f,0x3c,0x72,0x73,0x68,0x3c,0x7e,0x79,0x79,0x72,0x3c,0x75,0x71,0x6c,0x70,0x79,0x71,0x79,0x72,0x68,0x79,0x78]

private func shrinkTransferTrack(dit num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "bth_me_videocall_nor" :*/
fileprivate let show_lowKey:String = "bth_meauto image gallery rid related"
fileprivate let noti_frontUrl:String = "eoanimaa"
fileprivate let noti_lovelyDarkData:String = "following"

/*: "icon_videocall_nor" :*/
fileprivate let data_helpTillExpenseId:String = "icon_vismall flat muscle"
fileprivate let data_assistLivingMsg:String = "DEO"
fileprivate let appSpaceId:String = "eyebrowall"

/*: "Video Call" :*/
fileprivate let appDeliveryText:[Character] = ["V","i","d","e","o"," "]
fileprivate let userRocketKey:String = "tar lite sum serviceCall"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NightRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMomentVideoVC: TalkingBaseViewController {
class NightRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: var videoCallBlock: (() -> Void)?
    var videoCallBlock: (() -> Void)? // 音视频通话回调
    //: var isHideBotton = true
    var isHideBotton = true
    //: var uid = ""
    var uid = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var duraction = 0.0
    private var duraction = 0.0

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainEnjoyData.map{shrinkTransferTrack(dit: $0)}, encoding: .utf8)!)
    }

    //: init(videoPath: String) {
    init(videoPath: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.videoPath = videoPath
        self.videoPath = videoPath
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.player.resume()
        self.player.tillWarning()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.player.pause()
        self.player.isWait()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.draw()
        //: self.setupSubViewsConstraint()
        self.destination()
        //: self.bindInteraction()
        self.successfullyBind()
        //: self.player.playerWithUrlAndVideoView(url: self.videoPath, view: bgView)
        self.player.loseTrack(url: self.videoPath, view: bgView)
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if DismissReactiveCompatible.share.appConfigMode.disableShootScreen {
            if DismissReactiveCompatible.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = AeronauticalEngineeringReactiveCompatible(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.player.stopPlay()
        self.player.storageReward()
        //: self.player.removeVideoWidget()
        self.player.since()
        //: self.player.videoUrl = ""
        self.player.videoUrl = ""
        //: self.player = TalkingVideoPlayerManager.init()
        self.player = PackagingPlayListener()
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: PackagingPlayListener = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = PackagingPlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.scheduleColumn(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var topView: TalkingMomentPhotosTopView = {
    private lazy var topView: FourView = {
        //: let view = TalkingMomentPhotosTopView(frame: CGRect.zero, type: .normal)
        let view = FourView(frame: CGRect.zero, type: .normal)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingMomentPhotosBottomView = {
    private lazy var bottomView: ResolveThen = {
        //: let view = TalkingMomentPhotosBottomView.init()
        let view = ResolveThen()
        //: view.isHidden = isHideBotton
        view.isHidden = isHideBotton
        //: view.modelUid = uid
        view.modelUid = uid
        //: return view
        return view
        //: }()
    }()

    //: private lazy var interactionView: TalkingVideoPlayerInteractionView = {
    private lazy var interactionView: ObservanceReactiveCompatible = {
        //: let view = TalkingVideoPlayerInteractionView.init()
        let view = ObservanceReactiveCompatible()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var videoBottomView: UIView = {
    private lazy var videoBottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .appTitleColor()
        v.backgroundColor = .dialog()

        //: let imgV = TalkingButton()
        let imgV = RangeReactiveCompatible()
        //: imgV.setBackgroundImage(UIImage.BundleImageNamed(name: "bth_me_videocall_nor"), for: .normal)
        imgV.setBackgroundImage(UIImage.locationName(name: (String(show_lowKey.prefix(6)) + "_vid" + noti_frontUrl.replacingOccurrences(of: "anima", with: "c") + "ll_no" + noti_lovelyDarkData.replacingOccurrences(of: "following", with: "r"))), for: .normal)
        //: imgV.setImage(UIImage.BundleImageNamed(name: "icon_videocall_nor"), for: .normal)
        imgV.setImage(UIImage.locationName(name: (String(data_helpTillExpenseId.prefix(7)) + data_assistLivingMsg.lowercased() + appSpaceId.replacingOccurrences(of: "eyebrow", with: "c") + "_nor")), for: .normal)
        //: imgV.setTitle("Video Call".localized, for: .normal)
        imgV.setTitle((String(appDeliveryText) + String(userRocketKey.suffix(4))).localized, for: .normal)
        //: imgV.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        imgV.titleLabel?.font = UIFont.pingfang(fontSize: 16)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        imgV.addTarget(self, action: #selector(remainClick), for: .touchUpInside)
        //: v.addSubview(imgV)
        v.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 178, height: 36))
            make.size.equalTo(CGSize(width: 178, height: 36))
        }
        //: v.isHidden = (videoCallBlock == nil) || (DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (videoCallBlock == nil) || (DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingMomentVideoVC {
extension NightRecognizerDelegate {
    //: @objc func enterBackgroundNotification() {
    @objc func connection() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.setMute(bEnable: false)
            self.player.scheduleColumn(bEnable: false)
            //: self.player.delegate = self
            self.player.delegate = self
            //: self.player.pause()
            self.player.isWait()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func pathEnter() {}

    /// video
    //: @objc func videoButtonClick() {
    @objc func remainClick() {
        //: self.player.pause()
        self.player.isWait()
        //: if videoCallBlock != nil {
        if videoCallBlock != nil {
            //: videoCallBlock!()
            videoCallBlock!()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingMomentVideoVC {
extension NightRecognizerDelegate {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func deal() {
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
    }
}

// MARK: - Delegate

//: extension TalkingMomentVideoVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension NightRecognizerDelegate: BilliardPlayerThen, ViewTillThen {
    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus) {
    func tarWrap(view _: ObservanceReactiveCompatible, status: SolarViewStatus) {
        //: switch status {
        switch status {
        //: case .StartPlay:
        case .StartPlay:
            //: self.player.resume()
            self.player.tillWarning()
        //: break
        //: case .StopPlay:
        case .StopPlay:
            //: self.player.pause()
            self.player.isWait()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat) {
    func licenseElementConnection(view _: ObservanceReactiveCompatible, value: CGFloat) {
        //: let dragedSeconds = floorf(Float(value * self.duraction))
        let dragedSeconds = floorf(Float(value * self.duraction))
        //: self.player.seek(time: dragedSeconds)
        self.player.first(time: dragedSeconds)
    }

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: self.interactionView.interactionStatus(status: status)
        self.interactionView.playStatus(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player.setRenderMode(renderMode: .FILL_EDGE)
            self.player.succeed(renderMode: .FILL_EDGE)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func tillChannelTime(player _: PackagingPlayListener, duration: Int, currentTime: Int) {
        //: self.duraction = Double(duration)
        self.duraction = Double(duration)
        //: self.interactionView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.interactionView.currentness(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func funcCompareProgress(player _: PackagingPlayListener, progress: CGFloat) {
        //: self.interactionView.updateProgress(value: progress)
        self.interactionView.downward(value: progress)
    }
}

// MARK: - Layout

//: extension TalkingMomentVideoVC {
extension NightRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func draw() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        //: self.view.addSubview(bgView)
        self.view.addSubview(bgView)
        //: bgView.addSubview(topView)
        bgView.addSubview(topView)
        //: bgView.addSubview(bottomView)
        bgView.addSubview(bottomView)
        //: bgView.addSubview(videoBottomView)
        bgView.addSubview(videoBottomView)
        //: bgView.addSubview(interactionView)
        bgView.addSubview(interactionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func destination() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalTo(self.view)
            make.top.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(StatusBarNavigationBarHeight+30)
            make.height.equalTo(constAgentJumpValue + 30)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(self.view)
            make.bottom.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(kDeviceSafeBottomHeight+64)
            make.height.equalTo(appInviteValue + 64)
        }
        //: videoBottomView.snp.makeConstraints { make in
        videoBottomView.snp.makeConstraints { make in
            //: make.edges.equalTo(bottomView)
            make.edges.equalTo(bottomView)
        }
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.top.equalTo(topView.snp.bottom).offset(0)
            make.top.equalTo(topView.snp.bottom).offset(0)
            //: make.bottom.equalTo(bottomView.snp.top).offset(0)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func successfullyBind() {
        //: topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
        topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: if self?.presentingViewController != nil {
            if self?.presentingViewController != nil {
                //: self?.dismiss(animated: true)
                self?.dismiss(animated: true)
                //: } else {
            } else {
                //: self?.navigationController?.popViewController(animated: true)
                self?.navigationController?.popViewController(animated: true)
            }
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterBackgroundNotification),
                                               selector: #selector(connection),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterForegroundNotification),
                                               selector: #selector(pathEnter),
                                               //: name: UIApplication.didBecomeActiveNotification,
                                               name: UIApplication.didBecomeActiveNotification,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(deal),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: show_logData,
                                               //: object: nil)
                                               object: nil)
    }
}
