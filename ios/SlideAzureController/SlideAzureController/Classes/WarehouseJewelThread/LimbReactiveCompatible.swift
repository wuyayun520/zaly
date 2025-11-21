
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let k_flagMessage:String = "produce stumblebg_s"
fileprivate let notiPairKey:String = "answer quest_mis"
fileprivate let show_holdCompareTitle:String = "lope instruction pretty birdg_de"

/*: "#777777" :*/
fileprivate let app_capData:String = "#shareshareshareshareshareshare"

/*: "#333333" :*/
fileprivate let mainStatusFullValue:String = "#pendingpendingpendingpendingpendingpending"

/*: "Popular" :*/
fileprivate let userStyleValue:String = "abs overwhelm liePopula"
fileprivate let user_adjustmentMessage:String = "above"

/*: "Nearby" :*/
fileprivate let k_loopEndMovieKey:String = "there belowNearby"

/*: "New" :*/
fileprivate let app_permissionData:String = "Newsense constraint native para"

/*: "btn_popular_search_nor" :*/
fileprivate let dataLatText:String = "btn_poactivity pull"
fileprivate let k_cellName:[Character] = ["p","u","l","a","r","_","s","e","a","r","c"]
fileprivate let k_remainingMessage:String = "h_norbox food agree slide forth"

/*: "icon_live_nor" :*/
fileprivate let user_menuFormat:[Character] = ["i","c","o","n","_","l","i","v","e","_","n","o","r"]

/*: "btn_popular_ranking_nor" :*/
fileprivate let main_conversionMsg:[Character] = ["b","t","n","_","p","o","p","u"]
fileprivate let main_clubKey:String = "decision off thelar_ra"
fileprivate let noti_steepApplyKey:[Character] = ["n","k","i","n","g","_","n","o","r"]

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let user_environmentPath:[UInt8] = [0x21,0x20,0x6e,0x61,0x6c,0x50,0x20,0x72,0x61,0x74,0x53,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x6f,0x6a,0x20,0x6f,0x74,0x20,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x6f,0x20,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x74,0x61,0x72,0x67,0x6e,0x6f,0x43]

/*: "No, thanks" :*/
fileprivate let constDialogToneMsg:[Character] = ["N","o",","," ","t"]
fileprivate let k_actualReId:[Character] = ["h","a","n","k","s"]

/*: "Find out more" :*/
fileprivate let constQuitUrl:[Character] = ["F"]
fileprivate let constBoneRequestStr:String = "reduce closedind o"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let appSeekData:[Character] = ["c","l","i","c","k","S","t","a","r","P","r","o","j","e","c","t"]
fileprivate let k_resolutionKey:[Character] = ["p","o","p","-","u","p","s","C","a","n","c","e","l"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let show_subjectTitle:[UInt8] = [0x65,0x72,0x6f,0x6d,0x74,0x75,0x6f,0x64,0x6e,0x69,0x46,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let data_mmFormat:[UInt8] = [0x97,0xc2,0xc2,0xc5,0xcd,0x76,0x7b,0x96,0x76,0xca,0xc5,0x76,0xc9,0xbb,0xc4,0xba,0x76,0xcf,0xc5,0xcb,0x76,0xc4,0xc5,0xca,0xbf,0xbc,0xbf,0xb9,0xb7,0xca,0xbf,0xc5,0xc4,0xc9,0x95]

fileprivate func safetySpeed(beard num: UInt8) -> UInt8 {
    let value = Int(num) + 170
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let main_rugHundredCookieValue:[Character] = ["C","a","n","c","e"]
fileprivate let appFutureId:[Character] = ["l"]

/*: "Settings" :*/
fileprivate let showBeastBeautyStr:[Character] = ["S","e","t","t","i","n","g"]
fileprivate let app_eachMsg:String = "global"

/*: "male" :*/
fileprivate let showUsedSteepMessage:[UInt8] = [0x49,0x3d,0x48,0x41]

fileprivate func eventRemark(broadcast num: UInt8) -> UInt8 {
    let value = Int(num) + 36
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let user_arrayMessage:[Character] = ["f","e","m","a","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimbReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class LimbReactiveCompatible: WeddingLovelyRecognizerDelegate {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var isNearbyShow = false
    private var isNearbyShow = false
    //: var seleteIndex = 0
    var seleteIndex = 0
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        YaThen.shared.afloat()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        YaThen.shared.perIgnore()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.towardScore()
        //: self.setupSubViewsConstraint()
        self.becomeBuild()
        //: self.addNotification()
        self.availableNotification()
        //: self.func__checkStarPlanNeedShow()
        self.materialStar()
        //: self.func__turnOnSystemNotification()
        self.atDealVia()
        //: self.pushIsClubVideo()
        self.universalVideo()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
                //: PushThen.share.func__pushUserVerifyController(toast: nil)
                PushThen.share.undercoverOperation(toast: nil)
            }
            //: if DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
            if DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
                //: self.getSayHidata()
                self.combineSearch()
            }
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        inhabitBody()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.locationName(name: (String(k_flagMessage.suffix(4)) + "houye" + String(notiPairKey.suffix(4)) + "anguan" + String(show_holdCompareTitle.suffix(4)) + "fault")))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: dataPointTitle, width: main_logStr, height: userCellCurrencyPath))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (app_capData.replacingOccurrences(of: "share", with: "7")))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (mainStatusFullValue.replacingOccurrences(of: "pending", with: "3")))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .bigGallery(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .bigGallery(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (mainStatusFullValue.replacingOccurrences(of: "pending", with: "3")))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 0
        segmentedView.defaultSelectedIndex = 0
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: dataPointTitle, width: main_logStr, height: main_nameData - main_explainMessage - dataPointTitle)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 0
        view.defaultSelectedIndex = 0
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()
        //: array.append("Popular".localized)
        array.append((String(userStyleValue.suffix(6)) + user_adjustmentMessage.replacingOccurrences(of: "above", with: "r")).localized)
        //: array.append("Nearby".localized)
        array.append((String(k_loopEndMovieKey.suffix(6))).localized)
        //: array.append("New".localized)
        array.append((String(app_permissionData.prefix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: let popularVC = SocialPopularViewController.init()
            let popularVC = IqViewProtocol()
            //: if i == "Popular".localized {
            if i == (String(userStyleValue.suffix(6)) + user_adjustmentMessage.replacingOccurrences(of: "above", with: "r")).localized {
                //: popularVC.tabType = .hot
                popularVC.tabType = .hot
                //: } else if i == "Nearby".localized {
            } else if i == (String(k_loopEndMovieKey.suffix(6))).localized {
                //: popularVC.tabType = .nearby
                popularVC.tabType = .nearby
                //: } else if i == "New".localized {
            } else if i == (String(app_permissionData.prefix(3))).localized {
                //: popularVC.tabType = .new
                popularVC.tabType = .new
            }
            //: array.append(popularVC)
            array.append(popularVC)
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(dataLatText.prefix(6)) + String(k_cellName) + String(k_remainingMessage.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(maleParent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(user_menuFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tooOf), for: .touchUpInside)
        //: btn.isHidden = !(DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(main_conversionMsg) + String(main_clubKey.suffix(6)) + String(noti_steepApplyKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(singular), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension LimbReactiveCompatible {
    /// 一键SayHi
    //: private func getSayHidata() {
    private func combineSearch() {
        //: TalkingUserRequestManager.func__sayHiData { succeed, result, errorModel in
        ThresholdLevelRequestManager.rootQuantity { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let array: Array =  result as? [Any] ?? []
                let array: Array = result as? [Any] ?? []
                //: var dataArr: [sayHiModel] = []
                var dataArr: [sayHiModel] = []
                //: if let datas = Array<sayHiModel>.deserialize(from: array as? Array) {
                if let datas = Array<sayHiModel>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [sayHiModel])!)
                    dataArr.append(contentsOf: (datas as? [sayHiModel])!)
                }
                //: if dataArr.count > 0 {
                if dataArr.count > 0 {
                    //: TalkingPopupWindowManager.shared.sayHiPopUpWindow(models: dataArr)
                    OutletWindowManager.shared.speaker(models: dataArr)
                }
            }
        }
    }

    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func universalVideo() {
        //: if DismissReactiveCompatible.share.loginUserMode.jumpType == 1 && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.jumpType == 1, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue, DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: PushThen.share.func__pushToRandomVideoVC(isBeginRand: false)
                PushThen.share.popOutClose(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func singular() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = ArtViewController()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        const_pathMsg.tabKeep(eventID: dataLocalName)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func untilInmate() {
        //: if DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0 &&
        if DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0,
           //: DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue &&
           DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue,
           //: DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue
        {
            //: initLiveTipsTimer()
            buildSystem()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func alongTa() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.exitSchedule() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: PrimaryDelegate.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! PrimaryDelegate).isModal == true
            {
                //: return
                return
            }
        }

        //: if DismissReactiveCompatible.share.appUserConfigMode.enableLive &&
        if DismissReactiveCompatible.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !ManagerPushListener.nowPanel().isLive,
           //: !TalkingSocketManager.shared.isInfo &&
           !SantaLuciaFirSocketDelegate.shared.isInfo,
           //: !TalkingSocketManager.shared.isCalling {
           !SantaLuciaFirSocketDelegate.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            OutletWindowManager.shared.subscribeTo()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func buildSystem() {
        //: let timeInterval = TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(DismissReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(alongTa), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func inhabitBody() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func tooOf() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: showLimitPath, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension LimbReactiveCompatible {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func materialStar() {
        //: guard DismissReactiveCompatible.share.showWindow == true else { return }
        guard DismissReactiveCompatible.share.showWindow == true else { return }
        //: DismissReactiveCompatible.share.showWindow = false
        DismissReactiveCompatible.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        AllowanceReactiveCompatible.maximal(title: nil,
                                 //: message: "Congratulation on your chance to join the Star Plan !",
                                 message: String(bytes: user_environmentPath.reversed(), encoding: .utf8)!,
                                 //: leftBtnTitle: "No, thanks",
                                 leftBtnTitle: (String(constDialogToneMsg) + String(k_actualReId)),
                                 //: rightBtnTitle: "Find out more") {
                                 rightBtnTitle: (String(constQuitUrl) + String(constBoneRequestStr.suffix(5)) + "ut more"))
        {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            ProgMedalReactiveCompatible.share.stem(key: (String(appSeekData) + String(k_resolutionKey)))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            // 跳转巨星计划页
            //: PushThen.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            PushThen.share.plumage(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            ProgMedalReactiveCompatible.share.stem(key: String(bytes: show_subjectTitle.reversed(), encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func atDealVia() {
        // 有随机视频，不弹出开启推送弹窗
        //: if DismissReactiveCompatible.share.loginUserMode.jumpType == 1 &&
        if DismissReactiveCompatible.share.loginUserMode.jumpType == 1,
           //: DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue &&
           DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue,
           //: DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
           DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = data_partyText.bool(forKey: data_homeTitle)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        SpecialPermissionTool.thinChange { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                data_partyText.set(true, forKey: data_homeTitle)
                //: TalkingAlertShow.alert(title: nil,
                AllowanceReactiveCompatible.maximal(title: nil,
                                         //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                         message: String(bytes: data_mmFormat.map{safetySpeed(beard: $0)}, encoding: .utf8)!.unitedStates(showLengthControlUrl),
                                         //: leftBtnTitle: "Cancel".localized,
                                         leftBtnTitle: (String(main_rugHundredCookieValue) + String(appFutureId)).localized,
                                         //: rightBtnTitle: "Settings".localized) {
                                         rightBtnTitle: (String(showBeastBeautyStr) + app_eachMsg.replacingOccurrences(of: "global", with: "s")).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func maleParent() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = GrabSampleViewController()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        const_pathMsg.tabKeep(eventID: showFormalSampleLengthText)
    }

    /// 切换到party
    //: func switchParty() {
    func makePersonParty() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension LimbReactiveCompatible {
    /// 添加通知
    //: private func addNotification() {
    private func availableNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        YaThen.shared.addLive()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(untilInmate),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: mainReplaceTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(inhabitBody),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kOnValue,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension LimbReactiveCompatible: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            const_pathMsg.tabKeep(eventID: "\(appLocationContent)_\(DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue ? String(bytes: showUsedSteepMessage.map{eventRemark(broadcast: $0)}, encoding: .utf8)! : (String(user_arrayMessage)))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? IqViewProtocol
            //: popularVC?.showSettingsAlertView()
            popularVC?.shView() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            const_pathMsg.tabKeep(eventID: mainCameraMsg)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            const_pathMsg.tabKeep(eventID: dataIndexExplainValue)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension LimbReactiveCompatible: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension LimbReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func towardScore() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func becomeBuild() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + dataPointTitle)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
