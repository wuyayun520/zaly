
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let data_barrierSquareStr:String = "appealPSE"

/*: "UID" :*/
fileprivate let userApplicationMsg:String = "UIdress"

/*: "Any" :*/
fileprivate let noti_prettyData:String = "down connect harvestAny"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let showRoundingLessText:[UInt8] = [0x6e,0x6f,0x73,0x6a,0x2e,0x67,0x61,0x54,0x72,0x65,0x73,0x75,0x2f,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x6f,0x66,0x6e,0x49,0x63,0x69,0x73,0x61,0x42,0x72,0x65,0x73,0x55]

/*: "获取数据" :*/
fileprivate let kBasicTitle:String = "获取数\u{636e}"

/*: "json 解析失败" :*/
fileprivate let show_channelId:String = "json 解movie cur mutual rank"
fileprivate let userRegularInviteId:[Character] = ["析","失","\u{8d25}"]

/*: "request_HasInit" :*/
fileprivate let userWhenGlobalPath:[Character] = ["r","e","q","u","e"]
fileprivate let user_impulseData:String = "st_Horange wed audience anima begin"

/*: "Reachable via WiFi" :*/
fileprivate let data_creationKey:String = "others layer absolute fatal mistReacha"
fileprivate let userMonthId:String = "ia Wiselected every"
fileprivate let app_denyName:String = "Fibusiness beautiful development"

/*: "Reachable via Cellular" :*/
fileprivate let mainSiblingPath:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l"]
fileprivate let app_judgeData:String = "LULAR"

/*: "Network not reachable" :*/
fileprivate let dataSnapMsg:String = "Netwojump neck"
fileprivate let mainRecognizeDueCompositionPath:String = "rk notwritten think drown mp"
fileprivate let userSpecialQualityKey:String = "habrevenuee"

/*: "Not reachable" :*/
fileprivate let constGoldPath:String = "wind burnNot re"
fileprivate let showGapValue:String = "automatichable"

/*: "Unable to start notifier" :*/
fileprivate let kBlowMortalUrl:String = "drown year levelUnab"
fileprivate let user_objectMeetingSomethingMessage:String = "o start condition bug installation"
fileprivate let app_recognizeMessage:String = "notifieallow"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class DismissReactiveCompatible: NSObject {
public class DismissReactiveCompatible: NSObject {
    //: @objc static public let share = DismissReactiveCompatible()
    @objc public static let share = DismissReactiveCompatible()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = InmateRegularReactiveCompatible() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = UtiliserHiddenModelType() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = FootingInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = ProcessingTransformable() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: StatusMeasurable = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return AfterArtSumLiteral.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return AfterArtSumLiteral.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: ManufacturerThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (data_barrierSquareStr.replacingOccurrences(of: "appeal", with: "PH") + "SSID") {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: ManufacturerThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (userApplicationMsg.replacingOccurrences(of: "dress", with: "D")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func precocious() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = InmateRegularReactiveCompatible()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        userPlainFormat = (String(noti_prettyData.suffix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        const_collectionValue = (String(noti_prettyData.suffix(3))).localized
    }
}

//: extension DismissReactiveCompatible {
extension DismissReactiveCompatible {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func weddingLicence(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(DismissReactiveCompatible.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            data_partyText.set(DismissReactiveCompatible.share.loginUserMode.userID, forKey: mainBottomGameContent)
            //: } else {
        } else {
            //: AfterThen.shared.func__LogingOut()
            AfterThen.shared.lifetime()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            data_partyText.removeObject(forKey: mainBottomGameContent)
            //: func__cleanPrevLoginData()
            halfA()
//            ManufacturerThen.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            MotivationThen.share.inviteInRed(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func beyondDown() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = data_partyText.dictionary(forKey: show_lastDescriptionId)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<ProcessingTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: DismissReactiveCompatible.share.appConfigMode = configModel
            DismissReactiveCompatible.share.appConfigMode = configModel
        }
        //: if let status = DismissReactiveCompatible.share.reachability?.connection, status != .unavailable {
        if let status = DismissReactiveCompatible.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            linkData()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(memoryWant(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func linkData() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        RevenueMovementManagerRequest.total { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func loginSave() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = data_partyText.dictionary(forKey: appErrTitle)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<InmateRegularReactiveCompatible>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func halfA() {
        //: func__reSet()
        precocious()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        data_partyText.removeObject(forKey: appErrTitle)
//        let oldServerUrl: String = ManufacturerThen.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func serve() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.cellCollection() + String(bytes: showRoundingLessText.reversed(), encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.untilListen(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<RangeHandyJSON>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (kBasicTitle))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(show_channelId.prefix(6)) + String(userRegularInviteId)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func tillRequest() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(userWhenGlobalPath) + String(user_impulseData.prefix(4)) + "asInit"))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    RevenueMovementManagerRequest.hiRequest()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func panel() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(data_creationKey.suffix(6)) + "ble v" + String(userMonthId.prefix(5)) + String(app_denyName.prefix(2))))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(mainSiblingPath) + app_judgeData.lowercased()))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(dataSnapMsg.prefix(5)) + String(mainRecognizeDueCompositionPath.prefix(6)) + " reac" + userSpecialQualityKey.replacingOccurrences(of: "revenue", with: "l")))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(constGoldPath.suffix(6)) + showGapValue.replacingOccurrences(of: "automatic", with: "ac")))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(kBlowMortalUrl.suffix(4)) + "le t" + String(user_objectMeetingSomethingMessage.prefix(8)) + app_recognizeMessage.replacingOccurrences(of: "allow", with: "r")))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func memoryWant(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            linkData()
        }
    }
}
