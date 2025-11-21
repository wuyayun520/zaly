
//: Declare String Begin

/*: "Blacklist" :*/
fileprivate let noti_liveFormat:String = "Blaused robot spot vanish discount"
fileprivate let data_licenseFormat:[Character] = ["c","k","l","i","s","t"]

/*: "page" :*/
fileprivate let mainFinishValue:String = "siblingage"

/*: "limit" :*/
fileprivate let show_helloPlayName:String = "lboyit"

/*: "You've got Blacklist yet." :*/
fileprivate let app_filterUrl:String = "coordinate"
fileprivate let mainAssertId:String = "ou\'ve "
fileprivate let notiAnalysisMessage:String = "Blackthing particle production"
fileprivate let mainGrayPath:String = "constraint signature pass birthyet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlacklistViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/16.
//

//: import UIKit
import UIKit

//: class TalkingBlacklistVC: TalkingBaseViewController {
class BlacklistViewController: WeddingLovelyRecognizerDelegate {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingBlacklistModel] = []
    var DataSource: [OutletBlacklistModel] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "Blacklist".localized
        self.title = (String(noti_liveFormat.prefix(3)) + String(data_licenseFormat)).localized
        //: designView()
        level()
        //: reqData()
        trademark()
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
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.above()
        }
        //: table.addFooterRefresh { [weak self] in
        table.nextRating { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.spendVoice()
        }
        //: return table
        return table

        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingBlacklistVC {
extension BlacklistViewController {
    //: func reqData() {
    func trademark() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(mainFinishValue.replacingOccurrences(of: "sibling", with: "p"))] = pageIndex
        //: dict["limit"] = "20"
        dict[(show_helloPlayName.replacingOccurrences(of: "boy", with: "im"))] = "20"
        //: TalkingMeRequestTool.req_BlackList(params: dict) { succeed, result, errorModel in
        FlyerThen.changeCompletion(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.combineIn()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as? [Any] ?? []
                let array: Array = result as? [Any] ?? []
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingBlacklistModel] = []
                var dataArr: [OutletBlacklistModel] = []

                //: if let datas = Array<TalkingBlacklistModel>.deserialize(from: array as? Array) {
                if let datas = Array<OutletBlacklistModel>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingBlacklistModel])!)
                    dataArr.append(contentsOf: (datas as? [OutletBlacklistModel])!)
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
    func above() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        trademark()
    }

    //: func footerRefresh() {
    func spendVoice() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        trademark()
    }

    //: func removeBlack(index: Int) {
    func verticalAngle(index: Int) {
        //: guard index < self.DataSource.count else { return }
        guard index < self.DataSource.count else { return }
        //: let model: TalkingBlacklistModel = self.DataSource[index]
        let model: OutletBlacklistModel = self.DataSource[index]
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: model.uid, isBlack: false) { succeed, result, errorModel in
        ThresholdLevelRequestManager.burnMention(uid: model.uid, isBlack: false) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: if index >= 0 && index < self.DataSource.count {
                if index >= 0, index < self.DataSource.count {
                    //: self.DataSource.remove(at: index)
                    self.DataSource.remove(at: index)
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                }
                //: } else {
            } else {
                //: ProgressHUD.toast(errorModel?.errorMsg)
                InsertProgressHUD.overDeadline(errorModel?.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingBlacklistVC: UITableViewDelegate, UITableViewDataSource {
extension BlacklistViewController: UITableViewDelegate, UITableViewDataSource {
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
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.row < self.DataSource.count else {  return UITableViewCell() }
        guard indexPath.row < self.DataSource.count else { return UITableViewCell() }
        //: let identifier = TalkingBlacklistCell.className()
        let identifier = ProgThen.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingBlacklistCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ProgThen
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingBlacklistCell(style: .default, reuseIdentifier: identifier)
            cell = ProgThen(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingBlacklistModel = self.DataSource[indexPath.row]
        let model: OutletBlacklistModel = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath.row)
        cell?.theThread(model: model, index: indexPath.row)

        //: cell?.deleteBlock = { [weak self] row in
        cell?.deleteBlock = { [weak self] row in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.removeBlack(index: row)
            self.verticalAngle(index: row)
        }

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - UI

//: extension TalkingBlacklistVC {
extension BlacklistViewController {
    //: private func designView() {
    private func level() {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "You've got Blacklist yet.".localized
        style.TipsTitle = (app_filterUrl.replacingOccurrences(of: "coordinate", with: "Y") + mainAssertId + "got " + String(notiAnalysisMessage.prefix(5)) + "list " + String(mainGrayPath.suffix(4))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingBlacklistCell.self, forCellReuseIdentifier: TalkingBlacklistCell.className())
        MainTable.register(ProgThen.self, forCellReuseIdentifier: ProgThen.className())
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
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
