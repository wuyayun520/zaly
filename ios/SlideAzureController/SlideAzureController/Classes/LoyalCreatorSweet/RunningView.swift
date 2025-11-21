
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_offMsg:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

/*: "btn_video_minimize" :*/
fileprivate let mainBeamData:[Character] = ["b","t","n","_","v","i","d","e","o","_","m","i","n","i","m","i","z","e"]

/*: "icon_close_nor" :*/
fileprivate let mainTrailId:String = "advice hiicon_"
fileprivate let user_enterKey:String = "_norinteraction match toward"

/*: "btn_video_turn_nor" :*/
fileprivate let k_aboveUrl:[Character] = ["b","t","n","_","v","i","d","e","o"]
fileprivate let main_badName:String = "staff template finish variety_turn"

/*: "btn_video_turn_pre" :*/
fileprivate let const_theoryName:[Character] = ["b","t","n","_","v","i","d"]
fileprivate let showThemePath:[Character] = ["e","o","_","t","u","r"]
fileprivate let appQuestionFormat:String = "n_preoption exposure skip own"

/*: "btn_video_start_nor" :*/
fileprivate let dataAnotherText:String = "btn_vshoulder cord overwhelm communication processor"
fileprivate let notiStrengthBeatStr:String = "soul submittart_nor"

/*: "btn_video_start_pre" :*/
fileprivate let kImpulseEntityMessage:String = "do elite yourself a norbtn_"
fileprivate let user_transitionPath:String = "_stafollowing close no manage phase"
fileprivate let noti_remoteNarrowId:String = "selection glass go subrt_pre"

/*: "00:00" :*/
fileprivate let user_domainPortFormat:String = "00:00"

/*: "Camera must be on" :*/
fileprivate let const_tillFormMessage:[Character] = ["C","a","m","e","r"]
fileprivate let appParkPitchFocusId:String = "half hood newa m"
fileprivate let appLiveMessage:String = "yourself initial material airust "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RunningView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class RunningView: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: HiddenObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = IceChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器
    //: var isAutoCloseView = true
    var isAutoCloseView = true // 主动挂断
    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: IceChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        tooSignal()
        //: setupSubViewsConstraint()
        endeavor()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        ethicalMotive()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_offMsg.map{$0^41}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        rateTimer()
        //: invalidateIdleTimer()
        fetching()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(zoneState), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainBeamData))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fixingForClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_close_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainTrailId.suffix(5)) + "close" + String(user_enterKey.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(genderClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(k_aboveUrl) + String(main_badName.suffix(5)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(const_theoryName) + String(showThemePath) + String(appQuestionFormat.prefix(5)))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ice), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(dataAnotherText.prefix(5)) + "ideo_s" + String(notiStrengthBeatStr.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(kImpulseEntityMessage.suffix(4)) + "video" + String(user_transitionPath.prefix(4)) + String(noti_remoteNarrowId.suffix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(steamer), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.pingfang(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension RunningView {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func ethicalMotive() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (user_domainPortFormat.capitalized)
        //: startTalkCount()
        magnitudeerrupt()
        //: touchHiddenTimer()
        requireDoingDeal()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func fixingForClick() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.recital()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func compound(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func genderClick() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        const_pathMsg.tabKeep(eventID: main_outputName)
        //: isAutoCloseView = false
        isAutoCloseView = false
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.sumerplay()
    }

    //: func closeViewClick() {
    func transduce() {
        //: self.destroryTimer()
        self.rateTimer()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.sumerplay()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func maleOwner() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.browsing()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func swingAbout() {
        //: acceptButtonClick()
        maleOwner()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        steamer()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func bound() {
        //: acceptButtonClick()
        maleOwner()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        steamer()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func ice() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if main_dismissMessage == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.enablece(showMsg: (String(const_tillFormMessage) + String(appParkPitchFocusId.suffix(3)) + String(appLiveMessage.suffix(4)) + "be on").localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.crunch(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func steamer() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.camera(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func zoneState() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            fetching()
            //: } else {
        } else {
            //: touchHiddenTimer()
            requireDoingDeal()
        }
    }

    //: private func destroryTimer() {
    private func rateTimer() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension RunningView {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func magnitudeerrupt() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: isAutoCloseView = true
                isAutoCloseView = true
                //: self.closeViewClick()
                self.transduce()
            }
            //: self.changeTalkTime()
            self.timeHead()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func timeHead() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension RunningView {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func requireDoingDeal() {
        //: invalidateIdleTimer()
        fetching()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(giveAndTake), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func fetching() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(giveAndTake), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func giveAndTake() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.zoneState()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension RunningView {
    /// 添加视图
    //: private func setupSubviews() {
    private func tooSignal() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func endeavor() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(dataPointTitle + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }

        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(rotateCameraBtn.snp.leading).offset(-10)
            make.trailing.equalTo(rotateCameraBtn.snp.leading).offset(-10)
            //: make.centerY.equalTo(openCameraBtn)
            make.centerY.equalTo(openCameraBtn)
            //: make.size.equalTo(openCameraBtn)
            make.size.equalTo(openCameraBtn)
        }
        //: openCameraBtn.snp.remakeConstraints { make in
        openCameraBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualHeight(h: 25)+20)
            make.top.equalTo(dataPointTitle + actualHeight(h: 25) + 20)
            //: make.trailing.equalToSuperview().offset(-20)
            make.trailing.equalToSuperview().offset(-20)
            //: make.size.equalTo(actualWidth(w: 33))
            make.size.equalTo(actualWidth(w: 33))
        }
        //: rotateCameraBtn.snp.remakeConstraints { make in
        rotateCameraBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(openCameraBtn.snp.leading).offset(-10)
            make.trailing.equalTo(openCameraBtn.snp.leading).offset(-10)
            //: make.centerY.equalTo(openCameraBtn)
            make.centerY.equalTo(openCameraBtn)
            //: make.size.equalTo(openCameraBtn)
            make.size.equalTo(openCameraBtn)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(dataPointTitle + 20)
        }
    }
}
