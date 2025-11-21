
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_tooFairMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Resent Code" :*/
fileprivate let dataPrecedentId:String = "temporary imageResent Co"
fileprivate let constCreateUrl:[Character] = ["d","e"]

/*: "#8C7AFF" :*/
fileprivate let show_nearbyValue:String = "welcome lab s#8C7AFF"

/*: "mobile" :*/
fileprivate let showEffectMessage:[UInt8] = [0xb4,0xb6,0xbb,0xb0,0xb5,0xbc]

/*: "vcode" :*/
fileprivate let main_nextId:[UInt8] = [0xeb,0xfe,0xf2,0xf9,0xf8]

/*: "areaCode" :*/
fileprivate let appDirectUrl:[UInt8] = [0xf6,0xe5,0xf2,0xf6,0xd4,0xf8,0xf3,0xf2]

private func welcomePhoto(accept num: UInt8) -> UInt8 {
    return num ^ 151
}

/*: "email" :*/
fileprivate let const_yetTitle:[UInt8] = [0x4d,0x45,0x49,0x41,0x44]

private func motivationRating(keep num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "RSA加密失败" :*/
fileprivate let data_containId:[Character] = ["R","S","A","加","密","\u{5931}"]
fileprivate let app_relationSupportContent:String = "败"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MateViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeVC: TalkingBaseViewController {
class MateViewController: WeddingLovelyRecognizerDelegate {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: private var codeStr: String = ""
    private var codeStr: String = ""
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var loginType: TalkingLoginVCType?
    private var loginType: WorkOfArtLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: WorkOfArtLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.loginType = type
        self.loginType = type
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_tooFairMsg.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.setupSubviews()
        self.margin()
        //: self.setupSubViewsConstraint()
        self.uniteBuild()
        //: self.bindInteraction()
        self.hingeNightIntervaleractionInteraction()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: lazy var codeView: TalkingLoginCodeView = {
    lazy var codeView: RelativeFieldDelegate = {
        //: let codeView = TalkingLoginCodeView()
        let codeView = RelativeFieldDelegate()
        //: return codeView
        return codeView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginCodeVC {
extension MateViewController {
    //: func func_starCodeTime() {
    func randomMissTime() {
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
                //: self.func_setReCodeButton(timeCount: timeCount)
                self.eyebrow(timeCount: timeCount)
                //: })
            })
    }

    //: func func_endCodeTime() {
    func agnizeEvent() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_setReCodeButton(timeCount: Int) {
    func eyebrow(timeCount: Int) {
        //: self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(dataPrecedentId.suffix(9)) + String(constCreateUrl)).localized

        //: var attributes = [.foregroundColor: UIColor(hex: "#8C7AFF")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(show_nearbyValue.suffix(7))))!, .font: UIFont.bigGallery(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: newStr = newStr.appending(" (\(timeCount)s)")
            newStr = newStr.appending(" (\(timeCount)s)")
            //: } else {
        } else {
            //: func_endCodeTime()
            agnizeEvent()
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }
        //: let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeString.addAttribute(.foregroundColor, value: UIColor.appTitleColor(), range: theRange)
            attributeString.addAttribute(.foregroundColor, value: UIColor.dialog(), range: theRange)
        }
        //: self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
        self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
    }

    /// 手机号登录
    //: func func__loginAction() {
    func cost() {
        //: var reslutStr = ""
        var reslutStr = ""
        //: var reslutCodeStr = ""
        var reslutCodeStr = ""

        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: main_saveName)
            //: let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            //: reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            //: reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: self.view.endEditing(true)
            self.view.endEditing(true)
            //: ProgressHUD.show()
            InsertProgressHUD.momentShow()
            //: if loginType == .LoginPhone {
            if loginType == .LoginPhone {
                //: let params = ["mobile": reslutStr, "vcode": codeStr, "areaCode": reslutCodeStr]
                let params = [String(bytes: showEffectMessage.map{$0^217}, encoding: .utf8)!: reslutStr, String(bytes: main_nextId.map{$0^157}, encoding: .utf8)!: codeStr, String(bytes: appDirectUrl.map{welcomePhoto(accept: $0)}, encoding: .utf8)!: reslutCodeStr]
                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .PhoneLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                FirRequestTool.replaceCompletion(type: .PhoneLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.scrunch()
                    }
                }
                //: }else{
            } else {
                //: let params = ["email": reslutStr, "vcode": codeStr]
                let params = [String(bytes: const_yetTitle.map{motivationRating(keep: $0)}, encoding: .utf8)!: reslutStr, String(bytes: main_nextId.map{$0^157}, encoding: .utf8)!: codeStr]

                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .EmailLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                FirRequestTool.replaceCompletion(type: .EmailLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.scrunch()
                    }
                }
            }

            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败")
            printLog(message: (String(data_containId) + app_relationSupportContent.capitalized))
        }
    }

    //: func func__reSendloginCodeAction() {
    func detailSince() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            FirRequestTool.focusProfile(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.view()
                    //: self.func_starCodeTime()
                    self.randomMissTime()
                }
                //: self.codeView.codeInputView.startEdit()
                self.codeView.codeInputView.scrunch()
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            FirRequestTool.bit(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.view()
                    //: self.func_starCodeTime()
                    self.randomMissTime()
                }
            }
            //: self.codeView.codeInputView.startEdit()
            self.codeView.codeInputView.scrunch()
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginCodeVC {
extension MateViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func margin() {
        //: view.addSubview(codeView)
        view.addSubview(codeView)
        //: codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
        codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func uniteBuild() {
        //: codeView.snp.makeConstraints { make in
        codeView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func hingeNightIntervaleractionInteraction() {
        //: codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__loginAction()
                self.cost()
            }
            //: return
        }
        //: codeView.commitButton.rx.controlEvent(.touchUpInside)
        codeView.commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__loginAction()
                self.cost()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeView.reSendButton.rx.controlEvent(.touchUpInside)
        codeView.reSendButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__reSendloginCodeAction()
                self.detailSince()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: self.func_starCodeTime()
        self.randomMissTime()
    }
}
