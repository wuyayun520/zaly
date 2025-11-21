
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let app_blueMessage:[UInt8] = [0xa5,0x9a,0x97,0x96,0x9c,0xd3,0x90,0x92,0x9f,0x9f,0x80,0xd3,0x84,0x9a,0x9f,0x9f,0xd3,0x92,0x9f,0x9f,0xd3,0x86,0x80,0x96,0xd3,0x87,0x9b,0x96,0xd3,0x90,0x86,0x81,0x81,0x96,0x9d,0x87,0xd3,0xb1,0x96,0x92,0x86,0x87,0x9a,0x95,0x8a,0xd3,0xa0,0x96,0x87,0x87,0x9a,0x9d,0x94,0x80]

private func nonrecreationalLat(concentration num: UInt8) -> UInt8 {
    return num ^ 243
}

/*: "Cancel" :*/
fileprivate let k_putData:String = "c"
fileprivate let k_burnName:[Character] = ["a","n","c","e","l"]

/*: "Done" :*/
fileprivate let noti_quantityUrl:[Character] = ["D","o","n","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrimaryViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class PrimaryViewController: WeddingLovelyRecognizerDelegate {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.lastStart()
        }
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
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stillCan()
        }
        //: popGesture(isOpen: true)
        rankSlow(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        rankSlow(isOpen: false)
        //: setupSubviews()
        attach()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: OvalView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = OvalView(calendar: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: BeauteousnessSmallAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = BeauteousnessSmallAdjustView(frame: CGRect(x: 0, y: main_nameData - (258 + appInviteValue + 50), width: main_logStr, height: 258 + appInviteValue + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension PrimaryViewController {
    //: @objc func backClick() {
    @objc func shared() {
        //: let config = ShowAlertConfig()
        let config = PortraitAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        AllowanceReactiveCompatible.dateConfig(message: String(bytes: app_blueMessage.map{nonrecreationalLat(concentration: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (k_putData.uppercased() + String(k_burnName)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: ProviderCacheCost.share.store()
            ProviderCacheCost.share.tarBuild()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension PrimaryViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func attach() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(noti_quantityUrl)).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(shared), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
