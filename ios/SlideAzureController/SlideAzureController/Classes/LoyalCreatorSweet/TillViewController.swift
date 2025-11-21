
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_greetKey:[UInt8] = [0x92,0x97,0x92,0x9d,0x51,0x8c,0x98,0x8d,0x8e,0x9b,0x63,0x52,0x49,0x91,0x8a,0x9c,0x49,0x97,0x98,0x9d,0x49,0x8b,0x8e,0x8e,0x97,0x49,0x92,0x96,0x99,0x95,0x8e,0x96,0x8e,0x97,0x9d,0x8e,0x8d]

fileprivate func kingPhysics(expected num: UInt8) -> UInt8 {
    let value = Int(num) + 215
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let userDistrictTargetMessage:[Character] = ["a","p","p","l","e"," ","授","权","失","败","，","请","稍"]
fileprivate let dataSecretName:[Character] = ["后","\u{518d}","试"]

/*: "google 授权失败，请稍后再试" :*/
fileprivate let notiElectMessage:[Character] = ["g","o","o","g","l","e"," ","授","权","\u{5931}","\u{8d25}","，","请","稍","后"]
fileprivate let notiTakeName:[Character] = ["再","试"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TillViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class TillViewController: WeddingLovelyRecognizerDelegate {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_greetKey.map{kingPhysics(expected: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.heatReplacement()
        //: self.setupSubViewsConstraint()
        self.dress()
        //: self.bindInteraction()
        self.global()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: BlowMainView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = BlowMainView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension TillViewController {
    //: func req_thirdLogin(_ type: LoginType) {
    func alive(_ type: ContainerCustomReflectable) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            VouchControllerDelegate.shared.gesture { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(userDistrictTargetMessage) + String(dataSecretName)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                InsertProgressHUD.momentShow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                FirRequestTool.replaceCompletion(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            AbsoluteThen.shared.userRevenue(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (String(notiElectMessage) + String(notiTakeName)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                InsertProgressHUD.momentShow()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                FirRequestTool.replaceCompletion(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = PhaseRecognizerDelegate(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = PhaseRecognizerDelegate(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension TillViewController {
    //: func loginAction(type: LoginType) {
    func restriction(type: ContainerCustomReflectable) {
        //: self.req_thirdLogin(type)
        self.alive(type)
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension TillViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func heatReplacement() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: ContainerCustomReflectable) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.restriction(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dress() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func global() {}
}
