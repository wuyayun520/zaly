
//: Declare String Begin

/*: "Online List" :*/
fileprivate let dataPinValue:String = "Onlinmedium minimum train"
fileprivate let mainHungPath:String = "e Listbasic evaluation domestic second"

/*: "Select @ Numbers" :*/
fileprivate let show_grayFormat:String = "Selecliteral unless"
fileprivate let mainSizeOccurId:String = "uindicatorers"

/*: "Nobody can @" :*/
fileprivate let data_makerId:[Character] = ["N","o","b","o","d","y"," ","c","a"]
fileprivate let mainMeetingThatUrl:String = "girl protection disk othersn @"

/*: "roomId" :*/
fileprivate let show_sideData:String = "roomIdorange fade admin"

/*: "type" :*/
fileprivate let kPendingUrl:[Character] = ["t","y","p","e"]

/*: "page" :*/
fileprivate let app_frontMessage:String = "pagaccess"

/*: "uid" :*/
fileprivate let notiShiftName:[UInt8] = [0xf8,0xe4,0xe9]

/*: "name" :*/
fileprivate let const_automaticPath:[UInt8] = [0xde,0xd1,0xdd,0xd5]

private func ownAllow(master num: UInt8) -> UInt8 {
    return num ^ 176
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SamplePutDataSource.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum SpillCollection: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class SamplePutDataSource: WeddingLovelyRecognizerDelegate {
    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: SpillCollection = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        switche()
        //: setupSubViewsConstraint()
        fillInvitation()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(dataPinValue.prefix(5)) + String(mainHungPath.prefix(6))).localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(show_grayFormat.prefix(5)) + "t @ N" + mainSizeOccurId.replacingOccurrences(of: "indicator", with: "mb")).localized
        }
    }

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.nextRating { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.shareLight()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.contrastComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.judgeMain()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: TalkingChatRoomOnlineListCell.className())
        table.register(OnLineView.self, forCellReuseIdentifier: OnLineView.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(data_makerId) + String(mainMeetingThatUrl.suffix(3)))
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension SamplePutDataSource {
    //: func headerRefresh() {
    func judgeMain() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        smallRecognize()
    }

    //: private func footerRefresh() {
    private func shareLight() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        smallRecognize()
    }

    //: func reqData() {
    func smallRecognize() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(show_sideData.prefix(6)))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(String(kPendingUrl))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(String(kPendingUrl))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(app_frontMessage.replacingOccurrences(of: "access", with: "e"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        MotivationThen.share.completionSearch(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.combineIn()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension SamplePutDataSource: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatRoomOnlineListCell.className(), for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: OnLineView.className(), for: indexPath) as! OnLineView
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = SparkTransformable()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! SparkTransformable
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.sinceLimited(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! SparkTransformable
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: PushThen.share.func__pushToUserDetailVC(uid: cellModel.uid)
            PushThen.share.sessionSomebody(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: notiShiftName.map{$0^141}, encoding: .utf8)!: cellModel.uid, String(bytes: const_automaticPath.map{ownAllow(master: $0)}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension SamplePutDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func switche() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func fillInvitation() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
