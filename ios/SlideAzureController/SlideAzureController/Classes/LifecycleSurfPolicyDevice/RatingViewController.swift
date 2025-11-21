
//: Declare String Begin

/*: "page" :*/
fileprivate let kMyStr:String = "paaccounte"

/*: "limit" :*/
fileprivate let noti_pickMessageData:[Character] = ["l","i","m","i","t"]

/*: "endPage" :*/
fileprivate let const_cleanPath:[Character] = ["e","n","d","P","a","g","e"]

/*: "data" :*/
fileprivate let userTotalerestedId:String = "DATA"

/*: "There's no record of the call yet" :*/
fileprivate let data_foundationUrl:[UInt8] = [0x2b,0x17,0x1a,0xd,0x1a,0x58,0xc,0x5f,0x11,0x10,0x5f,0xd,0x1a,0x1c,0x10,0xd,0x1b,0x5f,0x10,0x19,0x5f,0xb,0x17,0x1a,0x5f,0x1c,0x1e,0x13,0x13,0x5f,0x6,0x1a,0xb]

private func roundingUser(world num: UInt8) -> UInt8 {
    return num ^ 127
}

/*: "icon_kong_kong_default" :*/
fileprivate let noti_dotSlimStr:[Character] = ["i","c","o","n","_","k","o","n","g","_","k"]
fileprivate let notiViewFairStr:String = "register physics prettyong_d"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RatingViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallVC: TalkingBaseViewController {
class RatingViewController: WeddingLovelyRecognizerDelegate {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingVideoCallRecordModel] = []
    var DataSource: [BlendModelType] = []
    //: var limit = 20
    var limit = 20
    //: var isdeleteEnd = false
    var isdeleteEnd = false

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: reqData()
        thatOperation()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        //: designView()
        installView()
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
        //: table.register(TalkingVideoCallTableCell.self, forCellReuseIdentifier: TalkingVideoCallTableCell.className())
        table.register(SpecialViewCell.self, forCellReuseIdentifier: SpecialViewCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
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
            self.pointInTime()
        }
        //: table.addFooterRefresh { [weak self] in
        table.nextRating { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.barrierRandom()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var callManag: TalkingCallMenuManager = {
    lazy var callManag: RedObjectProtocol = {
        //: let call = TalkingCallMenuManager()
        let call = RedObjectProtocol()
        //: return call
        return call
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingVideoCallVC {
extension RatingViewController {
    //: func reqData() {
    func thatOperation() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(kMyStr.replacingOccurrences(of: "account", with: "g"))] = pageIndex
        //: dict["limit"] = limit
        dict[(String(noti_pickMessageData))] = limit

        //: TalkingChatRequestTool.req_getCallTab(params: dict) { succeed, result, errorModel in
        TamperRequestTool.transitionCompletion(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.combineIn()
            //: if succeed {
            if succeed {
                //: let data: Dictionary = result as! Dictionary<String, Any>
                let data: Dictionary = result as! [String: Any]
                //: let endPage = data["endPage"] as? Int
                let endPage = data[(String(const_cleanPath))] as? Int
                //: let array: Array =  data["data"] as! Array<Any>
                let array: Array = data[(userTotalerestedId.lowercased())] as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        //: self.MainTable.mj_footer?.isHidden = true
                        self.MainTable.mj_footer?.isHidden = true
                    }
                    //: if self.DataSource.count == 0 &&  self.isdeleteEnd {
                    if self.DataSource.count == 0, self.isdeleteEnd {
                        //: self.setemptyView()
                        self.detail()
                    }
                }
                //: var dataArr: [TalkingVideoCallRecordModel] = []
                var dataArr: [BlendModelType] = []
                //: if let datas = Array<TalkingVideoCallRecordModel>.deserialize(from: array as? Array) {
                if let datas = Array<BlendModelType>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingVideoCallRecordModel])!)
                    dataArr.append(contentsOf: (datas as? [BlendModelType])!)
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
                //: if endPage ?? 0 > 0 {
                if endPage ?? 0 > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    //: self.MainTable.mj_footer?.isHidden = true
                    self.MainTable.mj_footer?.isHidden = true
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
                //: } else {
            } else {
                //: if self.pageIndex > 0 {
                if self.pageIndex > 0 {
                    //: self.pageIndex -= 1
                    self.pageIndex -= 1
                }
            }
        }
    }

    //: func headerRefresh() {
    func pointInTime() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        thatOperation()
    }

    //: func footerRefresh() {
    func barrierRandom() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        thatOperation()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoCallVC: UITableViewDelegate, UITableViewDataSource {
extension RatingViewController: UITableViewDelegate, UITableViewDataSource {
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
        //: return 60
        return 60
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingVideoCallTableCell.className()
        let identifier = SpecialViewCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingVideoCallTableCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SpecialViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingVideoCallTableCell(style: .default, reuseIdentifier: identifier)
            cell = SpecialViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingVideoCallRecordModel = self.DataSource[indexPath.row]
        let model: BlendModelType = self.DataSource[indexPath.row]
        //: cell?.setVideoCallCell(model: model)
        cell?.currentResult(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model: TalkingVideoCallRecordModel = self.DataSource[indexPath.row]
        let model: BlendModelType = self.DataSource[indexPath.row]

        //: callManag.uid = "\(model.uid)"
        callManag.uid = "\(model.uid)"
        //: callManag.checkAndCallVideo { succeed in
        callManag.charm { _ in
        }
    }
}

/// MARK: - UI
//: extension TalkingVideoCallVC {
extension RatingViewController {
    //: private func designView() {
    private func installView() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: setemptyView()
        detail()
    }

    //: func setemptyView() {
    func detail() {
        //: self.emptyView.removeFromSuperview()
        self.emptyView.removeFromSuperview()
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "There's no record of the call yet".localized
        style.TipsTitle = String(bytes: data_foundationUrl.map{roundingUser(world: $0)}, encoding: .utf8)!.localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(noti_dotSlimStr) + String(notiViewFairStr.suffix(5)) + "efault")
        //: self.emptyView = EmptyView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: style)
        self.emptyView = EmptyView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData), style: style)
        //: self.view.addSubview(self.emptyView)
        self.view.addSubview(self.emptyView)
        //: self.view.bringSubviewToFront(self.emptyView)
        self.view.bringSubviewToFront(self.emptyView)
        //: self.emptyView.emptyBlock = {
        self.emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }
}
