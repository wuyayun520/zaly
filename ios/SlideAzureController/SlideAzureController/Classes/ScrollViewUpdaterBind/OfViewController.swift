
//: Declare String Begin

/*: "News Feed" :*/
fileprivate let userLengthMessage:String = "News Feedhand mask qualify bite bass"

/*: "There's no feed yet." :*/
fileprivate let user_bubbleAboveContent:String = "Therediscount slide"
fileprivate let dataClingPath:[Character] = ["\'","s"," ","n","o"," ","f","e","e","d"," ","y","e","t","."]

/*: "The post has been deleted ~" :*/
fileprivate let noti_plusValue:[Character] = ["T","h","e"," ","p","o","s","t"," ","h"]
fileprivate let user_speakId:[Character] = ["a","s"," ","b","e","e","n"," ","d","e","l","e","t","e","d"," ","~"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfViewController.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/7/25.
//

//: import UIKit
import UIKit

//: class TalkingMomentNewsFeedViewController: TalkingBaseViewController {
class OfViewController: WeddingLovelyRecognizerDelegate {
    //: private var pageIndex = 0
    private var pageIndex = 0
    //: private var dataArr: [TalkingRemindListModel] = []
    private var dataArr: [PresenceModelType] = []

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "News Feed".localized
        title = (String(userLengthMessage.prefix(9))).localized
        //: setupSubviews()
        span()
        //: setupSubViewsConstraint()
        me()
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "There's no feed yet.".localized
        style.TipsTitle = (String(user_bubbleAboveContent.prefix(5)) + String(dataClingPath)).localized
        //: let view = EmptyView(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: view.isHidden = true
        view.isHidden = true
        //: view.emptyBlock = { [weak self] in
        view.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.darkOn()
        }
        //: return view
        return view
        //: }()
    }()

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.contentInsetAdjustmentBehavior = .never
        table.contentInsetAdjustmentBehavior = .never
        //: table.backgroundColor = .white
        table.backgroundColor = .white
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.addHeaderRefresh { [weak self] in
        table.contrastComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.darkOn()
        }
        //: table.addFooterRefresh { [weak self] in
        table.nextRating { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.disk()
        }
        //: table.register(TalkingMomentNewsFeedCell.self, forCellReuseIdentifier: TalkingMomentNewsFeedCell.className())
        table.register(BetterThen.self, forCellReuseIdentifier: BetterThen.className())
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentNewsFeedViewController {
extension OfViewController {
    /// 头部刷新
    //: private func headerRefresh() {
    private func darkOn() {
        //: pageIndex = 0
        pageIndex = 0
        //: loadListData()
        magnitudeeraction()
    }

    /// 加载更多
    //: private func footerRefresh() {
    private func disk() {
        //: pageIndex += 1
        pageIndex += 1
        //: loadListData()
        magnitudeeraction()
    }

    /// 请未读动态信息列表
    //: private func loadListData() {
    private func magnitudeeraction() {
        //: TalkingMomentRequestTool.req_getRemindList(page: pageIndex) { data in
        BlendThen.identity(page: pageIndex) { data in
            //: self.tableView.endRefresh()
            self.tableView.combineIn()
            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArr.removeAll()
                self.dataArr.removeAll()
            }
            //: if data.count < 20 {
            if data.count < 20 { // 不足一页数据
                //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.tableView.mj_footer?.isHidden = true
                self.tableView.mj_footer?.isHidden = true
            }
            //: self.dataArr.append(contentsOf: data)
            self.dataArr.append(contentsOf: data)
            //: self.emptyView.isHidden = self.dataArr.count > 0
            self.emptyView.isHidden = self.dataArr.count > 0
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingMomentNewsFeedViewController: UITableViewDataSource, UITableViewDelegate {
extension OfViewController: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.row < dataArr.count else { return UITableViewCell() }
        guard indexPath.row < dataArr.count else { return UITableViewCell() }
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMomentNewsFeedCell.className(), for: indexPath) as! TalkingMomentNewsFeedCell
        let cell = tableView.dequeueReusableCell(withIdentifier: BetterThen.className(), for: indexPath) as! BetterThen
        //: cell.refreshCell(dataArr[indexPath.row])
        cell.resAccess(dataArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 120
        return 120
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: if model.status == 0 {
        if model.status == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "The post has been deleted ~".localized)
            enablece(showMsg: (String(noti_plusValue) + String(user_speakId)).localized)
            //: return
            return
        }
        //: var detailModel = TalkingMomentModel()
        var detailModel = IceModelType()
        //: detailModel.mid = model.momentId
        detailModel.mid = model.momentId
        //: detailModel.uid = String(model.uid)
        detailModel.uid = String(model.uid)
        //: let detailVC = TalkingMomentDetailVC(model: detailModel)
        let detailVC = WallRecognizerDelegate(model: detailModel)
        //: self.navigationController?.pushViewController(detailVC, animated: true)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMomentNewsFeedViewController {
extension OfViewController {
    //: private func setupSubviews() {
    private func span() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
    }

    //: private func setupSubViewsConstraint() {
    private func me() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
