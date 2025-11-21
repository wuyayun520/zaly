
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_cancelFormerOrMessage:[UInt8] = [0xbb,0xc0,0xbb,0xc6,0x7a,0xb5,0xc1,0xb6,0xb7,0xc4,0x8c,0x7b,0x72,0xba,0xb3,0xc5,0x72,0xc0,0xc1,0xc6,0x72,0xb4,0xb7,0xb7,0xc0,0x72,0xbb,0xbf,0xc2,0xbe,0xb7,0xbf,0xb7,0xc0,0xc6,0xb7,0xb6]

fileprivate func visibleNearby(processing num: UInt8) -> UInt8 {
    let value = Int(num) + 174
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_back_white" :*/
fileprivate let const_guideSecondPath:String = "btn_bafresh detail special level"
fileprivate let mainStartName:String = "hilinke"

/*: "area_icon_ :*/
fileprivate let mainSpecialId:String = "innerea"

/*: "get img error" :*/
fileprivate let data_oppositionKey:[Character] = ["g","e","t"," ","i","m","g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhaseRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class PhaseRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = SmallishThen.share.haveMinimumCountry()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: WorkOfArtLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: WorkOfArtLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_cancelFormerOrMessage.map{visibleNearby(processing: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.light()
        //: self.setupSubViewsConstraint()
        self.para()
        //: self.bindInteraction()
        self.cohere()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: CrownedHeadThen = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = CrownedHeadThen(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: dataPointTitle, width: 44, height: 44))
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_guideSecondPath.prefix(6)) + "ck_w" + mainStartName.replacingOccurrences(of: "link", with: "t"))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(window), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension PhaseRecognizerDelegate {
    //: @objc func backBtnClick() {
    @objc func window() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func funcAction() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            FirRequestTool.focusProfile(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.tab()
                }
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
                    //: self.func__pushToPhoneCodeVC()
                    self.tab()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func timePassword() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            FirRequestTool.follow(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            FirRequestTool.adminCompletion(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func adjust() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = SmallRecognizerDelegate()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.lessen()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func tab() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = MateViewController(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func lessen() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (mainSpecialId.replacingOccurrences(of: "inner", with: "ar") + "_icon_") + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = BlackEffectTool.default.shadeTing(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.regularPolygon()
                //: printLog(message: "get img error")
                printLog(message: (String(data_oppositionKey)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.bolt(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension PhaseRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func light() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        lessen()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func para() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cohere() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.timePassword()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.funcAction()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.adjust()
        }

        //: addTapGestureRecognizer()
        workIn()
    }
}
