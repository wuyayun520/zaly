
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kDateMessage:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_video_bd" :*/
fileprivate let appNeedTitle:[Character] = ["i","c","o","n","_"]
fileprivate let userOverwhelmConBaseballValue:[Character] = ["v","i","d","e","o","_","b","d"]

/*: "btn_video_drop_nor" :*/
fileprivate let kLineUrl:String = "btn_videconcentration transmission"
fileprivate let app_willText:[Character] = ["o","_","d","r","o"]
fileprivate let mainKingMessage:String = "p_norevery broadcast"

/*: "She's inviting you to have a Call" :*/
fileprivate let appLovelyData:[UInt8] = [0x92,0xa9,0xa4,0xe6,0xb2,0xe1,0xa8,0xaf,0xb7,0xa8,0xb5,0xa8,0xaf,0xa6,0xe1,0xb8,0xae,0xb4,0xe1,0xb5,0xae,0xe1,0xa9,0xa0,0xb7,0xa4,0xe1,0xa0,0xe1,0x82,0xa0,0xad,0xad]

private func unableEquity(field num: UInt8) -> UInt8 {
    return num ^ 193
}

/*: "get json error" :*/
fileprivate let userShoulderValue:String = "flag against mine shake standardget "
fileprivate let user_selectionMessage:String = "ERRO"
fileprivate let const_teamStr:[Character] = ["r"]

/*: "icon_videocall_initerv_topView" :*/
fileprivate let const_outputMsg:[Character] = ["i","c","o","n","_","v","i","d","e"]
fileprivate let notiTheoryTitle:[Character] = ["o"]
fileprivate let kGreatestPath:[Character] = ["c","a","l","l","_","i","n","i","t","e","r","v","_","t","o","p","V","i","e","w"]

/*: "Free" :*/
fileprivate let constAlwaysUrl:String = "limit interested skin after effectFree"

/*: "You've been barred from receiving calls" :*/
fileprivate let mainPrecedentFormat:[UInt8] = [0x73,0x6c,0x6c,0x61,0x63,0x20,0x67,0x6e,0x69,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6d,0x6f,0x72,0x66,0x20,0x64,0x65,0x72,0x72,0x61,0x62,0x20,0x6e,0x65,0x65,0x62,0x20,0x65,0x76,0x27,0x75,0x6f,0x59]

/*: "#864EFF" :*/
fileprivate let mainStatusMsg:[Character] = ["#","8","6","4","E"]
fileprivate let user_iconKey:String = "weddingwedding"

/*: "#F79AFF" :*/
fileprivate let show_detailStr:[Character] = ["#"]
fileprivate let data_richSplitStr:String = "pic79Apicpic"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeaseFourThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class LeaseFourThen: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.tapFamily()
        //: self.setupSubViewsConstraint()
        self.untilRefuseReduce()
        //: self.bindInteraction()
        self.betweenEvent()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kDateMessage.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.storageReward()
        //: player?.removeVideoWidget()
        player?.since()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

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

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = RangeReactiveCompatible(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(appNeedTitle) + String(userOverwhelmConBaseballValue))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sittingDisk), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(kLineUrl.prefix(8)) + String(app_willText) + String(mainKingMessage.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isomerization), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 10)
        lb.font = UIFont.pingfang(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.text = "She's inviting you to have a Call".localized
        lb.text = String(bytes: appLovelyData.map{unableEquity(field: $0)}, encoding: .utf8)!.localized
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Semibold, fontSize: 16)
        //: return lb
        return lb
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
            printLog(message: (String(userShoulderValue.suffix(4)) + "json " + user_selectionMessage.lowercased() + String(const_teamStr)))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension LeaseFourThen {
    /// 获取权限
    //: private func getServercePermission() {
    private func customerLibrary() {
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
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 20s倒计时主动挂断
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = GenerateVideoManager.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.dismiss()
                        self.animalCommunicationDismiss()
                        //: self.initVideoCallTime()
                        self.serviceTime()
//                        self.putThrough()
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func proposalView() {
        //: topIcon.image = UIImage.BundleImageNamed(name: "icon_videocall_initerv_topView")
        topIcon.image = UIImage.locationName(name: (String(const_outputMsg) + String(notiTheoryTitle) + String(kGreatestPath)))
        //: topBtn.setTitle("Free".localized, for: .normal)
        topBtn.setTitle((String(constAlwaysUrl.suffix(4))).localized, for: .normal)
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func originalRevenue() {
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

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func loadProcess() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func finished() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        const_pathMsg.tabKeep(eventID: kColorId)
        //: initVideoCallTime()
        serviceTime()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard GenerateVideoManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.enablece(showMsg: String(bytes: mainPrecedentFormat.reversed(), encoding: .utf8)!.localized)
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
    private func whiteCos(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        GenerateVideoManager.shared.requireCompletion(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func serviceTime() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        GenerateVideoManager.shared.canny()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension LeaseFourThen {
    //: @objc private func finishBtnClick() {
    @objc private func sittingDisk() {
        //: self.dismiss()
        self.animalCommunicationDismiss()
        //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
        SpecialPermissionTool.remainMicrophone { [weak self] isOpen in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: self.putThrough()
            self.finished()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func isomerization() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        const_pathMsg.tabKeep(eventID: show_sendFormat)
        //: initVideoCallTime()
        serviceTime()
        //: uploadRepord(type: 3)
        whiteCos(type: 3)
        //: dismiss()
        animalCommunicationDismiss()
    }

    //: func show() {
    func revenuePoint() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func animalCommunicationDismiss() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        loadProcess()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension LeaseFourThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func tapFamily() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func untilRefuseReduce() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
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
    private func betweenEvent() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        asDeadline(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(mainStatusMsg) + user_iconKey.replacingOccurrences(of: "wedding", with: "F")))!.cgColor, UIColor(hex: (String(show_detailStr) + data_richSplitStr.replacingOccurrences(of: "pic", with: "F")))!.cgColor])
        //: self.getServercePermission()
        self.customerLibrary()
        //: self.seTypeView()
        self.proposalView()
        //: self.beginPlayer()
        self.originalRevenue()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: userMethodRejectStr, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func asDeadline(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
