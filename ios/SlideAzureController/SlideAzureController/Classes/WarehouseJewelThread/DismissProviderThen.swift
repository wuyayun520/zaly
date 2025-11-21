
//: Declare String Begin

/*: "Follow" :*/
fileprivate let mainCycleTitle:String = "Followcontrol put identify harvest"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let appPackValue:[UInt8] = [0xe6,0xdb,0xc2,0x88,0x92,0xf1,0xd3,0xdc,0x95,0xc6,0x92,0xd7,0xd3,0xc0,0xdc,0x92,0xc2,0xdd,0xdb,0xdc,0xc6,0xc1,0x92,0xdb,0xd4,0x92,0xcb,0xdd,0xc7,0x92,0xd4,0xdd,0xde,0xde,0xdd,0xc5,0x92,0xd7,0xd3,0xd1,0xda,0x92,0xdd,0xc6,0xda,0xd7,0xc0,0xcc]

private func executeVehicle(take num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "Tip:" :*/
fileprivate let const_fadeMsg:String = "research visibleTip:"

/*: "Favorite each other" :*/
fileprivate let kSelectTitle:String = "Favorblank entry keep however"
fileprivate let user_appropriateValue:String = "between haveeach o"

/*: " chat will be free" :*/
fileprivate let constOpeningUrl:[Character] = [" ","c","h","a","t"," ","w"]
fileprivate let app_orientationStr:[Character] = ["i","l","l"," ","b","e"," ","f","r","e","e"]

/*: "targetUid" :*/
fileprivate let userClearlyMessage:[Character] = ["t","a","r","g","e","t","U","i","d"]

/*: "type" :*/
fileprivate let k_meetValue:String = "timeype"

/*: "attentionType" :*/
fileprivate let dataFactKey:[Character] = ["a","t","t","e","n","t","i","o","n"]
fileprivate let userConvertKey:String = "Typerunner privacy nap interested"

/*: "limit" :*/
fileprivate let constThemFormat:[Character] = ["l","i","m","i","t"]

/*: "page" :*/
fileprivate let kJumpUrl:[Character] = ["p","a","g","e"]

/*: "You've got no favourite yet." :*/
fileprivate let kCurvePath:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","f"]
fileprivate let main_backMessage:String = "avouattribute"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissProviderThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class DismissProviderThen: WeddingLovelyRecognizerDelegate {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [MeanSunAimHandyJSON] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(mainCycleTitle.prefix(6))).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        sequenceThird()
        //: reqData()
        length()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.contrastComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.announcementFlush()
        }
        //: table.addFooterRefresh { [weak self] in
        table.nextRating { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.file()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.attractiveIn()
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: appPackValue.map{executeVehicle(take: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = (String(const_fadeMsg.suffix(4))) + "\"" + (String(kSelectTitle.prefix(5)) + "ite " + String(user_appropriateValue.suffix(6)) + "ther") + "\"" + (String(constOpeningUrl) + String(app_orientationStr)).localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension DismissProviderThen {
    //: func reqData() {
    func length() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = DismissReactiveCompatible.share.loginUserMode.userID
        dict[(String(userClearlyMessage))] = DismissReactiveCompatible.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(k_meetValue.replacingOccurrences(of: "time", with: "t"))] = "1"
        //: dict["attentionType"] = "1"
        dict[(String(dataFactKey) + String(userConvertKey.prefix(4)))] = "1"
        //: dict["limit"] = "20"
        dict[(String(constThemFormat))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(kJumpUrl))] = String(pageIndex)

        //: TalkingChatRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        TamperRequestTool.mapEnable(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.combineIn()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [MeanSunAimHandyJSON] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<MeanSunAimHandyJSON>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [MeanSunAimHandyJSON])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func announcementFlush() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        length()
    }

    //: func footerRefresh() {
    func file() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        length()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension DismissProviderThen: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension DismissProviderThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingAttentionCell.className()
        let identifier = TransferCompartmentViewCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TransferCompartmentViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = TransferCompartmentViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: MeanSunAimHandyJSON = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.towardExecute(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - AttentionReactiveCompatible

//: extension TalkingAttentionVC: AttentionDelegate {
extension DismissProviderThen: AttentionReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func breakIn(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func ostentate(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension DismissProviderThen {
    //: private func designView() {
    private func sequenceThird() {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (String(kCurvePath) + main_backMessage.replacingOccurrences(of: "attribute", with: "r") + "ite yet.").localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(kSumValue ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = DismissReactiveCompatible.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: TalkingAttentionCell.className())
        MainTable.register(TransferCompartmentViewCell.self, forCellReuseIdentifier: TransferCompartmentViewCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
