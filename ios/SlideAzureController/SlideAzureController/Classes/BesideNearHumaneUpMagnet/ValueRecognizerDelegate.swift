
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_privacyPath:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "There's no posts yet." :*/
fileprivate let const_electronMessage:String = "There\'"
fileprivate let showGatherFloorLatText:String = "hello evaluation scan written conversations no"
fileprivate let app_specialHostMessage:String = " yet.male leading when analyze"

/*: "uid" :*/
fileprivate let const_shirtData:String = "uitip"

/*: "page" :*/
fileprivate let kAssertStr:String = "paveragege"

/*: "list" :*/
fileprivate let appTransferId:String = "LIST"

/*: "nickname" :*/
fileprivate let constProgressName:String = "NICK"

/*: "age" :*/
fileprivate let data_whoCancelUrl:String = "agsomewhere"

/*: "sex" :*/
fileprivate let k_betterMsg:String = "defineex"

/*: "isTPAuth" :*/
fileprivate let const_mistName:[Character] = ["i","s"]
fileprivate let k_flowStr:[Character] = ["T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let dataMiniPath:String = "lower upheadPi"
fileprivate let main_applyId:String = "conversion"

/*: "pinCount" :*/
fileprivate let dataThingCloseMmMessage:String = "pinCounttun ad result guide interested"

/*: "model" :*/
fileprivate let mainThinkKey:[Character] = ["m","o","d","e","l"]

/*: "Unpin from profile" :*/
fileprivate let k_failureFormat:[Character] = ["U","n","p","i","n"," ","f","r"]
fileprivate let show_disabledName:String = "om prbaseball track warm hair"

/*: "Delete Post" :*/
fileprivate let show_nativeFormat:[Character] = ["D","e","l","e","t","e"," ","P","o"]
fileprivate let main_earnServeValue:String = "sdark"

/*: "Pin to profile" :*/
fileprivate let dataBelowName:String = "no shinePin t"
fileprivate let constHeText:String = "OFILE"

/*: "momentId" :*/
fileprivate let appBotCountTitle:String = "momband"

/*: "status" :*/
fileprivate let showOldName:String = "sunitetus"

/*: "Your post has been pinned" :*/
fileprivate let notiPanName:String = "Your posweight go execute"
fileprivate let mainEarFormat:[Character] = ["t"," ","h","a","s"," ","b","e","e","n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let kSortTitle:String = "Yourmm bold design very conversation"
fileprivate let kDownValue:String = "crop follow limit someone renderhas be"
fileprivate let const_priorityValue:String = "putinne"
fileprivate let dataIntervaleractionMsg:[Character] = ["d"]

/*: "Posts" :*/
fileprivate let noti_jobUrl:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class ValueRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [IceModelType] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_privacyPath.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        partner()
        //: setupSubViewsConstraint()
        gallery()
        //: bindInteraction()
        rank()
        //: reqData()
        dot()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (const_electronMessage + String(showGatherFloorLatText.suffix(4)) + " posts" + String(app_specialHostMessage.prefix(5)))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension ValueRecognizerDelegate {
    //: func reqData() {
    func dot() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(const_shirtData.replacingOccurrences(of: "tip", with: "d"))] = uid
        //: dict["page"] = pageIndex
        dict[(kAssertStr.replacingOccurrences(of: "average", with: "a"))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        BlendThen.sequenceWith(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.combineIn()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(appTransferId.lowercased())] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [IceModelType] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<IceModelType>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(constProgressName.lowercased() + "name")] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(data_whoCancelUrl.replacingOccurrences(of: "somewhere", with: "e"))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(k_betterMsg.replacingOccurrences(of: "define", with: "s"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(const_shirtData.replacingOccurrences(of: "tip", with: "d"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(const_mistName) + String(k_flowStr))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(dataMiniPath.suffix(6)) + main_applyId.replacingOccurrences(of: "conversion", with: "c"))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(dataThingCloseMmMessage.prefix(8)))] as! Int
                        //: model.caculateItemHeight()
                        model.before()
                        //: if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                        if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.enablece(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension ValueRecognizerDelegate {
    //: func headerRefresh() {
    func acceptTransition() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        dot()
    }

    //: func footerRefresh() {
    func modify() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        dot()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func father(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: IceModelType = userinfo[(String(mainThinkKey))] as! IceModelType
        //: if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
        if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func copernicanSystem(model: IceModelType, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = DoingcePopView(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.reasonPostList(cellTitleList: [(String(k_failureFormat) + String(show_disabledName.prefix(5)) + "ofile").localized, (String(show_nativeFormat) + main_earnServeValue.replacingOccurrences(of: "dark", with: "t")).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.reasonPostList(cellTitleList: [(String(dataBelowName.suffix(5)) + "o pr" + constHeText.lowercased()).localized, (String(show_nativeFormat) + main_earnServeValue.replacingOccurrences(of: "dark", with: "t")).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.reasonPostList(cellTitleList: [(String(k_failureFormat) + String(show_disabledName.prefix(5)) + "ofile").localized, (String(show_nativeFormat) + main_earnServeValue.replacingOccurrences(of: "dark", with: "t")).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.reasonPostList(cellTitleList: [(String(show_nativeFormat) + main_earnServeValue.replacingOccurrences(of: "dark", with: "t")).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(k_failureFormat) + String(show_disabledName.prefix(5)) + "ofile").localized {
                //: self.topMoment(isTop: 0, model: model)
                self.minute(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(dataBelowName.suffix(5)) + "o pr" + constHeText.lowercased()).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.minute(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(show_nativeFormat) + main_earnServeValue.replacingOccurrences(of: "dark", with: "t")).localized {
                //: ProgressHUD.show()
                InsertProgressHUD.momentShow()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                BlendThen.pinEnable(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.enablece(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func minute(isTop: Int, model: IceModelType) {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(appBotCountTitle.replacingOccurrences(of: "band", with: "e") + "ntId")] = model.mid
        //: dict["status"] = isTop
        dict[(showOldName.replacingOccurrences(of: "unite", with: "ta"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        BlendThen.written(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(notiPanName.prefix(8)) + String(mainEarFormat)).localized : (String(kSortTitle.prefix(4)) + " post " + String(kDownValue.suffix(6)) + "en Un" + const_priorityValue.replacingOccurrences(of: "put", with: "p") + String(dataIntervaleractionMsg)).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.showGuidanceName(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.enablece(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension ValueRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = TillReactiveCompatible(style: .default, reuseIdentifier: TillReactiveCompatible.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: IceModelType = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.situation(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.copernicanSystem(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = WallRecognizerDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension ValueRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func partner() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.doingTo()
        //: self.title = "Posts".localized
        self.title = (String(noti_jobUrl)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(TillReactiveCompatible.self, forCellReuseIdentifier: TillReactiveCompatible.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func gallery() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func rank() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.contrastComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.acceptTransition()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.nextRating { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.modify()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(father(notification:)), name: dataOkTitle, object: nil)
    }
}
