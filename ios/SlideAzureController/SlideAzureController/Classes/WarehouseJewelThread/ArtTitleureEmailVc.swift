
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let userBenchDeliveryPath:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n","o"]
fileprivate let const_tarMsg:String = "R"

/*: "Email Address" :*/
fileprivate let notiPossibleKey:[Character] = ["E","m","a"]
fileprivate let show_signalTitle:String = "shot dit validil Ad"

/*: "F4F6FA" :*/
fileprivate let app_computeTermsUpValue:String = "boxF6FA"

/*: "Add an email address" :*/
fileprivate let constAnyonePath:[Character] = ["A","d","d"," ","a","n"," ","e","m","a","i","l"," ","a","d","d","r","e","s"]
fileprivate let k_flexibleMessage:String = "S"

/*: "BBBBBB" :*/
fileprivate let k_platformAssignData:String = "contentcontentcontentcontentcontentcontent"

/*: "Only you will see your email on your profile." :*/
fileprivate let dataNoticeId:[UInt8] = [0x84,0xa3,0xa1,0xae,0x55,0xae,0xa4,0xaa,0x55,0xac,0x9e,0xa1,0xa1,0x55,0xa8,0x9a,0x9a,0x55,0xae,0xa4,0xaa,0xa7,0x55,0x9a,0xa2,0x96,0x9e,0xa1,0x55,0xa4,0xa3,0x55,0xae,0xa4,0xaa,0xa7,0x55,0xa5,0xa7,0xa4,0x9b,0x9e,0xa1,0x9a,0x63]

fileprivate func rivetLine(profile num: UInt8) -> UInt8 {
    let value = Int(num) - 53
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Send verification email" :*/
fileprivate let constShadowTitle:[Character] = ["S","e","n","d"," ","v","e","r","i","f","i","c"]
fileprivate let k_premiumData:String = "atilimit"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArtTitleureEmailVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindEmailVC: TalkingBaseViewController {
class ArtTitleureEmailVc: WeddingLovelyRecognizerDelegate {
    // 是否展示返回按钮
    //: var isBack = true
    var isBack = true
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: false)
            rankSlow(isOpen: false)
        }
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: true)
            rankSlow(isOpen: true)
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.script()
        //: self.setupSubViewsConstraint()
        self.sub()
        //: self.bindInteraction()
        self.vid()
        //: addTapGestureRecognizer()
        workIn()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userBenchDeliveryPath) + const_tarMsg.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hidden), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17.0)
        label.font = .bigGallery(type: .Semibold, fontSize: 17.0)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Email Address".localized
        label.text = (String(notiPossibleKey) + String(show_signalTitle.suffix(5)) + "dress").localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var emailInputView: UITextField = {
    private lazy var emailInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F6FA")
        textField.backgroundColor = UIColor(hex: (app_computeTermsUpValue.replacingOccurrences(of: "box", with: "F4")))
        //: textField.font = .pingfangFont(type: .Medium, fontSize: 17)
        textField.font = .bigGallery(type: .Medium, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dialog()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "Add an email address".localized, attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: (String(constAnyonePath) + k_flexibleMessage.lowercased()).localized, attributes: [NSAttributedString.Key.font: UIFont.bigGallery(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (k_platformAssignData.replacingOccurrences(of: "content", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.clearButtonMode = .whileEditing
        textField.clearButtonMode = .whileEditing
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var emailTipLabel: UILabel = {
    private lazy var emailTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15.0)
        label.font = .bigGallery(type: .Regular, fontSize: 15.0)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Only you will see your email on your profile.".localized
        label.text = String(bytes: dataNoticeId.map{rivetLine(profile: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 18)
        //: btn.setTitle("Send verification email".localized, for: .normal)
        btn.setTitle((String(constShadowTitle) + k_premiumData.replacingOccurrences(of: "limit", with: "o") + "n email").localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue || ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
            btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindEmailVC {
extension ArtTitleureEmailVc {
    //: @objc func backBtnClick() {
    @objc func hidden() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func checkCommitButtonState() {
    func read() {
        //: if emailInputView.text!.isEmptyString {
        if emailInputView.text!.isEmptyString {
            //: commitButton.isEnabled = false
            commitButton.isEnabled = false
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    //: func func__getEmailCodeAction() {
    func admin() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        InsertProgressHUD.superConnect(superView: view)
        //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: emailInputView.text!, isBind: true) { succeed, result, errorModel in
        FirRequestTool.bit(emailStr: emailInputView.text!, isBind: true) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: self.func__pushToPhoneCodeVC()
                self.to()
            }
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func to() {
        //: let vc = TalkingLoginBindInputCodeVC()
        let vc = PortraitThen()
        //: vc.phoneOrEmailStr = emailInputView.text!
        vc.phoneOrEmailStr = emailInputView.text!
        //: vc.viewType = .BindEmail
        vc.viewType = .BindEmail
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginBindEmailVC {
extension ArtTitleureEmailVc {
    // 添加视图
    //: private func setupSubviews() {
    private func script() {
        //: backBtn.isHidden = !isBack
        backBtn.isHidden = !isBack
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(emailInputView)
        view.addSubview(emailInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(emailTipLabel)
        view.addSubview(emailTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sub() {
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(6)
            make.leading.equalTo(6)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
            //: make.size.equalTo(44)
            make.size.equalTo(44)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn.snp.bottom).offset(44)
            make.top.equalTo(backBtn.snp.bottom).offset(44)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: emailInputView.snp.makeConstraints { make in
        emailInputView.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(emailInputView.snp.bottom).offset(40)
            make.top.equalTo(emailInputView.snp.bottom).offset(40)
        }
        //: emailTipLabel.snp.makeConstraints { make in
        emailTipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(commitButton.snp.bottom).offset(24)
            make.top.equalTo(commitButton.snp.bottom).offset(24)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func vid() {
        //: emailInputView.rx.text.orEmpty.asObservable()
        emailInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.read()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__getEmailCodeAction()
                self.admin()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
