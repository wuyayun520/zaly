
//: Declare String Begin

/*: "Public Chat Room" :*/
fileprivate let showDataWaterWealthyStr:[Character] = ["P","u","b","l","i","c"," ","C","h","a","t"," ","R","o","o"]
fileprivate let data_speakerTellMsg:String = "M"

/*: "You've got no list yet." :*/
fileprivate let showFairStemTitle:String = "You\'ve g"
fileprivate let noti_goldValue:[Character] = ["o","t"," "]
fileprivate let appDiscussionStr:String = "no ladvice draft"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlaceOfBusinessRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListVC: TalkingBaseViewController {
class PlaceOfBusinessRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: var DataSource: [TalkingChatRoomListModel] = []
    var DataSource: [CandlepowerListModel] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Public Chat Room".localized
        self.title = (String(showDataWaterWealthyStr) + data_speakerTellMsg.lowercased()).localized
        //: designView()
        say()
        //: reqData()
        root()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
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
            self.restoreMake()
        }
        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (showFairStemTitle + String(noti_goldValue) + String(appDiscussionStr.prefix(4)) + "ist yet.").localized
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.reqData()
            self.root()
        }
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingChatRoomListVC {
extension PlaceOfBusinessRecognizerDelegate {
    //: func reqData() {
    func root() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingChatRequestTool.req_getChatRoomList { succeed, result, errorModel in
        TamperRequestTool.snug { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.combineIn()
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingChatRoomListModel] = []
                var dataArr: [CandlepowerListModel] = []

                //: if let datas = Array<TalkingChatRoomListModel>.deserialize(from: array as? Array) {
                if let datas = Array<CandlepowerListModel>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingChatRoomListModel])!)
                    dataArr.append(contentsOf: (datas as? [CandlepowerListModel])!)
                }
                //: self.DataSource = dataArr
                self.DataSource = dataArr
                //: self.emptyView.isHidden = (self.DataSource.count > 0)
                self.emptyView.isHidden = (self.DataSource.count > 0)
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func restoreMake() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: reqData()
        root()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomListVC: UITableViewDelegate, UITableViewDataSource {
extension PlaceOfBusinessRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
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
        //: let identifier = TalkingChatRoomListCell.className()
        let identifier = ImpressionListCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingChatRoomListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ImpressionListCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingChatRoomListCell(style: .default, reuseIdentifier: identifier)
            cell = ImpressionListCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingChatRoomListModel = self.DataSource[indexPath.row]
        let model: CandlepowerListModel = self.DataSource[indexPath.row]
        //: cell?.setChatRoomListCell(model: model)
        cell?.resign(model: model)

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.DataSource[indexPath.row]
        let model = self.DataSource[indexPath.row]
        //: PushThen.share.func__pushToGroupChat(groupId: model.roomId)
        PushThen.share.miscalculation(groupId: model.roomId)
    }
}

// MARK: - UI

//: extension TalkingChatRoomListVC {
extension PlaceOfBusinessRecognizerDelegate {
    //: private func designView() {
    private func say() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingChatRoomListCell.self, forCellReuseIdentifier: TalkingChatRoomListCell.className())
        MainTable.register(ImpressionListCell.self, forCellReuseIdentifier: ImpressionListCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(1)
            make.top.equalTo(self.view).offset(1)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            make.bottom.equalTo(self.view.snp.bottom).offset(-1)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
