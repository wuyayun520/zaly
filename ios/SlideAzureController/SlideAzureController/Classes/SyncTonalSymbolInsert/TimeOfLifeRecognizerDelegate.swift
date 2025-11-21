
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let const_distinctiveNeckImpulseTitle:String = "gift"
fileprivate let k_miniBeValue:String = "erclingona"
fileprivate let dataBoardTitle:String = "alreadyma"

/*: "authPic" :*/
fileprivate let constCapMessage:String = "abit"
fileprivate let kFollowItemKey:[Character] = ["t","h","P","i","c"]

/*: "Face verification" :*/
fileprivate let kSaleData:String = "Face tone liquid trigger maximum"
fileprivate let kBaseballPath:String = "cfiscalio"
fileprivate let showProcessText:[Character] = ["n"]

/*: "icon_zc_userconver" :*/
fileprivate let userMakeupValue:[Character] = ["i","c","o","n","_"]
fileprivate let app_properlyMsg:String = "segment one invitation sh structurezc_us"

/*: "Verify now" :*/
fileprivate let user_mLipValue:String = "Verifyhome outside comment save"
fileprivate let mainBirthContent:[Character] = [" ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let user_withdrawText:String = "#4A89F3successful lie bot"

/*: "Finish" :*/
fileprivate let main_everyoneStr:[Character] = ["F","i","n","i","s","h"]

/*: "#8C7AFF" :*/
fileprivate let const_saltData:[Character] = ["#","8","C","7","A","F","F"]

/*: "Skip" :*/
fileprivate let user_sufficientUrl:String = "Skiplike equal upper people"

/*: "icon_successfylly" :*/
fileprivate let app_glassData:[Character] = ["i","c","o","n","_","s","u","c","c","e"]
fileprivate let app_concentrationValue:[Character] = ["s","s","f","y","l","l","y"]

/*: "Submitted successfully" :*/
fileprivate let showTenderTitle:String = "Submitlease processor"
fileprivate let mainDatabaseName:String = "trapcces"
fileprivate let show_toneMessage:[Character] = ["s","f","u","l","l","y"]

/*: "#2ED180" :*/
fileprivate let appEnhanceData:String = "#2ED1big vehicle"
fileprivate let app_frameYourGoldMessage:[Character] = ["8","0"]

/*: "male" :*/
fileprivate let userLayerUrl:[UInt8] = [0x86,0x8a,0x87,0x8e]

private func glassTab(pitch num: UInt8) -> UInt8 {
    return num ^ 235
}

/*: "female" :*/
fileprivate let k_mobileOwnText:String = "fmyale"

/*: "RegisterSuccess" :*/
fileprivate let kThresholdMessage:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e"]
fileprivate let main_thenId:[Character] = ["s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TimeOfLifeRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class TimeOfLifeRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        rankSlow(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (const_distinctiveNeckImpulseTitle.replacingOccurrences(of: "gift", with: "P") + k_miniBeValue.replacingOccurrences(of: "cling", with: "s") + "l inf" + dataBoardTitle.replacingOccurrences(of: "already", with: "or") + "tion").localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.setup()
        //: self.setupSubViewsConstraint()
        self.adSuite()

        //: if !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCode {
        if !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if DismissReactiveCompatible.share.userFillInfoMode.authImage != nil {
        if DismissReactiveCompatible.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = DismissReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(constCapMessage.replacingOccurrences(of: "bit", with: "u") + String(kFollowItemKey))] = DismissReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.translate()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.bigGallery(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(kSaleData.prefix(5)) + "verifi" + kBaseballPath.replacingOccurrences(of: "fiscal", with: "at") + String(showProcessText)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.BundleImageNamed(name: "icon_zc_userconver")
        imagv.image = UIImage.locationName(name: (String(userMakeupValue) + String(app_properlyMsg.suffix(5)) + "erconver"))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(commonSample), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(user_mLipValue.prefix(6)) + String(mainBirthContent)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(user_withdrawText.prefix(7))))!, .font: UIFont.bigGallery(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(main_everyoneStr)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishBorder(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(const_saltData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(user_sufficientUrl.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(justice), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension TimeOfLifeRecognizerDelegate {
    //: func setConverView() {
    func translate() {
        //: self.converImag.image = UIImage.BundleImageNamed(name: "icon_successfylly")
        self.converImag.image = UIImage.locationName(name: (String(app_glassData) + String(app_concentrationValue)))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(showTenderTitle.prefix(6)) + "ted " + mainDatabaseName.replacingOccurrences(of: "trap", with: "su") + String(show_toneMessage)).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(appEnhanceData.prefix(5)) + String(app_frameYourGoldMessage)))!, .font: UIFont.bigGallery(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension TimeOfLifeRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func popbackResult() {
        //: super.naviPopback()
        super.popbackResult()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(main_guideWithoutId)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: userLayerUrl.map{glassTab(pitch: $0)}, encoding: .utf8)! : (k_mobileOwnText.replacingOccurrences(of: "my", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_pathMsg.tabKeep(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func commonSample() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(showProducePath)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: userLayerUrl.map{glassTab(pitch: $0)}, encoding: .utf8)! : (k_mobileOwnText.replacingOccurrences(of: "my", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_pathMsg.tabKeep(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = DisenableExampleVc()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: DismissReactiveCompatible.share.userFillInfoMode.authImage = image
            DismissReactiveCompatible.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(constCapMessage.replacingOccurrences(of: "bit", with: "u") + String(kFollowItemKey))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.translate()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func justice() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(k_halfPath)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: userLayerUrl.map{glassTab(pitch: $0)}, encoding: .utf8)! : (k_mobileOwnText.replacingOccurrences(of: "my", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_pathMsg.tabKeep(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (constCapMessage.replacingOccurrences(of: "bit", with: "u") + String(kFollowItemKey)))
        //: finishBtnClick(isSkip: true)
        finishBorder(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func finishBorder(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(notiFormatMsg)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: userLayerUrl.map{glassTab(pitch: $0)}, encoding: .utf8)! : (k_mobileOwnText.replacingOccurrences(of: "my", with: "em")))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            const_pathMsg.tabKeep(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        FirRequestTool.userInfoReloadPushCompletion(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: noti_groupUrl, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ProgMedalReactiveCompatible.share.stem(key: (String(kThresholdMessage) + String(main_thenId)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                LeaseTrailerThen.share.tupeloShowPlay(name: (String(kThresholdMessage) + String(main_thenId)))

                //: if DismissReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if DismissReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: PushThen.share.func__pushToLockUserEmailVC(isShowBack: false)
                        PushThen.share.tabAcross(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension TimeOfLifeRecognizerDelegate {
    //: func setupSubviews() {
    func setup() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func adSuite() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
