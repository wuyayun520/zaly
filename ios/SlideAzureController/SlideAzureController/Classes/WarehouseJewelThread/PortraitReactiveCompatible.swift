
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let dataLimitedPath:String = "class next harvestwww.appl"
fileprivate let constExampleTitle:String = "main select enter inserte.com"

/*: "后台播放音乐模式异常:  :*/
fileprivate let userAmName:String = "\u{540e}台播放音乐模"
fileprivate let data_beautifulPath:String = "式异常: "

/*: "key_uid" :*/
fileprivate let showJumpUrl:String = "key_uidabout flat better"

/*: "Reachable via WiFi" :*/
fileprivate let dataDecideVoiceValue:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let main_prettyRugKey:[Character] = ["R","e","a","c","h","a"]
fileprivate let show_upEnergyFormat:String = "half administrative little modelble vi"
fileprivate let notiThanUrl:String = "LULAR"

/*: "Current network unavailable" :*/
fileprivate let main_readerMessage:String = "Currencoordinate resign"
fileprivate let user_distributionId:String = "twmaybe"
fileprivate let userTakeValue:[Character] = ["k"," ","u","n","a","v","a","i","l","a","b","l","e"]

/*: "Network none" :*/
fileprivate let kFatalMessage:[Character] = ["N","e","t","w","o","r","k"]
fileprivate let k_entryTitle:[Character] = [" ","n","o","n","e"]

/*: "call_response_bgm" :*/
fileprivate let show_eyebrowKey:[Character] = ["c","a","l","l","_","r"]
fileprivate let userCollectMsg:String = "espdismisss"
fileprivate let user_itMessage:[Character] = ["e","_","b","g","m"]

/*: "Error playing BMG audio:  :*/
fileprivate let show_numberMsg:String = "para click amber refuse goError "
fileprivate let kShowData:[Character] = ["p","l","a","y","i","n","g"," ","B","M","G"," ","a","u","d","i","o",":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PortraitReactiveCompatible.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class PortraitReactiveCompatible: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(dataLimitedPath.suffix(8)) + String(constExampleTitle.suffix(5))))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = PortraitReactiveCompatible()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = TrailerArtThen()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(click),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: const_cameraTitle,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension PortraitReactiveCompatible {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func behindJudge(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        PortraitReactiveCompatible.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        ManufacturerThen.share.streamCurrency()
        //: AppDelegateHelper.shared.installNotificationObservers()
        PortraitReactiveCompatible.shared.imageInput()
        //: AppDelegateHelper.shared.initGetCache()
        PortraitReactiveCompatible.shared.become()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        ManufacturerThen.share.blindTask()
        //: AppDelegateHelper.shared.currApplication = application
        PortraitReactiveCompatible.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            MateThen.trackBy(msg: (userAmName + data_beautifulPath.capitalized) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func now(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        PortraitReactiveCompatible.shared.announcement()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func enterBlock(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        PortraitReactiveCompatible.shared.action()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        PortraitReactiveCompatible.shared.share()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func remarkSpace(_ application: UIApplication) {
        //: let unreadMsgCount = DismissReactiveCompatible.share.unreadMessageNum
        let unreadMsgCount = DismissReactiveCompatible.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func applicationAdmin(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func conversation(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        PortraitReactiveCompatible.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func become() {
        //: DismissReactiveCompatible.share.func__checkAppConfigModeNeedUpdate()
        DismissReactiveCompatible.share.beyondDown()
        //: DismissReactiveCompatible.share.func__loadCurrentLoginInfoData()
        DismissReactiveCompatible.share.loginSave()
    }

    //: @objc private func initRootController() {
    @objc private func click() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            PortraitReactiveCompatible.shared.pin(currApplication!)
        }
        //: DismissReactiveCompatible.share.func__listenRequestHasInit()
        DismissReactiveCompatible.share.tillRequest()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (data_partyText.string(forKey: mainBottomGameContent)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            singleDeadline()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(DismissReactiveCompatible.share.loginUid)
            Crashlytics.crashlytics().setUserID(DismissReactiveCompatible.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(DismissReactiveCompatible.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(DismissReactiveCompatible.share.loginUid, forKey: (String(showJumpUrl.prefix(7))))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            TermsRequestDelegate.shared.evaluateAnalyse()
            //: DismissReactiveCompatible.share.request_HasInit = false
            DismissReactiveCompatible.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            MotivationThen.share.inviteInRed(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            RevenueMovementManagerRequest.someoneFcmid()
            //: } else {
        } else {
            //: if DismissReactiveCompatible.share.loginSessionId.count > 0 {
            if DismissReactiveCompatible.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                FirRequestTool.allowFor { _ in
                }
                //: DismissReactiveCompatible.share.func__cleanPrevLoginData()
                DismissReactiveCompatible.share.halfA()
            }
            //: func__setupLoginViewController()
            profileSomeoneController()
            //: DismissReactiveCompatible.share.request_HasInit = true
            DismissReactiveCompatible.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func singleDeadline() {
        //: func__setupRootViewController(type: .Taking)
        thinType(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func profileSomeoneController() {
        //: func__setupRootViewController(type: .Login)
        thinType(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func thinType(type: TarBankVariationViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            bindOccur(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.bindOccur(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func bindOccur(type: TarBankVariationViewType) {
        //: if checkRootTarBarController(type: type) {
        if clanMember(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = ExecuteBarController(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func clanMember(type: TarBankVariationViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is ExecuteBarController {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? ExecuteBarController {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func imageInput() {
        // 网络状态监听
        //: DismissReactiveCompatible.share.startNotifierNetwork()
        DismissReactiveCompatible.share.panel()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(recent(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(noti_groupUrl)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                RegularReactiveCompatible.shared.bringTogether()
                //: self.func__setupTakingViewController()
                self.singleDeadline()
                //: DismissReactiveCompatible.share.func__UserLoginChanged(isLogin: true)
                DismissReactiveCompatible.share.weddingLicence(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(DismissReactiveCompatible.share.loginUid)
                Crashlytics.crashlytics().setUserID(DismissReactiveCompatible.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(DismissReactiveCompatible.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(DismissReactiveCompatible.share.loginUid, forKey: (String(showJumpUrl.prefix(7))))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                TermsRequestDelegate.shared.evaluateAnalyse()
                //: if !DismissReactiveCompatible.share.request_HasInit {
                if !DismissReactiveCompatible.share.request_HasInit {
                    //: DismissReactiveCompatible.share.request_HasInit = true
                    DismissReactiveCompatible.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                RevenueMovementManagerRequest.someoneFcmid()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(kOnValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: DismissReactiveCompatible.share.func__UserLoginChanged(isLogin: false)
                DismissReactiveCompatible.share.weddingLicence(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                SantaLuciaFirSocketDelegate.shared.featureOut(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.profileSomeoneController()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).tickSh()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(data_versionKey)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                RevenueMovementManagerRequest.account { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: dataConversationMsg, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func recent(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(dataDecideVoiceValue)))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(main_prettyRugKey) + String(show_upEnergyFormat.suffix(6)) + "a Cel" + notiThanUrl.lowercased()))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            enablece(showMsg: (String(main_readerMessage.prefix(6)) + "t ne" + user_distributionId.replacingOccurrences(of: "maybe", with: "or") + String(userTakeValue)).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(kFatalMessage) + String(k_entryTitle)))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func announcement() {
        //: checkAndEndBackgroundTask()
        share()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.share()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func share() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func simultaneously() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = BlackEffectTool.default.undersized(name: (String(show_eyebrowKey) + userCollectMsg.replacingOccurrences(of: "dismiss", with: "on") + String(user_itMessage)))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            caliber()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(show_numberMsg.suffix(6)) + String(kShowData)) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func action() {
        //: stopSystemVibrate()
        fieldProcess()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func caliber() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func fieldProcess() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
