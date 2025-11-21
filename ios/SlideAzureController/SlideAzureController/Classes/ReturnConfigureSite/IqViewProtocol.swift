
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let mainPeerMessage:[Character] = ["E","m","p","t","y","C","o","l","l","e","c","t","i","o"]
fileprivate let data_spareKey:[Character] = ["n","R"]
fileprivate let dataProcessorKey:[Character] = ["e","u","s","a","b","l","e","V","i","e","w"]

/*: "In order to find friends nearby please allow the access of your location." :*/
fileprivate let dataResponseId:[UInt8] = [0x9b,0xbc,0xf2,0xbd,0xa0,0xb6,0xb7,0xa0,0xf2,0xa6,0xbd,0xf2,0xb4,0xbb,0xbc,0xb6,0xf2,0xb4,0xa0,0xbb,0xb7,0xbc,0xb6,0xa1,0xf2,0xbc,0xb7,0xb3,0xa0,0xb0,0xab,0xf2,0xa2,0xbe,0xb7,0xb3,0xa1,0xb7,0xf2,0xb3,0xbe,0xbe,0xbd,0xa5,0xf2,0xa6,0xba,0xb7,0xf2,0xb3,0xb1,0xb1,0xb7,0xa1,0xa1,0xf2,0xbd,0xb4,0xf2,0xab,0xbd,0xa7,0xa0,0xf2,0xbe,0xbd,0xb1,0xb3,0xa6,0xbb,0xbd,0xbc,0xfc]

/*: "You've got no list yet." :*/
fileprivate let k_homeFormat:String = "You\'ve"
fileprivate let appExId:String = "auto after stretch securityo list"
fileprivate let kIllegalStr:[Character] = [" ","y","e","t","."]

/*: "users" :*/
fileprivate let noti_humanMessage:[Character] = ["u","s","e","r","s"]

/*: "userID" :*/
fileprivate let kLimitData:String = "least alongside listener minimizeuserID"

/*: "yyyy-MM-dd" :*/
fileprivate let kAppealTitle:String = "yyyy-Munit personal root"

/*: "Shielding Success" :*/
fileprivate let app_sequenceName:String = "Shidress hello destination"
fileprivate let notiHoneyText:String = "elddry"
fileprivate let constArrayMsg:String = "uccannouncementss"

/*: "lng" :*/
fileprivate let main_transformGoodKey:[UInt8] = [0xfa,0xf8,0xf1]

private func screenEnergy(matter num: UInt8) -> UInt8 {
    return num ^ 150
}

/*: "lat" :*/
fileprivate let notiNothingMouthId:[UInt8] = [0x34,0x39,0x2c]

private func takeTheField(tap num: UInt8) -> UInt8 {
    return num ^ 88
}

/*: "Enter “Settings” and open “Location” permission to use function normally." :*/
fileprivate let k_filterRevenueFormat:[UInt8] = [0xf5,0xde,0xc4,0xd5,0xc2,0x90,0x52,0x30,0x2c,0xe3,0xd5,0xc4,0xc4,0xd9,0xde,0xd7,0xc3,0x52,0x30,0x2d,0x90,0xd1,0xde,0xd4,0x90,0xdf,0xc0,0xd5,0xde,0x90,0x52,0x30,0x2c,0xfc,0xdf,0xd3,0xd1,0xc4,0xd9,0xdf,0xde,0x52,0x30,0x2d,0x90,0xc0,0xd5,0xc2,0xdd,0xd9,0xc3,0xc3,0xd9,0xdf,0xde,0x90,0xc4,0xdf,0x90,0xc5,0xc3,0xd5,0x90,0xd6,0xc5,0xde,0xd3,0xc4,0xd9,0xdf,0xde,0x90,0xde,0xdf,0xc2,0xdd,0xd1,0xdc,0xdc,0xc9,0x9e]

private func boundCharm(dot num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "Cancel" :*/
fileprivate let main_unlessValue:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let appPlaceValue:String = "read success amberSetting"
fileprivate let k_textUrl:String = "S"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IqViewProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void
typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void

//: class SocialPopularViewController: TalkingBaseViewController {
class IqViewProtocol: WeddingLovelyRecognizerDelegate {
    //: var isgetPlayerCell = false
    var isgetPlayerCell = false
    //: var playerCell = NSArray()
    var playerCell = NSArray() // 播放介绍视频
    //: var cunrrenplayerIndex = 0
    var cunrrenplayerIndex = 0 // 播放介绍视频位置

    //: var isFreshPlayerCell = false
    var isFreshPlayerCell = false // 刷新时加载介绍视频播放
    //: var isFirstUpload = true
    var isFirstUpload = true // 初次上报曝光次数

    //: var seleteBlobkModel: SocialUserListModel?
    var seleteBlobkModel: EquityMeasurable? // 拉黑选中数据
    // header
    //: var headerView: SocialHeaderView?
    var headerView: TriggerSpecialThen?

    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?
    // 页面类型
    //: var tabType: SocialTab?
    var tabType: MedalPropertyProtocol?

    // bannner
    //: var footerView: SocialPopularListFooterView?
    var footerView: NaturalBannerDelegate?

    //: var userVisibleCells: [UICollectionViewCell]?
    var userVisibleCells: [UICollectionViewCell]?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        beforeSearch()
        //: setupSubViewsConstraint()
        missiveInstall()
        //: addNotification()
        wheel()

        //: switch (tabType) {
        switch tabType {
        //: case .hot:
        case .hot:

            //: firstLoadData()
            methodData()
        //: case .nearby:
        case .nearby:
            //: checkLocationAuth()
            outsideMember()
        //: case .new:
        case .new:
            //: self.firstLoadData()
            self.methodData()
        //: case .none: break
        case .none: break
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    //: deinit {
    deinit {
        //: TalkingLocationManager.destroy()
        ResolveManagerDelegate.fullNoticeFore()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: WallRangeRequestManager = //: return WallRangeRequestManager()
        .init()
    //: }()

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(SocialPopularListCell.self,
        collectionView.register(EagerListCell.self,
                                //: forCellWithReuseIdentifier: SocialPopularListCell.className())
                                forCellWithReuseIdentifier: EagerListCell.className())
        //: collectionView.register(SocialHeaderView.self,
        collectionView.register(TriggerSpecialThen.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: SocialHeaderView.className())
                                withReuseIdentifier: TriggerSpecialThen.className())
        //: collectionView.register(SocialPopularListFooterView.self,
        collectionView.register(NaturalBannerDelegate.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                //: withReuseIdentifier: SocialPopularListFooterView.className())
                                withReuseIdentifier: NaturalBannerDelegate.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(mainPeerMessage) + String(data_spareKey) + String(dataProcessorKey)))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.contrastComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.caution()
        }
        //: collectionView.addFooterRefresh { [weak self] in
        collectionView.nextRating { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.dealInTick()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: RansackedThen = {
        //: let v = SocialEmptyView()
        let v = RansackedThen()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension SocialPopularViewController {
extension IqViewProtocol {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func methodData() {
        //: headerRefresh()
        caution()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.load_adBanner()
            self.bannerTemp()
        }
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func caution() {
        //: reqManager.listPage = 0
        reqManager.listPage = 0
        //: self.isFreshPlayerCell = true
        self.isFreshPlayerCell = true
        //: seleteHideBlock()
        squareBlockMargin()
        //: load_listData()
        sayLoad()

        //: firstLoad_premiumStarList()
        aDoingeFlow()
    }

    //: private func footerRefresh() {
    private func dealInTick() {
        //: reqManager.listPage += 1
        reqManager.listPage += 1
        //: load_listData()
        sayLoad()
    }

    //: private func load_listData() {
    private func sayLoad() {
        //: reqManager.req_socialList(tab: tabType ?? .hot) { [weak self] succeed, result, errorModel in
        reqManager.completionPress(tab: tabType ?? .hot) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.collectionView.endRefresh()
            self.collectionView.combineIn()
            //: self.refreshViewStatus()
            self.editStatus()

            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count == 0 {
            if arr.count == 0 {
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil
                //: } else {
            } else {
                //: if self.collectionView.mj_footer == nil {
                if self.collectionView.mj_footer == nil {
                    //: self.collectionView.addFooterRefresh {
                    self.collectionView.nextRating {
                        //: self.footerRefresh()
                        self.dealInTick()
                    }
                }
            }
            /// 当拉黑数据过多，返回数据小于6个时，从下一页获取数据，最多3次
            //: if self.reqManager.haveReq < self.reqManager.maxReq && self.reqManager.section1Data.count <= 2 && arr.count > 0 {
            if self.reqManager.haveReq < self.reqManager.maxReq, self.reqManager.section1Data.count <= 2, arr.count > 0 {
                //: self.reqManager.haveReq += 1
                self.reqManager.haveReq += 1
                //: self.footerRefresh()
                self.dealInTick()
                //: } else {
            } else {
                //: self.reqManager.haveReq = 0
                self.reqManager.haveReq = 0
            }
        }
    }

    /// 巨星计划接口
    //: private func firstLoad_premiumStarList() {
    private func aDoingeFlow() {
        //: reqManager.premiumStarPage = 0
        reqManager.premiumStarPage = 0
        //: reqManager.premiumStarCanLoadMore = true
        reqManager.premiumStarCanLoadMore = true
        //: reqManager.premiumStarIsLoading = false
        reqManager.premiumStarIsLoading = false
        //: load_premiumStarList()
        sort()
    }

    //: private func loadMore_premiumStarList() {
    private func topic() {
        //: guard reqManager.premiumStarCanLoadMore else { return }
        guard reqManager.premiumStarCanLoadMore else { return }
        //: reqManager.premiumStarPage += 1
        reqManager.premiumStarPage += 1
        //: load_premiumStarList()
        sort()
    }

    //: private func load_premiumStarList() {
    private func sort() {
        //: reqManager.req_premiumStarList { [weak self] succeed, result, errorModel in
        reqManager.streetEditor { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshPremiumStarView(data: self.reqManager.premiumStarListData)
            self.footerView?.customerTexture(data: self.reqManager.premiumStarListData)
            //: if self.reqManager.premiumStarPage == 0 {
            if self.reqManager.premiumStarPage == 0 {
                //: self.refreshViewStatus()
                self.editStatus()
            }
        }
    }

    /// 广告banner数据
    //: private func load_adBanner() {
    private func bannerTemp() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.genderStat(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshBannerView(data: self.reqManager.adBannerListData)
            self.footerView?.signalPara(data: self.reqManager.adBannerListData)
            //: self.refreshViewStatus()
            self.editStatus()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func editStatus() {
        // 是否开启定位判断缺省图
        //: if self.tabType == .nearby {
        if self.tabType == .nearby {
            //: if TalkingLocationManager.shared().locationType != .alwaysAllowed {
            if ResolveManagerDelegate.overSub().locationType != .alwaysAllowed {
                //: self.emptyV.isHidden = false
                self.emptyV.isHidden = false
                //: self.emptyV.desLab.text = "In order to find friends nearby please allow the access of your location.".localized
                self.emptyV.desLab.text = String(bytes: dataResponseId.map{$0^210}, encoding: .utf8)!.localized
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil

                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
        }

        // 是否有数据判断缺省图
        //: if self.reqManager.section0Data.count == 0 &&
        if self.reqManager.section0Data.count == 0,
           //: self.reqManager.premiumStarListData.count == 0 &&
           self.reqManager.premiumStarListData.count == 0,
           //: self.reqManager.adBannerListData.count == 0 {
           self.reqManager.adBannerListData.count == 0
        {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (k_homeFormat + " got n" + String(appExId.suffix(6)) + String(kIllegalStr)).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()

        //: if isFirstUpload {
        if isFirstUpload {
            //: isFirstUpload = false
            isFirstUpload = false
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
                //: self.uploadUserListCover()
                self.attachSquareCover()
            }
        }
    }
}

// MARK: - 通知事件

//: extension  SocialPopularViewController {
extension IqViewProtocol {
    //: @objc private func searchDetailRefreshNotification() {
    @objc private func frisking() {
        //: collectionView.mj_header?.beginRefreshing()
        collectionView.mj_header?.beginRefreshing()
    }

    /// 一键打招呼后刷新
    //: @objc func sayHiEndFresh(notification: NSNotification) {
    @objc func combineUsed(notification: NSNotification) {
        //: let users = notification.userInfo as! [String: AnyObject]
        let users = notification.userInfo as! [String: AnyObject]
        //: guard let arr = users["users"] as? Array<String> else { return }
        guard let arr = users[(String(noti_humanMessage))] as? [String] else { return }
        //: for uid in arr {
        for uid in arr {
            //: for i in 0..<reqManager.section0Data.count {
            for i in 0 ..< reqManager.section0Data.count {
                //: let model = reqManager.section0Data[i]
                let model = reqManager.section0Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.isSendQuickMsg = 1
                    model.isSendQuickMsg = 1
                    //: reqManager.section0Data[i] = model
                    reqManager.section0Data[i] = model
                }
            }
            //: for i in 0..<reqManager.section1Data.count {
            for i in 0 ..< reqManager.section1Data.count {
                //: let model = reqManager.section1Data[i]
                let model = reqManager.section1Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.isSendQuickMsg = 1
                    model.isSendQuickMsg = 1
                    //: reqManager.section1Data[i] = model
                    reqManager.section1Data[i] = model
                }
            }
        }
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
    }

    /// 资料详情页面打招呼后，首页对应用户也要更新状态
    //: @objc func changeGreteStatus(notification: NSNotification) {
    @objc func reduceSchedule(notification: NSNotification) {
        //: let users = notification.userInfo as! [String: AnyObject]
        let users = notification.userInfo as! [String: AnyObject]
        //: guard let userId = users["userID"] as? String else { return }
        guard let userId = users[(String(kLimitData.suffix(6)))] as? String else { return }
        //: let array = collectionView.visibleCells
        let array = collectionView.visibleCells
        //: for index in 0..<array.count {
        for index in 0 ..< array.count {
            //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
            let cell: EagerListCell = array[index] as! EagerListCell
            //: if "\(cell.currentModel?.uid ?? 0)" == userId {
            if userId == "\(cell.currentModel?.uid ?? 0)" {
                //: cell.changeGreeteStatus()
                cell.greeteAcross()
            }
        }
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension SocialPopularViewController: JXPagingViewListViewDelegate {
extension IqViewProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }
}

// MARK: - UICollectionViewDelegate

//: extension SocialPopularViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension IqViewProtocol: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 2
        return 2
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: if section == 0 {
        if section == 0 {
            //: return reqManager.section0Data.count
            return reqManager.section0Data.count
            //: } else {
        } else {
            //: return reqManager.section1Data.count
            return reqManager.section1Data.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SocialPopularListCell.className(), for: indexPath) as! SocialPopularListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EagerListCell.className(), for: indexPath) as! EagerListCell
        //: var model: SocialUserListModel?
        var model: EquityMeasurable?
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: model = reqManager.section0Data[indexPath.row]
            model = reqManager.section0Data[indexPath.row]
            //: } else {
        } else {
            //: model = reqManager.section1Data[indexPath.row]
            model = reqManager.section1Data[indexPath.row]
        }
        //: cell.delegate = self
        cell.delegate = self
        //: cell.refreshCell(model)
        cell.elementOp(model)
        //: if seleteBlobkModel != nil &&  seleteBlobkModel?.uid == model?.uid {
        if seleteBlobkModel != nil && seleteBlobkModel?.uid == model?.uid {
            //: cell.blockBackView.isHidden = false
            cell.blockBackView.isHidden = false
            //: } else {
        } else {
            //: cell.blockBackView.isHidden = true
            cell.blockBackView.isHidden = true
        }
        /// 免费消息次数弹窗
        //: let date = Defaults.object(forKey: FreeMsgTimesViewIsShow)
        let date = data_partyText.object(forKey: noti_formatMessage)
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.switchly(date: Date(), dateFormat: (String(kAppealTitle.prefix(6)) + "M-dd"))
        //: if indexPath.row == 12 && DismissReactiveCompatible.share.loginUserMode.freeContentPop.count > 0 && (date == nil || (date as! String) != today) {
        if indexPath.row == 12 && DismissReactiveCompatible.share.loginUserMode.freeContentPop.count > 0 && (date == nil || (date as! String) != today) {
            //: Defaults.set(today, forKey: FreeMsgTimesViewIsShow)
            data_partyText.set(today, forKey: noti_formatMessage)
            //: let notifView = TalkingFreeMsgTimesView(frame: .zero)
            let notifView = SmallTimesView(frame: .zero)
            //: notifView.show()
            notifView.previousShow()
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: var model: SocialUserListModel?
            var model: EquityMeasurable?
            //: if indexPath.section == 0 {
            if indexPath.section == 0 {
                //: model = self.reqManager.section0Data[indexPath.row]
                model = self.reqManager.section0Data[indexPath.row]
                //: } else {
            } else {
                //: model = self.reqManager.section1Data[indexPath.row]
                model = self.reqManager.section1Data[indexPath.row]
            }
            //: if  self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
            if self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
                //: if model?.liveWinJumpPos == 1 {
                if model?.liveWinJumpPos == 1 {
                    //: PushThen.share.func_audiencePushToLiveRoomVC(uid: String(model?.uid ?? 0), enterType: .unknown)
                    PushThen.share.alongMax(uid: String(model?.uid ?? 0), enterType: .unknown)
                    //: } else {
                } else {
                    //: PushThen.share.func__pushToUserDetailVC(uid: "\(model?.uid ?? 0)")
                    PushThen.share.sessionSomebody(uid: "\(model?.uid ?? 0)")
                }

                //: if self.tabType == .hot {
                if self.tabType == .hot {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserListCoverNoP, toUid: "\(model?.uid ?? 0)")
                    const_pathMsg.tabKeep(eventID: const_replacePath, toUid: "\(model?.uid ?? 0)")
                }
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((main_logStr - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(mainPeerMessage) + String(data_spareKey) + String(dataProcessorKey)), for: indexPath)
        }

        //: if kind == UICollectionView.elementKindSectionHeader {
        if kind == UICollectionView.elementKindSectionHeader {
            //: headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
            headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                         //: withReuseIdentifier: SocialHeaderView.className(),
                                                                         withReuseIdentifier: TriggerSpecialThen.className(),
                                                                         //: for: indexPath) as? SocialHeaderView
                                                                         for: indexPath) as? TriggerSpecialThen
            //            headerView?.delegate = self
            //: return headerView!
            return headerView!
            //: } else if kind == UICollectionView.elementKindSectionFooter {
        } else if kind == UICollectionView.elementKindSectionFooter {
            //: footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
            footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                                         //: withReuseIdentifier: SocialPopularListFooterView.className(),
                                                                         withReuseIdentifier: NaturalBannerDelegate.className(),
                                                                         //: for: indexPath) as? SocialPopularListFooterView
                                                                         for: indexPath) as? NaturalBannerDelegate
            //: footerView?.delegate = self
            footerView?.delegate = self
            //: return footerView!
            return footerView!
            //: } else {
        } else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(mainPeerMessage) + String(data_spareKey) + String(dataProcessorKey)), for: indexPath)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: SocialHeaderView.getSelfHeight()+13)
            return CGSize(width: main_logStr, height: TriggerSpecialThen.low() + 13)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: footerView?.getFooterViewHeight() ?? 0.01)
            return CGSize(width: main_logStr, height: footerView?.visitorInHeight() ?? 0.01)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // 下拉刷新时
        //: let limitCount = KDeviceIsIphoneX ? 6:4
        let limitCount = kSumValue ? 6 : 4
        //: var count = 0
        var count = 0
        //: if reqManager.section0Data.count > limitCount {
        if reqManager.section0Data.count > limitCount {
            //: count = limitCount
            count = limitCount
            //: } else if reqManager.section0Data.count <= limitCount {
        } else if reqManager.section0Data.count <= limitCount {
            //: count = reqManager.section0Data.count-1
            count = reqManager.section0Data.count - 1
        }

        //: let videocell: SocialPopularListCell = cell as! SocialPopularListCell
        let videocell: EagerListCell = cell as! EagerListCell

        //: videocell.stopPlay()
        videocell.playStand()
        //: if DismissReactiveCompatible.share.appConfigMode.showVideoInList && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue &&
        if DismissReactiveCompatible.share.appConfigMode.showVideoInList && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue &&
            //: indexPath.row == count && self.isFreshPlayerCell {
            indexPath.row == count && self.isFreshPlayerCell
        {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.scrollViewEndScrollPlayer(scrollView: self.collectionView, istopfresh: true)
                self.mapResponse(scrollView: self.collectionView, istopfresh: true)
            }
        }
    }
}

// MARK: - UIScrollViewDelegate

//: extension SocialPopularViewController: UIScrollViewDelegate {
extension IqViewProtocol: UIScrollViewDelegate {
    /// 上传封面曝光次数
    //: func uploadUserListCover() {
    func attachSquareCover() {
        //: var temparray = [SocialPopularListCell]()
        var temparray = [EagerListCell]()
        //: let array = collectionView.visibleCells
        let array = collectionView.visibleCells
        //: let limitLine = KDeviceIsIphoneX ? 3:2
        let limitLine = kSumValue ? 3 : 2
        //: for index in 0..<array.count {
        for index in 0 ..< array.count {
            /// 当前页面显示的
            //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
            let cell: EagerListCell = array[index] as! EagerListCell
            //: if cell.origin.y >= collectionView.contentOffset.y-10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
            if cell.origin.y >= collectionView.contentOffset.y - 10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                //: temparray.append(cell)
                temparray.append(cell)
            }
        }
        /// 过滤已经上报过的
        //: if self.userVisibleCells?.count ?? 0 > 0 {
        if self.userVisibleCells?.count ?? 0 > 0 {
            //: for i in 0..<userVisibleCells!.count {
            for i in 0 ..< userVisibleCells!.count {
                //: let celli: SocialPopularListCell = userVisibleCells?[i] as! SocialPopularListCell
                let celli: EagerListCell = userVisibleCells?[i] as! EagerListCell
                //: temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
                temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
            }
        }
        //: var toUid  = ""
        var toUid = ""
        //: for z in 0..<temparray.count {
        for z in 0 ..< temparray.count {
            //: let cellz: SocialPopularListCell = temparray[z]
            let cellz: EagerListCell = temparray[z]
            //: if toUid.count > 0 {
            if toUid.count > 0 {
                //: toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                //: } else {
            } else {
                //: toUid = "\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(cellz.currentModel?.uid ?? 0)"
            }
        }
        //: if toUid.count > 0 {
        if toUid.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayUserListNoP, toUid: toUid)
            const_pathMsg.tabKeep(eventID: const_limitStr, toUid: toUid)
            //: self.userVisibleCells = temparray
            self.userVisibleCells = temparray
        }
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: if scrollView.contentOffset.y < -5 {
        if scrollView.contentOffset.y < -5 {
            //: return
            return
        }
        //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
        mapResponse(scrollView: scrollView, istopfresh: false)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //: if !decelerate {
        if !decelerate {
            //: if scrollView.contentOffset.y < -5 {
            if scrollView.contentOffset.y < -5 {
                //: return
                return
            }
            //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
            mapResponse(scrollView: scrollView, istopfresh: false)
        }
        //: uploadUserListCover()
        attachSquareCover()
    }

    /// 视频动态在屏幕中间时播放
    //: func scrollViewEndScrollPlayer(scrollView: UIScrollView, istopfresh: Bool) {
    func mapResponse(scrollView: UIScrollView, istopfresh _: Bool) {
        //: if DismissReactiveCompatible.share.appConfigMode.showVideoInList && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if DismissReactiveCompatible.share.appConfigMode.showVideoInList && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
            //: if isgetPlayerCell {
            if isgetPlayerCell {
                //: return
                return
            }
            //: let array = collectionView.visibleCells
            let array = collectionView.visibleCells
            //: isgetPlayerCell = true
            isgetPlayerCell = true
            //: let celldataAM = NSMutableArray.init()
            let celldataAM = NSMutableArray()
            //: let limitLine = KDeviceIsIphoneX ? 3:2
            let limitLine = kSumValue ? 3 : 2
            //: for index in 0..<array.count {
            for index in 0 ..< array.count {
                //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
                let cell: EagerListCell = array[index] as! EagerListCell
                //: if cell.origin.y >= scrollView.contentOffset.y-10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
                if cell.origin.y >= scrollView.contentOffset.y - 10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: EquityMeasurable
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: if model.videoUrl.count > 0 {
                    if model.videoUrl.count > 0 {
                        //: celldataAM.append(cell)
                        celldataAM.append(cell)
                    }
                }
            }

            //: for i in 0..<celldataAM.count {
            for i in 0 ..< celldataAM.count {
                //: for j in 0..<celldataAM.count - 1 - i {
                for j in 0 ..< celldataAM.count - 1 - i {
                    //: let tNumber1: SocialPopularListCell = celldataAM[j] as! SocialPopularListCell
                    let tNumber1: EagerListCell = celldataAM[j] as! EagerListCell
                    //: let tNumber2: SocialPopularListCell = celldataAM[j+1] as! SocialPopularListCell
                    let tNumber2: EagerListCell = celldataAM[j + 1] as! EagerListCell
                    //: if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                    if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                        //: let tmp = celldataAM[j]
                        let tmp = celldataAM[j]
                        //: celldataAM[j] = tNumber2
                        celldataAM[j] = tNumber2
                        //: celldataAM[j+1] = tmp
                        celldataAM[j + 1] = tmp
                    }
                }
            }
            //: if celldataAM.count>0 {
            if celldataAM.count > 0 {
                //: if self.playerCell != celldataAM.copy() as! NSArray {
                if self.playerCell != celldataAM.copy() as! NSArray {
                    // 去掉之前播放
                    //: if self.playerCell.count>0 {
                    if self.playerCell.count > 0 {
                        //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                        let cell: EagerListCell = self.playerCell[self.cunrrenplayerIndex] as! EagerListCell
                        //: cell.stopPlay()
                        cell.playStand()
                    }
                    //: self.playerCell  = celldataAM.copy() as! NSArray
                    self.playerCell = celldataAM.copy() as! NSArray
                    //: self.cunrrenplayerIndex = 0
                    self.cunrrenplayerIndex = 0
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: EagerListCell = self.playerCell[self.cunrrenplayerIndex] as! EagerListCell
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: EquityMeasurable
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: cell.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                    cell.thinStack(videoUrl: model.videoUrl, imgUrl: model.cover)
                    //: cell.setupPlayer()
                    cell.physicsLab()
                }
                //: } else {
            } else {
                //: if self.playerCell.count>0 {
                if self.playerCell.count > 0 {
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: EagerListCell = self.playerCell[self.cunrrenplayerIndex] as! EagerListCell
                    //: cell.stopPlay()
                    cell.playStand()
                    //: self.playerCell = NSArray()
                    self.playerCell = NSArray()
                }
            }
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
            //: self.isFreshPlayerCell = false
            self.isFreshPlayerCell = false
        }
    }
}

// MARK: - CriminalRecordYaCellDelegate

//: extension SocialPopularViewController: SocialPopularListCellDelegate {
extension IqViewProtocol: CriminalRecordYaCellDelegate {
    /// 播打视频
    //: func chtToUser(model: SocialUserListModel) {
    func bologram(model: EquityMeasurable) {
        //: PushThen.share.func__pushToPriveteChatVC(chatID: "\(model.uid)")
        PushThen.share.resolutionBegin(chatID: "\(model.uid)")
    }

    //: func seleteBlockTool(model: SocialUserListModel) {
    func parentDelay(model: EquityMeasurable) {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: "\(model.uid)", isBlack: true) { succeed, result, errorModel in
        ThresholdLevelRequestManager.burnMention(uid: "\(model.uid)", isBlack: true) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section0Data.remove(at: index)
                        self.reqManager.section0Data.remove(at: index)
                    }
                }
                //: for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section1Data.remove(at: index)
                        self.reqManager.section1Data.remove(at: index)
                    }
                }
                /// 如果是section0Data删除1位后则向上补齐
                //: if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                    //: self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    //: self.reqManager.section1Data.remove(at: 0)
                    self.reqManager.section1Data.remove(at: 0)
                }
                //: if self.reqManager.section1Data.count < 2 {
                if self.reqManager.section1Data.count < 2 {
                    //: self.footerRefresh()
                    self.dealInTick()
                }

                //: ProgressHUD.toast("Shielding Success".localized)
                InsertProgressHUD.overDeadline((String(app_sequenceName.prefix(3)) + notiHoneyText.replacingOccurrences(of: "dry", with: "i") + "ng S" + constArrayMsg.replacingOccurrences(of: "announcement", with: "e")).localized)
                //: self.seleteHideBlock()
                self.squareBlockMargin()
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
            }
        }
    }

    //: func seleteShowBlock(model: SocialUserListModel) {
    func swageBlock(model: EquityMeasurable) {
        //: seleteBlobkModel = model
        seleteBlobkModel = model
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: func seleteHideBlock() {
    func squareBlockMargin() {
        //: seleteBlobkModel = nil
        seleteBlobkModel = nil
    }

    //: func cellPlayerEnd() {
    func shade() {
        //: if self.playerCell.count==0 {
        if self.playerCell.count == 0 {
            //: return
            return
        }
        //: if self.isgetPlayerCell {
        if self.isgetPlayerCell {
            //: return
            return
        }
        //: if self.cunrrenplayerIndex+1 > self.playerCell.count {
        if self.cunrrenplayerIndex + 1 > self.playerCell.count {
            //: self.cunrrenplayerIndex -= 1
            self.cunrrenplayerIndex -= 1
        }
        //: self.isgetPlayerCell = true
        self.isgetPlayerCell = true

        //: let cell1: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell1: EagerListCell? = self.playerCell[self.cunrrenplayerIndex] as? EagerListCell
        //: if cell1 != nil {
        if cell1 != nil {
            //: cell1?.stopPlay()
            cell1?.playStand()
        }

        //: if self.cunrrenplayerIndex+1 < self.playerCell.count {
        if self.cunrrenplayerIndex + 1 < self.playerCell.count {
            //: self.cunrrenplayerIndex += 1
            self.cunrrenplayerIndex += 1
            //: } else {
        } else {
            //: self.cunrrenplayerIndex = 0
            self.cunrrenplayerIndex = 0
        }
        //: let cell2: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell2: EagerListCell? = self.playerCell[self.cunrrenplayerIndex] as? EagerListCell
        //: if cell2 != nil {
        if cell2 != nil {
            //: let indexpath = collectionView.indexPath(for: cell2!)
            let indexpath = collectionView.indexPath(for: cell2!)
            //: if indexpath != nil {
            if indexpath != nil {
                //: var model: SocialUserListModel
                var model: EquityMeasurable
                //: if indexpath?.section == 0 {
                if indexpath?.section == 0 {
                    //: model = reqManager.section0Data[indexpath!.row]
                    model = reqManager.section0Data[indexpath!.row]
                    //: } else {
                } else {
                    //: model = reqManager.section1Data[indexpath!.row]
                    model = reqManager.section1Data[indexpath!.row]
                }
                //: cell2?.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                cell2?.thinStack(videoUrl: model.videoUrl, imgUrl: model.cover)
                //: cell2?.setupPlayer()
                cell2?.physicsLab()
                //: } else {
            } else {
                //: cellPlayerEnd()
                shade()
            }
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
        }
    }
}

// MARK: - OutletObjectProtocol

//: extension SocialPopularViewController: SocialPopularListFooterViewProtocol {
extension IqViewProtocol: OutletObjectProtocol {
    // 加载更多巨星计划数据
    //: func premiumStarLoadMoreData() {
    func freezeOff() {
        //: loadMore_premiumStarList()
        topic()
    }

    // 巨星计划跳转用户详情
    //: func premiumStarListCellClick(model: PremiumStarListModel?) {
    func isomerisation(model: BlackMeasurable?) {
        //: guard model != nil else { return }
        guard model != nil else { return }
        //: PushThen.share.func__pushToUserDetailVC(uid: String(model!.uid))
        PushThen.share.sessionSomebody(uid: String(model!.uid))
    }

    //: func adBannerCellClick(model: SocialAdBannerModel) {
    func bannerBindTo(model: PrimaryRedModelType) {
        //: SocialAdBannerModel.jumpEvent(model: model)
        PrimaryRedModelType.dragSimultaneously(model: model)
    }
}

// MARK: - 定位权限监听

//: extension SocialPopularViewController {
extension IqViewProtocol {
    //: func checkLocationAuth() {
    func outsideMember() {
        //: TalkingLocationManager.shared().requestLocationAuthorizaiton()
        ResolveManagerDelegate.overSub().appeal()
        //: TalkingLocationManager.shared().getAuthBlock { [weak self] (type: PermissionType) in
        ResolveManagerDelegate.overSub().attractiveNext { [weak self] (type: PutNumeric) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .firstEntry:
            case .firstEntry: // 首次进入
                //: self.refreshViewStatus()
                self.editStatus()

            //: case .userRestricted:
            case .userRestricted: // 拒绝
                //: self.refreshViewStatus()
                self.editStatus()
                // 展示设置弹窗
                //: self.showSettingsAlertView()
                self.shView()

            //: case .alwaysAllowed:
            case .alwaysAllowed: // 允许
                //: self.firstLoadData()
                self.methodData()
            }
        }
        /// 上报经纬度
        //: TalkingLocationManager.shared().getLocationBlock { success, latitude, longitude in
        ResolveManagerDelegate.overSub().someplace { success, latitude, longitude in
            //: if success {
            if success {
                //: SocialRequestManager.req_uploadPosition(params: ["lng": longitude, "lat": latitude]) { succeed, result, errorModel in
                WallRangeRequestManager.overwhelm(params: [String(bytes: main_transformGoodKey.map{screenEnergy(matter: $0)}, encoding: .utf8)!: longitude, String(bytes: notiNothingMouthId.map{takeTheField(tap: $0)}, encoding: .utf8)!: latitude]) { _, _, _ in
                }
            }
        }
    }

    /// 设置弹窗
    //: func showSettingsAlertView() {
    func shView() {
        //: guard self.tabType == .nearby && TalkingLocationManager.shared().locationType == .userRestricted else {
        guard self.tabType == .nearby, ResolveManagerDelegate.overSub().locationType == .userRestricted else {
            //: return
            return
        }

        // 设置弹窗
        //: TalkingAlertShow.alert(title: nil, message: "Enter “Settings” and open “Location” permission to use function normally.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
        AllowanceReactiveCompatible.maximal(title: nil, message: String(bytes: k_filterRevenueFormat.map{boundCharm(dot: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(main_unlessValue)).localized, rightBtnTitle: (String(appPlaceValue.suffix(7)) + k_textUrl.lowercased()).localized) {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if let url = url, UIApplication.shared.canOpenURL(url) {
            if let url = url, UIApplication.shared.canOpenURL(url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension SocialPopularViewController {
extension IqViewProtocol {
    // 添加视图
    //: private func setupSubviews() {
    private func beforeSearch() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func missiveInstall() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    // 添加通知
    //: private func addNotification() {
    private func wheel() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(searchDetailRefreshNotification),
                                               selector: #selector(frisking),
                                               //: name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION,
                                               name: data_userName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(sayHiEndFresh(notification:)), name: SAYHI_END_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(combineUsed(notification:)), name: showStorageFormat, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(changeGreteStatus(notification:)), name: CHANGEHOME_GRETESTATUS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(reduceSchedule(notification:)), name: showRequestKey, object: nil)
    }
}
