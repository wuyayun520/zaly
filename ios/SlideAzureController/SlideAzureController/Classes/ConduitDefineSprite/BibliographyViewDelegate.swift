
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userDrownId:[UInt8] = [0x42,0x47,0x42,0x4d,0x1,0x3c,0x48,0x3d,0x3e,0x4b,0x13,0x2,0xf9,0x41,0x3a,0x4c,0xf9,0x47,0x48,0x4d,0xf9,0x3b,0x3e,0x3e,0x47,0xf9,0x42,0x46,0x49,0x45,0x3e,0x46,0x3e,0x47,0x4d,0x3e,0x3d]

fileprivate func castingLots(shadow num: UInt8) -> UInt8 {
    let value = Int(num) + 39
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "You've got no message yet." :*/
fileprivate let noti_equityStr:String = "You\'ve"
fileprivate let constViaStr:String = "observer harvest our no "
fileprivate let appLiquidPath:String = "ge yetexture resign speak equity retain"
fileprivate let appBlankText:String = "hi soon dismiss space mistt."

/*: "icon_kong_kong_default" :*/
fileprivate let const_gapOpportunityId:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n"]
fileprivate let userNumberDetectFiscalName:[Character] = ["g","_","d","e","f","a","u","l","t"]

/*: "Cancel" :*/
fileprivate let constIdentityTitle:[Character] = ["C","a","n","c","e","l"]

/*: "uid" :*/
fileprivate let kOfTitle:[UInt8] = [0x92,0x86,0x81]

fileprivate func aboutAnyone(proposal num: UInt8) -> UInt8 {
    let value = Int(num) - 29
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_message_report_nor" :*/
fileprivate let user_exposureKey:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","r"]
fileprivate let k_streetName:[Character] = ["e","p","o","r"]
fileprivate let show_readyResignStr:String = "t_norscan orientation eastern"

/*: "#FF935D" :*/
fileprivate let userWelcomeFormat:[Character] = ["#","F","F","9","3","5","D"]

/*: "btn_message_block_nor" :*/
fileprivate let dataThirdRedContent:[Character] = ["b","t","n","_","m","e"]
fileprivate let constThereLayText:[Character] = ["s","s","a","g","e","_","b","l","o","c","k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let userAliveUrl:String = "#C179heart option tune pole"
fileprivate let showBlockContent:String = "ex"

/*: "btn_message_untop_nor" :*/
fileprivate let constThemeKey:[UInt8] = [0x65,0x73,0x69,0x58,0x6a,0x62,0x74,0x74,0x66,0x60,0x62,0x58,0x72,0x69,0x73,0x68,0x77,0x58,0x69,0x68,0x75]

/*: "btn_message_top_nor" :*/
fileprivate let const_tapUrl:String = "btn_appear manager execute"
fileprivate let user_boardKey:String = "kit resignage_"
fileprivate let data_designName:String = "any toward attractive self appropriatetop_nor"

/*: "#8A79F9" :*/
fileprivate let userCharmHairValue:[Character] = ["#","8"]
fileprivate let showFocusPath:[Character] = ["A","7","9","F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let noti_flowPath:String = "concentration successbtn_m"
fileprivate let main_recoverStr:String = "amber time_dele"
fileprivate let userSameStr:String = "decrease"
fileprivate let data_specFormat:String = "e_norat mention she"

/*: "#FF506D" :*/
fileprivate let main_sunEveryStr:[Character] = ["#","F","F","5","0","6","D"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BibliographyViewDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingChatListViewController: TalkingBaseViewController {
class BibliographyViewDelegate: WeddingLovelyRecognizerDelegate {
    //: private var canLoadMore = false
    private var canLoadMore = false // 是否可以加载更多数据
    //: private var curType = ChatListTopItemType.All
    private var curType = SampleTopValueConvertible.All

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userDrownId.map{castingLots(shadow: $0)}, encoding: .utf8)!)
    }

    //: init(isHalfView: Bool = false) {
    init(isHalfView: Bool = false) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.manager.isHalf = isHalfView
        self.manager.isHalf = isHalfView
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: AfterThen.shared.func__refreshSysMsg()
        AfterThen.shared.answer()
        // 公共聊天室
        //: self.manager.req_chatRommArr { [weak self] succeed in
        self.manager.enableer { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: half_showViewAnimation()
        halfBlindAnimation()
        //: AfterThen.shared.func__addDelegate(self)
        AfterThen.shared.funcSocialTranslateDelegate(self)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            //: self.getConversationList()
            self.bite()
        }
        //: createUI()
        native()
        //: func__installNotificationObservers()
        text()
    }

    // MARK: - Lazy load

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(WorkerThen.self, forCellReuseIdentifier: WorkerThen.className())
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.contrastComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.refreshOnlineStatus(isFirst: true)
            self.shapeOf(isFirst: true)
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.nextRating { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.getConversationListMore()
            self.diskToAGreaterExtent()
        }
        //: let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        //: footer.setTitle("", for: MJRefreshState.idle)
        footer.setTitle("", for: MJRefreshState.idle)
        //: footer.setTitle("", for: MJRefreshState.noMoreData)
        footer.setTitle("", for: MJRefreshState.noMoreData)
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (noti_equityStr + " got" + String(constViaStr.suffix(4)) + "messa" + String(appLiquidPath.prefix(5)) + String(appBlankText.suffix(2))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(const_gapOpportunityId) + String(userNumberDetectFiscalName))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var removeCurrVBtn: UIButton = {
    private lazy var removeCurrVBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(removeCurrentViewButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bindEmpty), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: ReserveListManager = //: return ReserveListManager()
        .init()
    //: }()

    //: private lazy var topItemView: TalkingChatListTopItemView = {
    private lazy var topItemView: SolarView = {
        //: let view = TalkingChatListTopItemView.init()
        let view = SolarView()
        //: view.delegate = self
        view.delegate = self
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    /// 获取会话列表【增量返回】
    //: func getConversationList() {
    func bite() {
        //: self.manager.req_getConversationList { [weak self] isFinish in
        self.manager.thenCompletion { [weak self] isFinish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.canLoadMore = isFinish
            self.canLoadMore = isFinish
            // 获取用户在线状态逻辑
            //: var timeInterval = 0.5
            var timeInterval = 0.5
            //: var isFirst = false
            var isFirst = false
            //: if (self.manager.loadedOnlineStatus == false) {
            if self.manager.loadedOnlineStatus == false { // 首次
                //: self.manager.loadedOnlineStatus = true
                self.manager.loadedOnlineStatus = true
                //: timeInterval = 3
                timeInterval = 3
                //: isFirst = true
                isFirst = true
            }
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
                //: self.refreshOnlineStatus(isFirst: isFirst)
                self.shapeOf(isFirst: isFirst)
            }
        }
    }

    /// 刷新在线状态
    /// - Parameter isFirst: 是否首次刷新
    //: func refreshOnlineStatus(isFirst: Bool) {
    func shapeOf(isFirst: Bool) {
        //: self.manager.getConversationListOnlineStatus(isFirst: isFirst) { [weak self] succeed in
        self.manager.magnitudeerest(isFirst: isFirst) { [weak self] succeed in
            //: self?.tableView.endRefresh()
            self?.tableView.combineIn()
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self?.tableView.mj_footer?.endRefreshing()
                self?.tableView.mj_footer?.endRefreshing()
                //: self?.tableView.reloadData()
                self?.tableView.reloadData()
            }
        }
    }

    /// 获取更多会话列表数据
    //: func getConversationListMore() {
    func diskToAGreaterExtent() {
        //: self.getConversationList()
        self.bite()
    }

    /// 过滤增量会话
    //: func cconfigData(listData: [TalkingConversationModel]) {
    func whenGo(listData: [IceTapThen]) {
        // 获取用户信息
        //: if listData.count > 0 {
        if listData.count > 0 {
            //: self.manager.getUserInfoListFromCache(conversationList: listData) { [weak self] in
            self.manager.rankFinish(conversationList: listData) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.reloadData()
                self.juxtaposed()
            }
        }

        //: refreshTableView()
        plus()
    }

    /// 刷新表格
    //: func refreshTableView() {
    func plus() {
        //: guard self.manager.officialArr.count != 0 ||
        guard self.manager.officialArr.count != 0 ||
            //: self.manager.topArr.count != 0 ||
            self.manager.topArr.count != 0 ||
            //: self.manager.normalArr.count != 0 else {
            self.manager.normalArr.count != 0
        else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: return
            return
        }

        //: self.tableView.endRefresh()
        self.tableView.combineIn()
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.tableView.mj_footer?.isHidden = !canLoadMore
        self.tableView.mj_footer?.isHidden = !canLoadMore
        //: self.reloadData()
        self.juxtaposed()

        // 没有更多数据
        //: if self.canLoadMore == false {
        if self.canLoadMore == false {
            //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            self.tableView.mj_footer?.endRefreshingWithNoMoreData()
        }
    }

    /// 刷新
    //: func reloadData() {
    func juxtaposed() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    /// 返回上级页面手势事件
    //: @objc private func removeCurrentViewButtonClick() {
    @objc private func bindEmpty() {
        //: half_dismissViewAnimation()
        halfDayAnimation()
    }

    // 删除会话cell
    //: func deleteChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func tap(indexPath _: IndexPath, conversationModel: IceTapThen) {
        //: if !AfterThen.shared.func__checkCanOperateList() { return }
        if !AfterThen.shared.direct() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        WeddingReactiveCompatible.shared.availableId(targetID: conversationModel.targetId)
        //: var type: ChatListDataType = .normalList
        var type: FirDataType = .normalList
        //: if conversationModel.isPinned { type = .topList }
        if conversationModel.isPinned { type = .topList }
        //: AfterThen.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: type)
        AfterThen.shared.halogen(targetId: conversationModel.targetId, dataType: type)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.bringInModel(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            //: if self.canLoadMore &&
            if self.canLoadMore,
               //: self.manager.topArr.count == 0 &&
               self.manager.topArr.count == 0,
               //: self.manager.normalArr.count == 0 {
               self.manager.normalArr.count == 0
            {
                //: self.getConversationList()
                self.bite()
            }
        }
    }

    // 置顶会话
    //: func setTopChatListCell(conversationModel: TalkingConversationModel) {
    func topEnableicial(conversationModel: IceTapThen) {
        //: if !AfterThen.shared.func__checkCanOperateList() { return }
        if !AfterThen.shared.direct() { return }
        //: let isTop = !conversationModel.isPinned
        let isTop = !conversationModel.isPinned
        //: AfterThen.shared.func__setConversationTop(convModel: conversationModel, isTop: isTop)
        AfterThen.shared.thenIncrease(convModel: conversationModel, isTop: isTop)

        //: if curType == .intimate {
        if curType == .intimate {
            //: self.manager.top_intimateData(convModel: conversationModel, isTop: isTop)
            self.manager.quoteReceive(convModel: conversationModel, isTop: isTop)
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func behindAllow(indexPath: IndexPath, conversationModel: IceTapThen) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        AllowanceReactiveCompatible.maximal(title: nil,
                                 //: message: kMessage_blocking,
                                 message: k_blockFailValue,
                                 //: leftBtnTitle: "Cancel".localized,
                                 leftBtnTitle: (String(constIdentityTitle)).localized,
                                 //: rightBtnTitle: "OK".localized) {
                                 rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            ThresholdLevelRequestManager.burnMention(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(indexPath: indexPath, conversationModel: conversationModel)
                self.tap(indexPath: indexPath, conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: user_popValue,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: kOfTitle.map{aboutAnyone(proposal: $0)}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func attributeCharacterSet(conversationModel: IceTapThen) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = PositionView(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.priceBlack(view: nil)
    }
}

// MARK: - 通知

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    //: func func__installNotificationObservers() {
    func text() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(launchingPad(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: main_diskStr,
                                               //: object: nil)
                                               object: nil)
        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(noneCover(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: show_voiceMsg,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户亲密度
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserIntimate(notif:)),
                                               selector: #selector(build(notif:)),
                                               //: name: MSGLIST_UPDATE_INTIMATE_NOTIFICATION,
                                               name: app_barLogId,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func launchingPad(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: ExecuteBetterTransformable = dic![userID] as! ExecuteBetterTransformable
            let aInfoWrap: ExecuteBetterTransformable = dic![userID] as! ExecuteBetterTransformable
            //: let aModel: TalkingConversationModel? = AfterThen.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: IceTapThen? = AfterThen.shared.request(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        ski()

        //: self.reloadData()
        self.juxtaposed()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func ski() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: const_serverFormat) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = AfterThen.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: IceTapThen? = AfterThen.shared.request(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: const_serverFormat)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func noneCover(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.tar(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    /// 更新消息列表用户亲密度
    //: @objc private func func__updateUserIntimate(notif: Notification) {
    @objc private func build(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userIntimate(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.gapFor(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - MotivationViewDelegate

//: extension TalkingChatListViewController: TalkingChatListTopItemViewDelegate {
extension BibliographyViewDelegate: MotivationViewDelegate {
    //: func resetToTopItemView() {
    func computeView() {
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: topItemView.resetToSeleteAll()
            topItemView.resetLeave()
        }
    }

    //: func changeTopItem(type: ChatListTopItemType) {
    func topSortComponentPartVariationFail(type: SampleTopValueConvertible) {
        //: self.curType = type
        self.curType = type
        //: if self.curType == .All {
        if self.curType == .All {
            //: tableView.mj_header?.isHidden = false
            tableView.mj_header?.isHidden = false
            //: tableView.mj_footer?.isHidden = false
            tableView.mj_footer?.isHidden = false
            //: refreshTableView()
            plus()
            //: } else {
        } else {
            //: self.manager.req_intimateData()
            self.manager.femaleParentCalendar()
            //: tableView.mj_header?.isHidden = true
            tableView.mj_header?.isHidden = true
            //: tableView.mj_footer?.isHidden = true
            tableView.mj_footer?.isHidden = true

            //: if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
            if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
                //: self.tableView.isHidden = true
                self.tableView.isHidden = true
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
            //: uploadRecord.uploadRecordEvent(eventID: ClickIntimateTabNoP)
            const_pathMsg.tabKeep(eventID: const_errorBottomUrl)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatListViewController: UITableViewDelegate, UITableViewDataSource {
extension BibliographyViewDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: return 5
            return 5
            //: } else {
        } else {
            //: return 2
            return 2
        }
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: switch section {
            switch section {
            //: case ChatListSectionTyep.offical.rawValue:
            case RegularVarArg.offical.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.officialArr.count
                return self.manager.officialArr.count

            //: case ChatListSectionTyep.chatRoom.rawValue:
            case RegularVarArg.chatRoom.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.chatRoomArr.count
                return self.manager.chatRoomArr.count

            //: case ChatListSectionTyep.moreMsg.rawValue:
            case RegularVarArg.moreMsg.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                // 首次加载完数据再展示，防止提前进入无数据
                //: if self.manager.loadedOnlineStatus == false { return 0 }
                if self.manager.loadedOnlineStatus == false { return 0 }
                //: return 1
                return 1

            //: case ChatListSectionTyep.top.rawValue:
            case RegularVarArg.top.rawValue:
                //: return self.manager.topArr.count
                return self.manager.topArr.count

            //: case ChatListSectionTyep.normal.rawValue:
            case RegularVarArg.normal.rawValue:
                //: return self.manager.normalArr.count
                return self.manager.normalArr.count

            //: default:
            default:
                //: return 0
                return 0
            }
            //: } else {
        } else {
            //: switch section {
            switch section {
            //: case ChatListSectionIntimateTyep.top.rawValue:
            case NaturalBasicType.top.rawValue:
                //: return self.manager.intimateTopArr.count
                return self.manager.intimateTopArr.count
            //: case ChatListSectionIntimateTyep.normal.rawValue:
            case NaturalBasicType.normal.rawValue:
                //: return self.manager.intimateNorArr.count
                return self.manager.intimateNorArr.count
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: WorkerThen.className(), for: indexPath) as! WorkerThen
        //: var model: TalkingConversationModel?
        var model: IceTapThen?
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == RegularVarArg.moreMsg.rawValue {
                //: model = self.manager.req_moreMsgGetPlaceholderModel()
                model = self.manager.secureScale()
                //: } else {
            } else {
                //: model = self.manager.req_conversationModel(indexPath: indexPath)
                model = self.manager.markPath(indexPath: indexPath)
            }
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.bitPath(indexPath: indexPath)
        }
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.upperJawbone(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.writtenAccount(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: if curType == .All {
        if curType == .All {
            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.markPath(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.bitPath(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
        }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let model: TalkingConversationModel?
        let model: IceTapThen?
        //: if curType == .All {
        if curType == .All {
            //: model = self.manager.req_conversationModel(indexPath: indexPath)
            model = self.manager.markPath(indexPath: indexPath)
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.bitPath(indexPath: indexPath)
        }
        //: if model == nil {
        if model == nil {
            //: return nil
            return nil
        }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model!)
            self.attributeCharacterSet(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.locationName(name: (String(user_exposureKey) + String(k_streetName) + String(show_readyResignStr.prefix(5)))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = IceWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(userWelcomeFormat)))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(indexPath: indexPath, conversationModel: model!)
            self.behindAllow(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.locationName(name: (String(dataThirdRedContent) + String(constThereLayText))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = IceWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(userAliveUrl.prefix(5)) + showBlockContent.replacingOccurrences(of: "ex", with: "F9")))

        // 置顶
        //: let topBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let topBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.setTopChatListCell(conversationModel: model!)
            self.topEnableicial(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: let image = model!.isPinned ? "btn_message_untop_nor":"btn_message_top_nor"
        let image = model!.isPinned ? String(bytes: constThemeKey.map{$0^7}, encoding: .utf8)! : (String(const_tapUrl.prefix(4)) + "mess" + String(user_boardKey.suffix(4)) + String(data_designName.suffix(7)))
        //: if let topBtnTrashcan = UIImage.BundleImageNamed(name: image).cgImage {
        if let topBtnTrashcan = UIImage.locationName(name: image).cgImage {
            //: topBtn.image = ImageWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            topBtn.image = IceWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: topBtn.backgroundColor = UIColor(hex: "#8A79F9")
        topBtn.backgroundColor = UIColor(hex: (String(userCharmHairValue) + String(showFocusPath)))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(indexPath: indexPath, conversationModel: model!)
            self.tap(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.BundleImageNamed(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.locationName(name: (String(noti_flowPath.suffix(5)) + "essage" + String(main_recoverStr.suffix(5)) + userSameStr.replacingOccurrences(of: "decrease", with: "t") + String(data_specFormat.prefix(5)))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = IceWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(main_sunEveryStr)))

        //: let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if self.manager.isHalf == false &&
        if self.manager.isHalf == false &&
            //: self.curType == .All &&
            self.curType == .All &&
            //: section == ChatListSectionTyep.offical.rawValue &&
            section == RegularVarArg.offical.rawValue &&
            //: self.manager.officialArr.count > 0 &&
            self.manager.officialArr.count > 0 &&
            //: DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
            DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue
        {
            //: return 15.0
            return 15.0
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: if self.curType == .All && section == ChatListSectionTyep.offical.rawValue && self.manager.officialArr.count > 0 {
        if self.curType == .All && section == RegularVarArg.offical.rawValue && self.manager.officialArr.count > 0 {
            //: let v = UIView()
            let v = UIView()
            //: v.backgroundColor = tableView.backgroundColor
            v.backgroundColor = tableView.backgroundColor
            //: return v
            return v
        }
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == RegularVarArg.moreMsg.rawValue { // 更多消息
                //: let vc = TalkingMoreMessagesListViewController()
                let vc = BetterRecognizerDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: return
                return
            }

            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.markPath(indexPath: indexPath) else {
                //: return
                return
            }
            //: if model.chatType == .group {
            if model.chatType == .group { // 群聊
                //: pushChatRoomList(model: model)
                sparkModel(model: model)

                //: } else if model.chatType == .service {
            } else if model.chatType == .service { // 官方客服
                //: PushThen.share.func__pushToWebVC(webViewType: .FAQ)
                PushThen.share.plumage(webViewType: .FAQ)
                //: uploadRecord.uploadRecordEvent(eventID: ClickCSCNoP, toUid: model.targetId)
                const_pathMsg.tabKeep(eventID: main_lengthValue, toUid: model.targetId)

                //: } else {
            } else {
                //: if model.targetId == DepictionThen.getXiaoMiID() {
                if model.targetId == DepictionThen.xiao() { // 系统消息
                    //: uploadRecord.uploadRecordEvent(eventID: ClickSystemNotificationNoP, toUid: model.targetId)
                    const_pathMsg.tabKeep(eventID: mainLocationPath, toUid: model.targetId)
                    //: } else {
                } else {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
                    const_pathMsg.tabKeep(eventID: userAgeUrl, toUid: model.targetId)
                }

                //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
                let isFrom = self.manager.isHalf ? EnablestageOthersParaFromEnum.LiveRoom : EnablestageOthersParaFromEnum.Normal
                //: PushThen.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
                PushThen.share.resolutionBegin(chatID: model.targetId, isFrom: isFrom) { vc in
                    //: guard isFrom != .LiveRoom else { return }
                    guard isFrom != .LiveRoom else { return }
                    // 只有从tabar的消息列表进入私信 再返回时，才展示app store评分逻辑
                    //: if self.manager.check_messageListIsHaveSession() == true {
                    if self.manager.samplingSickList() == true {
                        //: vc.needShowRating = true
                        vc.needShowRating = true
                    }
                }
            }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.bitPath(indexPath: indexPath) else {
                //: return
                return
            }
            //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
            let isFrom = self.manager.isHalf ? EnablestageOthersParaFromEnum.LiveRoom : EnablestageOthersParaFromEnum.Normal
            //: PushThen.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
            PushThen.share.resolutionBegin(chatID: model.targetId, isFrom: isFrom) { vc in
                //: guard isFrom != .LiveRoom else { return }
                guard isFrom != .LiveRoom else { return }
                // 只有从tabar的消息列表进入私信 再返回时，才展示app store评分逻辑
                //: if self.manager.check_messageListIsHaveSession() == true {
                if self.manager.samplingSickList() == true {
                    //: vc.needShowRating = true
                    vc.needShowRating = true
                }
            }
        }
    }
}

// MARK: - 跳转公共聊天室

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    //: func pushChatRoomList(model: TalkingConversationModel) {
    func sparkModel(model: IceTapThen) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickChatRoomNoP, toUid: model.targetId)
        const_pathMsg.tabKeep(eventID: app_turnText, toUid: model.targetId)
        //: guard model.onlyOneRoomId.isEmptyString else {
        guard model.onlyOneRoomId.isEmptyString else {
            //: PushThen.share.func__pushToGroupChat(groupId: model.onlyOneRoomId)
            PushThen.share.miscalculation(groupId: model.onlyOneRoomId)
            //: return
            return
        }
        //: let vc = TalkingChatRoomListVC.init()
        let vc = PlaceOfBusinessRecognizerDelegate()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingChatListViewController: IMManagerDelegate {
extension BibliographyViewDelegate: ManufacturerManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func heat(data: [IceTapThen]) {
        //: self.manager.req_initData()
        self.manager.convertData()
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: self.manager.req_intimateData()
            self.manager.femaleParentCalendar()
        }
        //: cconfigData(listData: data)
        whenGo(listData: data)
    }
}

// MARK: - 半屏页面展示/隐藏动画

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    /// 半屏展示动画
    //: private func half_showViewAnimation() {
    private func halfBlindAnimation() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_SHOW, object: nil, userInfo: nil)
        NotificationCenter.default.post(name: data_mineSaltStr, object: nil, userInfo: nil)
        //: self.view.frame = CGRect(x: 0, y: ScreenHeight-HalfViewTopMargin, width: ScreenWidth, height: ScreenHeight)
        self.view.frame = CGRect(x: 0, y: main_nameData - showFileTitle, width: main_logStr, height: main_nameData)
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: 0,
                                     y: 0,
                                     //: width: ScreenWidth,
                                     width: main_logStr,
                                     //: height: ScreenHeight)
                                     height: main_nameData)
        }
    }

    /// 半屏页消失动画
    //: private func half_dismissViewAnimation() {
    private func halfDayAnimation() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: ScreenHeight-HalfViewTopMargin,
                                     y: main_nameData - showFileTitle,
                                     //: width: ScreenWidth,
                                     width: main_logStr,
                                     //: height: ScreenHeight)
                                     height: main_nameData)
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromParent()
            self.removeFromParent()
            //: self.view.removeFromSuperview()
            self.view.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingChatListViewController {
extension BibliographyViewDelegate {
    // MARK: - UI

    //: private func createUI() {
    private func native() {
        //: if self.manager.isHalf == false {
        if self.manager.isHalf == false { // 全屏
            //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
            if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue { // 审核模式
                //: view.backgroundColor = .clear
                view.backgroundColor = .clear
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                }

                //: } else {
            } else {
                //: view.backgroundColor = .appBgColor()
                view.backgroundColor = .doingTo()
                //: view.addSubview(topItemView)
                view.addSubview(topItemView)
                //: topItemView.snp.makeConstraints { make in
                topItemView.snp.makeConstraints { make in
                    //: make.leading.trailing.top.equalToSuperview()
                    make.leading.trailing.top.equalToSuperview()
                    //: make.height.equalTo(50)
                    make.height.equalTo(50)
                }
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.top.equalTo(topItemView.snp.bottom)
                    make.top.equalTo(topItemView.snp.bottom)
                    //: make.leading.trailing.bottom.equalToSuperview()
                    make.leading.trailing.bottom.equalToSuperview()
                }
            }

            //: } else {
        } else { // 半屏
            //: self.view.backgroundColor = .clear
            self.view.backgroundColor = .clear

            //: view.addSubview(removeCurrVBtn)
            view.addSubview(removeCurrVBtn)
            //: removeCurrVBtn.snp.makeConstraints { make in
            removeCurrVBtn.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.height.equalTo(HalfViewTopMargin)
                make.height.equalTo(showFileTitle)
            }

            //: view.addSubview(contentView)
            view.addSubview(contentView)
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(removeCurrVBtn.snp.bottom)
                make.top.equalTo(removeCurrVBtn.snp.bottom)
                //: make.leading.trailing.bottom.equalToSuperview()
                make.leading.trailing.bottom.equalToSuperview()
            }
            //: contentView.layoutIfNeeded()
            contentView.layoutIfNeeded()
            //: contentView.Corner(width: contentView.width,
            contentView.rogueStateForRadii(width: contentView.width,
                                           //: height: contentView.height,
                                           height: contentView.height,
                                           //: corners: [.topLeft, .topRight],
                                           corners: [.topLeft, .topRight],
                                           //: cornerRadii: .init(width: 8, height: 8))
                                           cornerRadii: .init(width: 8, height: 8))

            //: contentView.addSubview(tableView)
            contentView.addSubview(tableView)
            //: tableView.snp.makeConstraints { make in
            tableView.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-appInviteValue)
            }
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.juxtaposed()
        }
    }
}
