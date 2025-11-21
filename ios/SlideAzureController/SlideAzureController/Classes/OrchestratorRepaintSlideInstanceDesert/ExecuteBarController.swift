
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_topicKey:[UInt8] = [0x16,0x1b,0x16,0x21,0xd5,0x10,0x1c,0x11,0x12,0x1f,0xe7,0xd6,0xcd,0x15,0xe,0x20,0xcd,0x1b,0x1c,0x21,0xcd,0xf,0x12,0x12,0x1b,0xcd,0x16,0x1a,0x1d,0x19,0x12,0x1a,0x12,0x1b,0x21,0x12,0x11]

fileprivate func joinMy(theory num: UInt8) -> UInt8 {
    let value = Int(num) + 83
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#EEEEEE" :*/
fileprivate let const_foundPath:String = "#EEEEEEhealthy revenue"

/*: "tabBar" :*/
fileprivate let main_renderUrl:[Character] = ["t","a","b","B","a","r"]

/*: "home" :*/
fileprivate let noti_thenValue:String = "hoproximate"

/*: "user" :*/
fileprivate let user_scaleValue:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let kComputeData:String = "ihugen"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecuteBarController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class ExecuteBarController: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: TarBankVariationViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = TaphouseArtTabBar()
    //: var advertisingView = TalkingAdvertisingView()
    var advertisingView = BlendBannerDelegate()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: TarBankVariationViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            dragee()
            //: ProgressHUD.show()
            InsertProgressHUD.momentShow()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            RevenueMovementManagerRequest.account { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: AfterThen.shared.func__addDelegate(self)
                AfterThen.shared.funcSocialTranslateDelegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.thinLimited()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.locationTypes(itemTypes: tarItemTypes as! [TypeYaNumberervalLiteral])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.funcThumbTypes(itemTypes: tarItemTypes)
                //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue && DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.springType(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.movement()

                //: if succeed && DismissReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if succeed && DismissReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: PushThen.share.func__pushToLockUserEmailVC(isShowBack: false)
                        PushThen.share.tabAcross(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            funcThumbTypes(itemTypes: self.thinLimited())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_topicKey.map{joinMy(theory: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(availableSkin),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: appProductionId,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(sufficientPut),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: const_allTopData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(diskLive),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: showLimitPath,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(homeDirection),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: k_minPath,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccess),
                                               selector: #selector(naturalProcess),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: mainWorkFormat,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: main_nameData - main_explainMessage), size: CGSize(width: main_logStr, height: main_explainMessage))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func dragee() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: main_nameData - main_explainMessage), size: CGSize(width: main_logStr, height: main_explainMessage))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.littleness(color: .white, size: CGSize(width: main_logStr, height: main_explainMessage))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.littleness(color: UIColor(hex: (String(const_foundPath.prefix(7))))!, size: CGSize(width: main_logStr, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.nameureBy()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(main_renderUrl)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func thinLimited() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == TarBankVariationViewType.Login {
            //: return [TabBarItemType.Login]
            return [TypeYaNumberervalLiteral.Login]
            //: } else {
        } else {
            //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
            if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue {
                //: return [TabBarItemType.Social,
                return [TypeYaNumberervalLiteral.Social,
                        //: TabBarItemType.Moment,
                        TypeYaNumberervalLiteral.Moment,
                        //: TabBarItemType.Message,
                        TypeYaNumberervalLiteral.Message,
                        //: TabBarItemType.Account]
                        TypeYaNumberervalLiteral.Account]
                //: } else {
            } else {
                //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
                if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [TypeYaNumberervalLiteral.Social,
                            //: TabBarItemType.Moment,
                            TypeYaNumberervalLiteral.Moment,
                            //: TabBarItemType.Live,
                            TypeYaNumberervalLiteral.Live,
                            //: TabBarItemType.Message,
                            TypeYaNumberervalLiteral.Message,
                            //: TabBarItemType.Account]
                            TypeYaNumberervalLiteral.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [TypeYaNumberervalLiteral.Social,
                            //: TabBarItemType.Moment,
                            TypeYaNumberervalLiteral.Moment,
                            //: TabBarItemType.Randow,
                            TypeYaNumberervalLiteral.Randow,
                            //: TabBarItemType.Message,
                            TypeYaNumberervalLiteral.Message,
                            //: TabBarItemType.Account]
                            TypeYaNumberervalLiteral.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func funcThumbTypes(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = typeFront(itemType: itemType as! TypeYaNumberervalLiteral)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = TicktockViewController(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! TypeYaNumberervalLiteral)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func typeFront(itemType: TypeYaNumberervalLiteral) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = LimbReactiveCompatible()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = RegularityViewController()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = RatingDisableThen()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = EngineeringThen()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = TillViewController()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = RandomMatchVC()
            ret = AdvertizingReactiveCompatible()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! TicktockViewController
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.dismantle(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension ExecuteBarController {
    /// 充值订阅成功，隐藏悬浮窗
    //: @objc func paySuccess() {
    @objc func naturalProcess() {
        //: self.advertisingView.closeBtnClick()
        self.advertisingView.handMeDownHost()
    }

    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func homeDirection() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        controller()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        springType(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = exitSchedule(), vc is LimbReactiveCompatible {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! LimbReactiveCompatible).makePersonParty()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func twoDownClick() {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard ManagerPushListener.nowPanel().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            enablece(showMsg: notiModePath)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = EndLiveView()
        //: tabView.show()
        tabView.scrivened()
    }

    //: func func__configViewDidLoad() {
    func movement() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        CountensityTapManager.share.parentInit()
        //: AppManagerRequest.func__reportDeviceID()
        RevenueMovementManagerRequest.upwardly()
        //: func__getLoginUserConfig(true)
        availableSkin(true)
    }

    //: func selectTabbar(type: Int) {
    func springType(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func sufficientPut() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.investigating()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func diskLive() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard SpecialPermissionTool.once() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = data_partyText.bool(forKey: show_dismissMsg)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            ManagerPushListener.nowPanel().sideSlip()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        data_partyText.set(true, forKey: show_dismissMsg)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = HiddenViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func hiddeBasic(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.menuPurchase(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func link() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        SantaLuciaFirSocketDelegate.shared.makeupPremium()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func sequenceType(type: TypeYaNumberervalLiteral = .Social) -> Bool {
        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else { return false }
        //: guard DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue else { return false }
        //: guard DismissReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        guard DismissReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        //: guard DismissReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard DismissReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingLiveManager.shared().isLive,
        guard !ManagerPushListener.nowPanel().isLive,
              //: !TalkingSocketManager.shared.isInfo,
              !SantaLuciaFirSocketDelegate.shared.isInfo,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !SantaLuciaFirSocketDelegate.shared.isCalling else { return false }
        //: let arr = DismissReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        let arr = DismissReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            OutletWindowManager.shared.subscribeTo()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension ExecuteBarController {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func availableSkin(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        RevenueMovementManagerRequest.societalCompletion { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.link()
                //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.tiedUp()
                    //: self.needShowLiveAlertView()
                    self.sequenceType()
                    //: self.func__selectClubTabbar()
                    self.funInstall()
                    //: self.tabBarView.randowFreeBtn()
                    self.tabBarView.randowBtn()
                    //: if DismissReactiveCompatible.share.appUserConfigMode.tabPageBanner.count > 0 {
                    if DismissReactiveCompatible.share.appUserConfigMode.tabPageBanner.count > 0 {
                        //: self.advertisingView = TalkingAdvertisingView.buildAdvertisingView()
                        self.advertisingView = BlendBannerDelegate.advertisingMatch()
                    }
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.upwards()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func funInstall() {
        //: if DismissReactiveCompatible.share.loginUserMode.jumpType == 1 {
        if DismissReactiveCompatible.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        hiddeBasic(isHidde: true)
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue, DismissReactiveCompatible.share.appUserConfigMode.homeTab == "home" {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue, DismissReactiveCompatible.share.appUserConfigMode.homeTab == (noti_thenValue.replacingOccurrences(of: "proximate", with: "me")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            springType(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            hiddeBasic(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func upwards() {
        //: guard DismissReactiveCompatible.share.loginUserMode.updateInfo == true else {
        guard DismissReactiveCompatible.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = OutletWindowManager.shared
        //: manager.setHomePopUpWindow()
        manager.jawUpward()

        //: if DismissReactiveCompatible.share.loginUserMode.jumpType == 2, DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue, DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.jumpType == 2, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            GenerateVideoManager.shared.aliveApp()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension ExecuteBarController {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = TypeYaNumberervalLiteral(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                twoDownClick()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            hiddeBasic(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if sequenceType(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        pinSelete()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == TypeYaNumberervalLiteral.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? RatingDisableThen
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.atAvailable()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: RatingDisableThen.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! RatingDisableThen).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func pinSelete() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case TypeYaNumberervalLiteral.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            const_pathMsg.tabKeep(eventID: constPointValue)
        //: case TabBarItemType.Randow.rawValue: break
        case TypeYaNumberervalLiteral.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case TypeYaNumberervalLiteral.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            const_pathMsg.tabKeep(eventID: constVersionName)
        //: case TabBarItemType.Message.rawValue:
        case TypeYaNumberervalLiteral.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            const_pathMsg.tabKeep(eventID: userSampleData)
        //: case TabBarItemType.Account.rawValue:
        case TypeYaNumberervalLiteral.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            const_pathMsg.tabKeep(eventID: main_scalePath)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - ManufacturerManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension ExecuteBarController: ManufacturerManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func failure(count _: Int) {
        //: refreshUnreadIMMessageCount()
        outerSpace()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func control(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(String(user_scaleValue))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(kComputeData.replacingOccurrences(of: "huge", with: "co"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.sumPic(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func outerSpace() {
        //: if AfterThen.shared.isConnection {
        if AfterThen.shared.isConnection {
            //: let unreadMsgCount = DismissReactiveCompatible.share.unreadMessageNum
            let unreadMsgCount = DismissReactiveCompatible.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.opVisual(unread: unreadMsgCount, barType: .Message)
        }
    }
}
