
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_rateValue:[UInt8] = [0xd8,0xdd,0xd8,0xe3,0x97,0xd2,0xde,0xd3,0xd4,0xe1,0xa9,0x98,0x8f,0xd7,0xd0,0xe2,0x8f,0xdd,0xde,0xe3,0x8f,0xd1,0xd4,0xd4,0xdd,0x8f,0xd8,0xdc,0xdf,0xdb,0xd4,0xdc,0xd4,0xdd,0xe3,0xd4,0xd3]

fileprivate func tabServer(opportunity num: UInt8) -> UInt8 {
    let value = Int(num) + 145
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bth_me_chat_nor" :*/
fileprivate let constShadowKey:String = "living limited back windowbth_m"
fileprivate let data_minuteMessage:String = "t_norunless argument heavy status"

/*: "#6ADEFF" :*/
fileprivate let userOnMsg:[Character] = ["#","6"]
fileprivate let appFrameMessage:String = "adeff"

/*: "#5D6FFF" :*/
fileprivate let k_helloOverTitle:[Character] = ["#","5","D","6","F"]
fileprivate let app_anyoneNetStr:String = "ff"

/*: "icon_lounge" :*/
fileprivate let dataContinuingUrl:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

/*: "icon_video_call" :*/
fileprivate let showSectionPath:[Character] = ["i","c","o","n","_","v","i","d","e"]
fileprivate let show_powExampleMessage:[Character] = ["o","_","c","a","l","l"]

/*: "iv_me_vip" :*/
fileprivate let kFrameworkName:[Character] = ["i","v","_","m","e","_"]
fileprivate let userAlongTitle:[Character] = ["v","i","p"]

/*: "Edit" :*/
fileprivate let const_acceptPath:String = "link char enable whether validEdit"

/*: "icon_Chat_freetimes" :*/
fileprivate let const_splitReachId:String = "full po mm correct corrupticon_"
fileprivate let noti_universalStr:String = "etiactions"

/*: "Say hi successfully~" :*/
fileprivate let appViolationKey:[Character] = ["S","a","y"," ","h","i"," "]
fileprivate let kOurMessage:[Character] = ["s","u","c","c","e","s","s","f","u","l","l","y","~"]

/*: "userID" :*/
fileprivate let app_processUrl:[UInt8] = [0xd7,0xd1,0xc7,0xd0,0xeb,0xe6]

private func threadGiven(who num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "#AB57F6" :*/
fileprivate let notiPlayTitle:String = "#AB57F6sweep box succeed case policy"

/*: "#FC57B7" :*/
fileprivate let data_unlessFenceUrl:String = "#FC57B7attractive greatest dynamics joint err"

/*: "#FE9074" :*/
fileprivate let noti_builderKey:String = "orientation actual of#F"
fileprivate let showChoosePath:String = "say074"

/*: "bth_me_sayhi_nor" :*/
fileprivate let appStrikeFormat:[Character] = ["b","t","h","_","m","e","_","s","a","y","h","i","_","n","o","r"]

/*: "Video Call" :*/
fileprivate let user_transitionContentMessage:String = "Video shadow dialog advertising gray"
fileprivate let dataAddedAppRelateContent:String = "para the second containerCall"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AbsoluteReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import UIKit
import UIKit

//: let UserDetailBottomView_H = (15+actualWidth(w: 36)+15+kDeviceSafeBottomHeight)
let main_currencyTitle = (15 + actualWidth(w: 36) + 15 + appInviteValue)

//: class TalkingUserDetailBottomView: UIView {
class AbsoluteReactiveCompatible: UIView {
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = DisableMeasurable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: setupSubviews()
        concavity()
        //: setupSubViewsConstraint()
        arrow()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_rateValue.map{tabServer(opportunity: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowLayer: CAGradientLayer = {
    private lazy var shadowLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: 15+actualWidth(w: 38)+15)
        layer.frame = CGRect(x: 0, y: 0, width: main_logStr, height: 15 + actualWidth(w: 38) + 15)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(white: 1, alpha: 0).cgColor, UIColor(white: 1, alpha: 1).cgColor]
        layer.colors = [UIColor(white: 1, alpha: 0).cgColor, UIColor(white: 1, alpha: 1).cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var chatBtn: UIImageView = {
    private lazy var chatBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "bth_me_chat_nor")
        img.image = UIImage.locationName(name: (String(constShadowKey.suffix(5)) + "e_cha" + String(data_minuteMessage.prefix(5))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(chatButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(component))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var videoBtn: UIButton = {
    private lazy var videoBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let colors = [UIColor(hex: "#6ADEFF")!.cgColor, UIColor(hex: "#5D6FFF")!.cgColor]
        let colors = [UIColor(hex: (String(userOnMsg) + appFrameMessage.uppercased()))!.cgColor, UIColor(hex: (String(k_helloOverTitle) + app_anyoneNetStr.uppercased()))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 18)
        btn.layer.cornerRadius = actualWidth(w: 18)
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(statementClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callStackView: UIStackView = {
    private lazy var callStackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 9
        v.spacing = 9
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipIcon: UIImageView = {
    private lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.locationName(name: (String(dataContinuingUrl)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callIcon: UIImageView = {
    private lazy var callIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_video_call")
        img.image = UIImage.locationName(name: (String(showSectionPath) + String(show_powExampleMessage)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callStrLab: UILabel = {
    private lazy var callStrLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var maleVipPriceBtn: UIImageView = {
    private lazy var maleVipPriceBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "iv_me_vip")
        img.image = UIImage.locationName(name: (String(kFrameworkName) + String(userAlongTitle)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(maleVipPriceButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(dark))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var maleVipPriceLab: UILabel = {
    private lazy var maleVipPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = .init()
    private lazy var videoCallManager: RedObjectProtocol = .init()
    //: lazy var editBtn: UIButton = {
    lazy var editBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(const_acceptPath.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 60, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(editButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(editForMove), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: lazy var freeImg: UIImageView = {
    lazy var freeImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.locationName(name: (String(const_splitReachId.suffix(5)) + "Chat_fre" + noti_universalStr.replacingOccurrences(of: "action", with: "me")))
        //: return img
        return img
        //: }()
    }()

    //: lazy var freeImg2: UIImageView = {
    lazy var freeImg2: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.locationName(name: (String(const_splitReachId.suffix(5)) + "Chat_fre" + noti_universalStr.replacingOccurrences(of: "action", with: "me")))
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailBottomView {
extension AbsoluteReactiveCompatible {
    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func dark() {
        //: PushThen.share.func__pushToSubscribeAlert()
        PushThen.share.enablelyKey()
    }

    /// video
    //: @objc func videoButtonClick() {
    @objc func statementClick() {
        //: uploadRecord.uploadRecordEvent(eventID: ClickProfilevideoCallButton, toUid: userInfoModel.uid)
        const_pathMsg.tabKeep(eventID: k_warnKey, toUid: userInfoModel.uid)
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue { // 男性用户
            //: videoCallManager.checkAndCallVideo()
            videoCallManager.charm()

            //: } else {
        } else { // 女性用户
            //: videoCallManager.showVideoCallMenu(videoPrice: userInfoModel.videoBean, voicePrice: userInfoModel.voiceBean, vipPrompt: userInfoModel.prompt)
            videoCallManager.quickClick(videoPrice: userInfoModel.videoBean, voicePrice: userInfoModel.voiceBean, vipPrompt: userInfoModel.prompt)
        }
    }

    /// chat
    //: @objc private func chatButtonClick() {
    @objc private func component() {
        //: if userInfoModel.isSendQuickMsg == 0 && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if userInfoModel.isSendQuickMsg == 0, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
            //: let vc = TalkingPrivateChatController(chatID: userInfoModel.uid)
            let vc = SmallControllerDelegate(chatID: userInfoModel.uid)
            //: vc.func_sendQuickGreetingMsg()
            vc.thumbGreeting()
            //: vc.QuickEndBlock = { [weak self] isSuccess, code in
            vc.QuickEndBlock = { [weak self] isSuccess, _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if isSuccess {
                if isSuccess {
                    //: self.userInfoModel.isSendQuickMsg = 1
                    self.userInfoModel.isSendQuickMsg = 1
                    //: self.chatBtn.image = UIImage.BundleImageNamed(name: "bth_me_chat_nor")
                    self.chatBtn.image = UIImage.locationName(name: (String(constShadowKey.suffix(5)) + "e_cha" + String(data_minuteMessage.prefix(5))))
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
                    self.showGuidanceName(showMsg: (String(appViolationKey) + String(kOurMessage)).localized)
                    //: NotificationCenter.default.post(name: CHANGEHOME_GRETESTATUS_NOTIFICATION, object: nil, userInfo: ["userID":self.userInfoModel.uid])
                    NotificationCenter.default.post(name: showRequestKey, object: nil, userInfo: [String(bytes: app_processUrl.map{threadGiven(who: $0)}, encoding: .utf8)!: self.userInfoModel.uid])
                }
            }

            //: } else {
        } else {
            //: PushThen.share.func__pushToPriveteChatVC(chatID: userInfoModel.uid)
            PushThen.share.resolutionBegin(chatID: userInfoModel.uid)
            //: uploadRecord.uploadRecordEvent(eventID: ClickProfileChatButton, toUid: userInfoModel.uid)
            const_pathMsg.tabKeep(eventID: dataBlockKey, toUid: userInfoModel.uid)
        }
    }

    /// edit
    //: @objc private func editButtonClick() {
    @objc private func editForMove() {
        //: let vc = TalkingEditProfilesVC()
        let vc = CutProfilesVc()
        //: currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
    }

    //: func showEditBtn() {
    func seamlessIt() {
        //: editBtn.isHidden = false
        editBtn.isHidden = false
    }
}

// MARK: - 重写hitTest方法

//: extension TalkingUserDetailBottomView {
extension AbsoluteReactiveCompatible {
    /// 使maleVipPriceBtn超出父视图区域仍可响应事件
    //: override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        //: for subview in subviews.reversed() {
        for subview in subviews.reversed() {
            //: let convertedPoint = subview.convert(point, from: self)
            let convertedPoint = subview.convert(point, from: self)
            //: let hitTestView = subview.hitTest(convertedPoint, with: event)
            let hitTestView = subview.hitTest(convertedPoint, with: event)
            //: if hitTestView != nil {
            if hitTestView != nil {
                //: return hitTestView
                return hitTestView
            }
        }
        //: return super.hitTest(point, with: event)
        return super.hitTest(point, with: event)
    }
}

// MARK: - Layout

//: extension TalkingUserDetailBottomView {
extension AbsoluteReactiveCompatible {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func visual(_ userModel: DisableMeasurable) {
        //: userInfoModel = userModel
        userInfoModel = userModel
        //: videoCallManager.uid = userModel.uid
        videoCallManager.uid = userModel.uid

        // 根据角色 展示/隐藏 按钮
        //: if userModel.uid == DismissReactiveCompatible.share.loginUid {
        if userModel.uid == DismissReactiveCompatible.share.loginUid { // 本人资料页
            //: editBtn.isHidden = false
            editBtn.isHidden = false
            //: callStackView.isHidden = true
            callStackView.isHidden = true
            //: return
            return

                    //: } else if DismissReactiveCompatible.share.loginUid != DepictionThen.getCustomerServiceID(),
        } else if DismissReactiveCompatible.share.loginUid != DepictionThen.noteFamily(),
                  //: DismissReactiveCompatible.share.loginUserMode.sex == userModel.sex,
                  DismissReactiveCompatible.share.loginUserMode.sex == userModel.sex,
                  //: DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                  DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue
        { // 非客服，同性别，默认模式
            //: isHidden = true
            isHidden = true

            //: } else {
        } else {
            //: chatBtn.isHidden = false
            chatBtn.isHidden = false
            //: videoBtn.isHidden = false
            videoBtn.isHidden = false
        }
        //: if DismissReactiveCompatible.share.loginUserMode.freeMsgTimes.count > 0 {
        if DismissReactiveCompatible.share.loginUserMode.freeMsgTimes.count > 0 {
            //: self.addSubview(freeImg2)
            self.addSubview(freeImg2)
            //: freeImg2.snp.makeConstraints { make in
            freeImg2.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.chatBtn.snp.trailing).offset(16)
                make.trailing.equalTo(self.chatBtn.snp.trailing).offset(16)
                //: make.bottom.equalTo(self.videoBtn.snp.top).offset(16)
                make.bottom.equalTo(self.videoBtn.snp.top).offset(16)
                //: make.size.equalTo(CGSize(width: 41, height: 28))
                make.size.equalTo(CGSize(width: 41, height: 28))
            }
        }
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 {
            //: self.addSubview(freeImg)
            self.addSubview(freeImg)
            //: freeImg.snp.makeConstraints { make in
            freeImg.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.videoBtn.snp.trailing)
                make.trailing.equalTo(self.videoBtn.snp.trailing)
                //: make.bottom.equalTo(self.videoBtn.snp.top).offset(16)
                make.bottom.equalTo(self.videoBtn.snp.top).offset(16)
                //: make.size.equalTo(CGSize(width: 41, height: 28))
                make.size.equalTo(CGSize(width: 41, height: 28))
            }
        }

        // 根据性别展示按钮样式
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
            //: if DismissReactiveCompatible.share.loginUserMode.loungePlus == false {
            if DismissReactiveCompatible.share.loginUserMode.loungePlus == false { // 男性非会员
                //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue {
                    //: maleVipPriceBtn.isHidden = false
                    maleVipPriceBtn.isHidden = false
                    //: maleVipPriceLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoVIPPrice)
                    maleVipPriceLab.text = String.combineMinimum(videoPrice: userInfoModel.videoVIPPrice)
                }
                //: vipIcon.isHidden = true
                vipIcon.isHidden = true
                //: callStrLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoPrice)
                callStrLab.text = String.combineMinimum(videoPrice: userInfoModel.videoPrice)

                //: } else {
            } else {
                //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
                let colors = [UIColor(hex: (String(notiPlayTitle.prefix(7))))!.cgColor, UIColor(hex: (String(data_unlessFenceUrl.prefix(7))))!.cgColor, UIColor(hex: (String(noti_builderKey.suffix(2)) + showChoosePath.replacingOccurrences(of: "say", with: "E9")))!.cgColor]
                //: videoBtn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
                videoBtn.setBackgroundImage(UIImage.beforeCan(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
                //: maleVipPriceBtn.isHidden = true
                maleVipPriceBtn.isHidden = true
                //: vipIcon.isHidden = false
                vipIcon.isHidden = false
                //: callStrLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoVIPPrice)
                callStrLab.text = String.combineMinimum(videoPrice: userInfoModel.videoVIPPrice)
            }
            //: if userInfoModel.isSendQuickMsg == 0 {
            if userInfoModel.isSendQuickMsg == 0 {
                //: chatBtn.image = UIImage.BundleImageNamed(name: "bth_me_sayhi_nor")
                chatBtn.image = UIImage.locationName(name: (String(appStrikeFormat)))
                //: }else {
            } else {
                //: chatBtn.image = UIImage.BundleImageNamed(name: "bth_me_chat_nor")
                chatBtn.image = UIImage.locationName(name: (String(constShadowKey.suffix(5)) + "e_cha" + String(data_minuteMessage.prefix(5))))
            }
            //: } else {
        } else { // 女性
            //: vipIcon.isHidden = true
            vipIcon.isHidden = true
            //: callStrLab.text = "Video Call".localized
            callStrLab.text = (String(user_transitionContentMessage.prefix(6)) + String(dataAddedAppRelateContent.suffix(4))).localized
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func concavity() {
        //: layer.addSublayer(shadowLayer)
        layer.addSublayer(shadowLayer)
        //: addSubview(chatBtn)
        addSubview(chatBtn)
        //: addSubview(videoBtn)
        addSubview(videoBtn)
        //: videoBtn.addSubview(callStackView)
        videoBtn.addSubview(callStackView)
        //: callStackView.addArrangedSubview(vipIcon)
        callStackView.addArrangedSubview(vipIcon)
        //: callStackView.addArrangedSubview(callIcon)
        callStackView.addArrangedSubview(callIcon)
        //: callStackView.addArrangedSubview(callStrLab)
        callStackView.addArrangedSubview(callStrLab)
        //: addSubview(maleVipPriceBtn)
        addSubview(maleVipPriceBtn)
        //: maleVipPriceBtn.addSubview(maleVipPriceLab)
        maleVipPriceBtn.addSubview(maleVipPriceLab)
        //: addSubview(editBtn)
        addSubview(editBtn)
        //: addSubview(bottomView)
        addSubview(bottomView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func arrow() {
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 65), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 65), height: actualWidth(w: 36)))
        }

        //: videoBtn.snp.makeConstraints { make in
        videoBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36)))
        }
        //: callStackView.snp.makeConstraints { make in
        callStackView.snp.makeConstraints { make in
            //: make.center.height.equalToSuperview()
            make.center.height.equalToSuperview()
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: callIcon.snp.makeConstraints { make in
        callIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: callStrLab.snp.makeConstraints { make in
        callStrLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: maleVipPriceBtn.snp.makeConstraints { make in
        maleVipPriceBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(videoBtn.snp.top).offset(-6)
            make.bottom.equalTo(videoBtn.snp.top).offset(-6)
            //: make.centerX.equalTo(videoBtn)
            make.centerX.equalTo(videoBtn)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 156), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 156), height: actualWidth(w: 36)))
        }
        //: maleVipPriceLab.snp.makeConstraints { make in
        maleVipPriceLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 42))
            make.leading.equalTo(actualWidth(w: 42))
            //: make.centerY.trailing.equalToSuperview()
            make.centerY.trailing.equalToSuperview()
        }

        //: editBtn.snp.makeConstraints { make in
        editBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(kDeviceSafeBottomHeight)
            make.height.equalTo(appInviteValue)
        }
    }
}
