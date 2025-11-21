
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let k_distanceTitle:String = "combined"
fileprivate let notiPiText:[Character] = ["m","a","i","l"," ","A","d","d","r","e","s","s"]

/*: "Phone number" :*/
fileprivate let appSouthwestName:String = "Phonperson everyone term framework seek"
fileprivate let notiIdentityId:String = "activity"

/*: "Enter the email code sent to" :*/
fileprivate let constManageKey:String = "custom pinEnte"
fileprivate let constFormalText:String = " emathink full block"
fileprivate let showTooTwoText:[Character] = ["s","e","n","t"," ","t","o"]

/*: "Enter the phone code sent to" :*/
fileprivate let dataPolicySizeTitle:String = "Enter tright near"
fileprivate let user_soccerStr:String = "he pavailable decrease a right"
fileprivate let notiHealthyValue:String = " code seonce i weight doc"
fileprivate let noti_destinationName:[Character] = ["n","t"," ","t","o"]

/*: "8075F5" :*/
fileprivate let constMenuData:[Character] = ["8","0","7","5","F","5"]

/*: "F4F4F4" :*/
fileprivate let userCoatMessage:[Character] = ["F"]
fileprivate let user_certainName:[Character] = ["4","F","4","F","4"]

/*: "Resend verification email" :*/
fileprivate let k_betterUrl:String = "merely mechanism containResend "
fileprivate let const_effFormat:[Character] = ["v","e","r","i","f","i"]
fileprivate let kAnonymousFormat:[Character] = ["c","a","t","i","o","n"," ","e","m","a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let userBeginKey:[UInt8] = [0xdd,0xe0,0xf9,0xfa,0xb3,0xa9,0xc0,0xef,0xa9,0xf0,0xe6,0xfc,0xa9,0xea,0xe8,0xe7,0xae,0xfd,0xa9,0xfb,0xec,0xea,0xec,0xe0,0xff,0xec,0xa9,0xfd,0xe1,0xec,0xa9,0xff,0xec,0xfb,0xe0,0xef,0xe0,0xea,0xe8,0xfd,0xe0,0xe6,0xe7,0xa9,0xea,0xe6,0xed,0xec,0xa5,0xa9,0xf9,0xe5,0xec,0xe8,0xfa,0xec,0xa9,0xea,0xe1,0xec,0xea,0xe2,0xa9,0xfe,0xe1,0xec,0xfd,0xe1,0xec,0xfb,0xa9,0xfd,0xe1,0xec,0xa9,0xe4,0xec,0xfa,0xfa,0xe8,0xee,0xec,0xa9,0xe0,0xfa,0xa9,0xe0,0xe7,0xa9,0xfa,0xf9,0xe8,0xe4,0xa9,0xe6,0xfb,0xa9,0xe7,0xe6,0xfd]

/*: "Bind Email succeed" :*/
fileprivate let userEarMessage:[Character] = ["B","i","n","d"," ","E","m"]
fileprivate let k_concentrationStr:String = "ail suelse home pin"
fileprivate let mainUpData:[Character] = ["c","c","e","e","d"]

/*: "Bind Mobile Phone succeed" :*/
fileprivate let constConditionMessage:[Character] = ["B","i","n","d"," ","M","o","b","i","l","e"," ","P","h","o","n","e"," "]
fileprivate let dataGlobalLetterMessage:String = "job"
fileprivate let k_gapInformData:String = "uwilleed"

/*: "Resend verification email (%@s)" :*/
fileprivate let k_extentId:[UInt8] = [0xc9,0xfe,0xe8,0xfe,0xf5,0xff,0xbb,0xed,0xfe,0xe9,0xf2,0xfd,0xf2,0xf8,0xfa,0xef,0xf2,0xf4,0xf5,0xbb,0xfe,0xf6,0xfa,0xf2,0xf7,0xbb,0xb3,0xbe,0xdb,0xe8,0xb2]

private func herWelcome(arc num: UInt8) -> UInt8 {
    return num ^ 155
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PortraitThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class PortraitThen: WeddingLovelyRecognizerDelegate {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: YaBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.color()
        //: self.setupSubViewsConstraint()
        self.accept()
        //: self.bindInteraction()
        self.leaveYesterday()
        //: func_starCodeTime()
        available()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        invitation()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .bigGallery(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (k_distanceTitle.replacingOccurrences(of: "combined", with: "E") + String(notiPiText)).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(appSouthwestName.prefix(4)) + "e numbe" + notiIdentityId.replacingOccurrences(of: "activity", with: "r")).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .bigGallery(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(constManageKey.suffix(4)) + "r the" + String(constFormalText.prefix(4)) + "il code " + String(showTooTwoText)).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(dataPolicySizeTitle.prefix(7)) + String(user_soccerStr.prefix(4)) + "hone" + String(notiHealthyValue.prefix(8)) + String(noti_destinationName)).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .bigGallery(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .attractiveIn()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: InmateView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = InmateView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(constMenuData)))!, normalColor: UIColor(hex: (String(userCoatMessage) + String(user_certainName)))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(k_betterUrl.suffix(7)) + String(const_effFormat) + String(kAnonymousFormat)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .bigGallery(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: userBeginKey.map{$0^137}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.bigGallery(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension PortraitThen {
    //: func func__bindEmailAction() {
    func place() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        InsertProgressHUD.superConnect(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            FirRequestTool.bind(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: DismissReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    DismissReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.showGuidanceName(showMsg: (String(userEarMessage) + String(k_concentrationStr.prefix(6)) + String(mainUpData)).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.view()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.scrunch()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            FirRequestTool.micromillimetreAccess(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.scrunch()
                    //: return
                    return
                }
                //: DismissReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                DismissReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.showGuidanceName(showMsg: (String(constConditionMessage) + dataGlobalLetterMessage.replacingOccurrences(of: "job", with: "s") + k_gapInformData.replacingOccurrences(of: "will", with: "cc")).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: DismissRunningCosmopolitanRecognizerDelegate.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? DismissRunningCosmopolitanRecognizerDelegate)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func quick() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        InsertProgressHUD.superConnect(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            FirRequestTool.bit(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.available()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.view()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.scrunch()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            FirRequestTool.who(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.view()
                    //: self.func_starCodeTime()
                    self.available()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.scrunch()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func available() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: k_extentId.map{herWelcome(arc: $0)}, encoding: .utf8)!.unitedStates(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.invitation()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(k_betterUrl.suffix(7)) + String(const_effFormat) + String(kAnonymousFormat)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func invitation() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension PortraitThen {
    // 添加视图
    //: private func setupSubviews() {
    private func color() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func accept() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func leaveYesterday() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.quick()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.place()
            }
            //: return
        }
    }
}
