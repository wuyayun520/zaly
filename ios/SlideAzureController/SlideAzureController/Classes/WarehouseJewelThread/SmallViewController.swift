
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_makeupTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "She's inviting you to have a Call" :*/
fileprivate let notiDomesticMissingMessage:[UInt8] = [0xa,0x1f,0x1c,0xde,0x2a,0xd7,0x20,0x25,0x2d,0x20,0x2b,0x20,0x25,0x1e,0xd7,0x30,0x26,0x2c,0xd7,0x2b,0x26,0xd7,0x1f,0x18,0x2d,0x1c,0xd7,0x18,0xd7,0xfa,0x18,0x23,0x23]

fileprivate func secureTransfer(pole num: UInt8) -> UInt8 {
    let value = Int(num) - 183
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_video_bd_big" :*/
fileprivate let user_toolChildTitle:[Character] = ["i","c","o","n","_","v","i"]
fileprivate let data_kingPeerLevelValue:[Character] = ["d","e"]
fileprivate let appWellName:String = "medal sight hear title toleranceo_bd_big"

/*: "btn_video_drop_nor" :*/
fileprivate let dataCoalStr:[Character] = ["b","t","n","_","v","i","d","e","o","_","d"]
fileprivate let k_dimensionKey:[Character] = ["r","o","p","_","n","o","r"]

/*: "get json error" :*/
fileprivate let constCompoundId:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let constDoingingData:String = "always agency exploren error"

/*: "You've been barred from receiving calls" :*/
fileprivate let kInvolvementPath:[UInt8] = [0x4e,0x64,0x6a,0x1c,0x6b,0x5a,0x15,0x57,0x5a,0x5a,0x63,0x15,0x57,0x56,0x67,0x67,0x5a,0x59,0x15,0x5b,0x67,0x64,0x62,0x15,0x67,0x5a,0x58,0x5a,0x5e,0x6b,0x5e,0x63,0x5c,0x15,0x58,0x56,0x61,0x61,0x68]

fileprivate func quickOrange(file num: UInt8) -> UInt8 {
    let value = Int(num) + 11
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmallViewController.swift
//  Pods
//
//  Created by Charlotte on 2025/11/7.
//

//: import UIKit
import UIKit

//: class SystemActiveCallVC: TalkingBaseViewController {
class SmallViewController: WeddingLovelyRecognizerDelegate {
    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_makeupTitle.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: popGesture(isOpen: true)
        rankSlow(isOpen: true)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: popGesture(isOpen: false)
        rankSlow(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.searched(51, 51, 51, 1)
        //: self.setupSubviews()
        self.setupWithoutUser()
        //: self.setupSubViewsConstraint()
        self.layNetworkConstraint()
        //: self.bindInteraction()
        self.endMan()
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.storageReward()
        //: player?.removeVideoWidget()
        player?.since()
        //: player = nil
        player = nil
    }

    // MARK: - Lazy Load

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.text = "She's inviting you to have a Call".localized
        lb.text = String(bytes: notiDomesticMissingMessage.map{secureTransfer(pole: $0)}, encoding: .utf8)!.localized
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lb.font = UIFont.bigGallery(type: .Semibold, fontSize: 20)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pointBar), for: .touchUpInside)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_bd_big"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(user_toolChildTitle) + String(data_kingPeerLevelValue) + String(appWellName.suffix(8)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(dataCoalStr) + String(k_dimensionKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(exit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: PackagingPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = PackagingPlayListener()
        //: player.setMute(bEnable: false)
        player.scheduleColumn(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = BlackEffectTool.default.recordingRevenue(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(constCompoundId) + String(constDoingingData.suffix(7))))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension SystemActiveCallVC {
extension SmallViewController {
    /// 获取权限
    //: private func getServercePermission() {
    private func tertiary() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        SpecialPermissionTool.exitSmart(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            SpecialPermissionTool.visualAspect(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.putThrough()
                self.putCell()
            }
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func contestantPlayer() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if GenerateVideoManager.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.loseTrack(url: GenerateVideoManager.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.bolt(urlStr: GenerateVideoManager.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func putCell() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        const_pathMsg.tabKeep(eventID: kColorId)
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard GenerateVideoManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.enablece(showMsg: String(bytes: kInvolvementPath.map{quickOrange(file: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        GenerateVideoManager.shared.requireCompletion(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.exitSchedule()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.exitSchedule()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = NameureRatingViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func commonType(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        GenerateVideoManager.shared.requireCompletion(type: type) { _, _, _ in
        }
    }
}

// MARK: - Event

//: extension SystemActiveCallVC {
extension SmallViewController {
    //: @objc private func finishBtnClick() {
    @objc private func pointBar() {
        //: switch TalkingVideoInitivCallManager.shared.videoCallModel.popupCallAcceptEvent {
        switch GenerateVideoManager.shared.videoCallModel.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            pursuing()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            questionView()
        //: case 3:
        case 3:
            //: self.dismiss()
            self.gapCorner()
            //: getServercePermission()
            tertiary()
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func pursuing() {
        //: PushThen.share.func__jumpVideoCallToWebRecharge(popupCallIndex: TalkingVideoInitivCallManager.shared.videoCallModel.popupCallAcceptEvent)
        PushThen.share.manner(popupCallIndex: GenerateVideoManager.shared.videoCallModel.popupCallAcceptEvent)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if exitSchedule()?.isKind(of: PrimaryDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = exitSchedule() as! PrimaryDelegate
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func questionView() {
        //: PushThen.share.func__jumpVideoCallToWebRecharge(popupCallIndex: TalkingVideoInitivCallManager.shared.videoCallModel.popupCallAcceptEvent)
        PushThen.share.manner(popupCallIndex: GenerateVideoManager.shared.videoCallModel.popupCallAcceptEvent)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if exitSchedule()?.isKind(of: PrimaryDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = exitSchedule() as! PrimaryDelegate
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func exit() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        const_pathMsg.tabKeep(eventID: show_sendFormat)
        //: uploadRepord(type: 3)
        commonType(type: 3)
        //: dismiss()
        gapCorner()
    }

    //: @objc func dismiss() {
    @objc func gapCorner() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        GenerateVideoManager.shared.canny()
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func downLessTool() {
        //: TalkingVideoInitivCallManager.shared.videoCallModel.popupCallAcceptEvent = 3
        GenerateVideoManager.shared.videoCallModel.popupCallAcceptEvent = 3
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if exitSchedule()?.isKind(of: PrimaryDelegate.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = exitSchedule() as! PrimaryDelegate
            //: if vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue ) {
            if vc.urlStr.contains(RelativeWeddingQuickLookable.RechargeHalfPage.rawValue) || vc.urlStr.contains(RelativeWeddingQuickLookable.SubscribeAlert.rawValue) {
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
            }
        }
    }
}

// MARK: - Layout

//: extension SystemActiveCallVC {
extension SmallViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWithoutUser() {
        //: self.view.addSubview(playerView)
        self.view.addSubview(playerView)
        //: playerView.addSubview(closeBtn)
        playerView.addSubview(closeBtn)
        //: playerView.addSubview(svgaPlayer)
        playerView.addSubview(svgaPlayer)
        //: playerView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        playerView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: playerView.addSubview(tipsLb)
        playerView.addSubview(tipsLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func layNetworkConstraint() {
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-47-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-47 - appInviteValue)
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.size.equalTo(54)
            make.size.equalTo(54)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(10)
            make.leading.equalTo(closeBtn.snp.trailing).offset(10)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }

        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.bottom.equalTo(svgaPlayer.snp.top).offset(-34)
            make.bottom.equalTo(svgaPlayer.snp.top).offset(-34)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func endMan() {
        //: self.beginPlayer()
        self.contestantPlayer()

        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(downLessTool),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: mainWorkFormat,
                                               //: object: nil)
                                               object: nil)
    }
}
