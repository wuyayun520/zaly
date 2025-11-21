
//: Declare String Begin

/*: "content" :*/
fileprivate let user_piFormat:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let k_stepId:[Character] = ["j","u","m","p","K","e","y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let kCrushMsg:String = "upbitead"
fileprivate let show_statusHumanText:String = "eaderPicsick floor city fragment"

/*: "truePersonAuth" :*/
fileprivate let app_subjectTuneName:[Character] = ["t","r","u","e","P","e","r","s","o","n","A"]
fileprivate let appBraceStr:String = "generalh"

/*: "yyyy-MM-dd" :*/
fileprivate let show_halfName:String = "YYYY"
fileprivate let user_scriptFormat:[Character] = ["-","M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OutletWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum PhaseCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case video_CallView
    case video_CallView // 主动拨打页面
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
    //: case Discount_Recharge
    case Discount_Recharge // 充值优惠弹窗
    //: case say_Hi
    case say_Hi // 一键SayHi弹窗
}

//: class TalkingPopupWindowManager: NSObject {
class OutletWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [PhaseCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<PhaseCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: var sayHiViewData = [sayHiModel]()
    var sayHiViewData = [sayHiModel]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = OutletWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        rootMention()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension OutletWindowManager {
    //: func setObserver() {
    func rootMention() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.alert()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(distinguishedServiceCross), name: app_toKey, object: nil)
    }

    //: func setHomePopUpWindow() {
    func jawUpward() {
        // 默认模式, 男性, 未订阅
        //: if DismissReactiveCompatible.share.loginUserMode.jumpType == 0,
        if DismissReactiveCompatible.share.loginUserMode.jumpType == 0,
           //: DismissReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           DismissReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           //: DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue,
           DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue,
           //: DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
           DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue,
           //: DismissReactiveCompatible.share.loginUserMode.loungePlus == false {
           DismissReactiveCompatible.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(PhaseCaseIterable.Web_Subscribe)
        }

        //: if  DismissReactiveCompatible.share.loginUserMode.showSignInPage && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.showSignInPage, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(PhaseCaseIterable.sign_in)
        }

        //: if DismissReactiveCompatible.share.loginUserMode.isNaUser == false,
        if DismissReactiveCompatible.share.loginUserMode.isNaUser == false,
           //: DismissReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           DismissReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           //: DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue,
           DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue,
           //: DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(PhaseCaseIterable.video_Cover)
        }

        //: if DismissReactiveCompatible.share.appUserConfigMode.showNewGuidance, DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appUserConfigMode.showNewGuidance, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(PhaseCaseIterable.New_Guidance)
        }

        //: if DismissReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0 && DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: refuseViewData["content"] = DismissReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(String(user_piFormat))] = DismissReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(k_stepId))] = (kCrushMsg.replacingOccurrences(of: "bite", with: "lo") + "UserH" + String(show_statusHumanText.prefix(8)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PhaseCaseIterable.Attestation_Refuse)
        }

        //: if DismissReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0 && DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: refuseViewData["content"] = DismissReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(String(user_piFormat))] = DismissReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(k_stepId))] = (String(app_subjectTuneName) + appBraceStr.replacingOccurrences(of: "general", with: "ut"))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PhaseCaseIterable.Attestation_Refuse)
        }

        //: if DismissReactiveCompatible.share.appUserConfigMode.showMainPageDiscount == 1 {
        if DismissReactiveCompatible.share.appUserConfigMode.showMainPageDiscount == 1 {
            //: self.alertQueue.onNext(PopupWindowType.Discount_Recharge)
            self.alertQueue.onNext(PhaseCaseIterable.Discount_Recharge)
        }
    }

    //: func startLivePopUpWindow() {
    func subscribeTo() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(PhaseCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func dorsalVertebra() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(PhaseCaseIterable.video_Call)
    }

    /// 主动拨打弹窗
    //: func videoCallViewPopUpWindow() {
    func term() {
        //: self.alertQueue.onNext(PopupWindowType.video_CallView)
        self.alertQueue.onNext(PhaseCaseIterable.video_CallView)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func totaleraction() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(PhaseCaseIterable.face_Verification)
    }

    /// 一键SayHi弹窗
    //: func sayHiPopUpWindow(models: [sayHiModel]) {
    func speaker(models: [sayHiModel]) {
        //: self.sayHiViewData = models
        self.sayHiViewData = models
        //: self.alertQueue.onNext(PopupWindowType.say_Hi)
        self.alertQueue.onNext(PhaseCaseIterable.say_Hi)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func sash(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(String(user_piFormat))] = dic[(String(user_piFormat))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(k_stepId))] = dic[(String(k_stepId))] as? String
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(PhaseCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func distinguishedServiceCross() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PhaseCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func alert() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.frontMethod(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func frontMethod(type: PhaseCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: PushThen.share.func__pushToWebVC(webViewType: .SiginPopup)
            PushThen.share.plumage(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SpillBlendThen(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.objectShow()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = TickNaturalUpView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.foreBot()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
//            if DepictionThen.getWindow().subviews.count >= 3 {
//                return
//            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = LeaseFourThen(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.revenuePoint()

        //: case.video_CallView:
        case .video_CallView:
            //: if let index = self.dataSource.firstIndex(of: .video_CallView) {
            if let index = self.dataSource.firstIndex(of: .video_CallView) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
//            if DepictionThen.getWindow().subviews.count >= 3 {
//                return
//            }
            //: let vc = SystemActiveCallVC()
            let vc = SmallViewController()
            //: currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            exitSchedule()?.navigationController?.pushViewController(vc, animated: true)

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = TillView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.ageOfShow()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = data_partyText.object(forKey: k_purchaseContent)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.switchly(date: Date(), dateFormat: (show_halfName.lowercased() + String(user_scriptFormat)))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                data_partyText.set(today, forKey: k_purchaseContent)
                //: PushThen.share.func__pushToSubscribeAlert()
                PushThen.share.enablelyKey()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = GuideView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.setViewData(dit: refuseViewData)
            view.storageBone(dit: refuseViewData)
            //: view.show()
            view.generateer()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ContainerUpView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.development()

        //: case .Discount_Recharge:
        case .Discount_Recharge:
            //: PushThen.share.func_pushToDiscountRechargeView()
            PushThen.share.cherryRed()

        //: case .say_Hi:
        case .say_Hi:
            //: if let index = self.dataSource.firstIndex(of: .say_Hi) {
            if let index = self.dataSource.firstIndex(of: .say_Hi) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = SayHiPopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = PutReactiveCompatible(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show(models: self.sayHiViewData)
            view.areaShow(models: self.sayHiViewData)
        }
    }

//    func containsView<T: UIView>(_ window: UIWindow, type: T.Type) -> Bool {
//        for view in window.subviews {
//            if let typedView = view as? T {
//                return true
//            }
//        }
//        return false
//    }
}
