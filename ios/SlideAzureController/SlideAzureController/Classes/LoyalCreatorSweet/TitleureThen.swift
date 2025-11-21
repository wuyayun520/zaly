
//: Declare String Begin

/*: "Any" :*/
fileprivate let show_exactlyId:String = "rid clubAny"

/*: "Reset" :*/
fileprivate let noti_signalMsg:String = "recent whether colorReset"

/*: "Search" :*/
fileprivate let notiDeadlineFiniteContent:String = "hi build curve manager streetSearch"

/*: "18-27" :*/
fileprivate let constMarketingValue:[Character] = ["1","8","-","2","7"]

/*: "28-37" :*/
fileprivate let show_processFormat:[Character] = ["2","8","-","3","7"]

/*: "38-47" :*/
fileprivate let notiOutputContent:String = "3tissue-47"

/*: "48-57" :*/
fileprivate let notiLanguageFormat:String = "48-57"

/*: "Yes" :*/
fileprivate let mainBrowBelowData:String = "Yesorigin added service err"

/*: "Nope" :*/
fileprivate let main_alwaysId:String = "sample effectiveNope"

/*: "Age" :*/
fileprivate let noti_visualValue:[Character] = ["A","g","e"]

/*: "Video Cover" :*/
fileprivate let mainLeavePropertyValue:String = "v"
fileprivate let user_zzText:String = "related maximum favoriteideo C"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleureThen.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

// 记录筛选条件
//: var SEARCH_AGE = "Any".localized
var userPlainFormat = (String(show_exactlyId.suffix(3))).localized
//: var SEARCH_VIDEOCOVER = "Any".localized
var const_collectionValue = (String(show_exactlyId.suffix(3))).localized

//: class TalkingSearchDetailViewController: TalkingBaseViewController {
class TitleureThen: WeddingLovelyRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        animaSame()
        //: setupSubViewsConstraint()
        networkViews()
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tabV = UITableView(frame: CGRect.zero, style: .plain)
        let tabV = UITableView(frame: CGRect.zero, style: .plain)
        //: tabV.backgroundColor = self.view.backgroundColor
        tabV.backgroundColor = self.view.backgroundColor
        //: tabV.delegate = self
        tabV.delegate = self
        //: tabV.dataSource = self
        tabV.dataSource = self
        //: tabV.separatorStyle = .none
        tabV.separatorStyle = .none
        //: tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: tabV.tableFooterView = UIView()
        tabV.tableFooterView = UIView()
        //: tabV.sectionFooterHeight = 0
        tabV.sectionFooterHeight = 0
        //: tabV.keyboardDismissMode = .onDrag
        tabV.keyboardDismissMode = .onDrag
        //: tabV.register(TalkingSearchDetailCell.self, forCellReuseIdentifier: TalkingSearchDetailCell.className())
        tabV.register(ComparativeDetailCell.self, forCellReuseIdentifier: ComparativeDetailCell.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: tabV.contentInsetAdjustmentBehavior = .never
            tabV.contentInsetAdjustmentBehavior = .never
        }
        //: tabV.bounces = false
        tabV.bounces = false
        //: return tabV
        return tabV
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitle("Reset".localized, for: .normal)
        btn.setTitle((String(noti_signalMsg.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.attractiveIn(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.attractiveIn().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(resetButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(someoneTotalerest), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: btn.setTitle("Search".localized, for: .normal)
        btn.setTitle((String(notiDeadlineFiniteContent.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beret), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var agePicker: TalkingNormalPickerView = {
    private lazy var agePicker: PickerDataSource = {
        //: let data = ["Any".localized, "18-27", "28-37", "38-47", "48-57", "58+"]
        let data = [(String(show_exactlyId.suffix(3))).localized, (String(constMarketingValue)), (String(show_processFormat)), (notiOutputContent.replacingOccurrences(of: "tissue", with: "8")), (notiLanguageFormat.capitalized), "58+"]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = PickerDataSource(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_AGE = value
            userPlainFormat = value
            //: self.valueArr[0] = SEARCH_AGE
            self.valueArr[0] = userPlainFormat
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoCoverPicker: TalkingNormalPickerView = {
    private lazy var videoCoverPicker: PickerDataSource = {
        //: let data = ["Any".localized, "Yes".localized, "Nope".localized]
        let data = [(String(show_exactlyId.suffix(3))).localized, (String(mainBrowBelowData.prefix(3))).localized, (String(main_alwaysId.suffix(4))).localized]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = PickerDataSource(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_VIDEOCOVER = value
            const_collectionValue = value
            //: self.valueArr[1] = SEARCH_VIDEOCOVER
            self.valueArr[1] = const_collectionValue
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleArr: [String] = {
    private lazy var titleArr: [String] = //: return ["Age".localized, "Video Cover".localized]
        [(String(noti_visualValue)).localized, (mainLeavePropertyValue.uppercased() + String(user_zzText.suffix(6)) + "over").localized]
    //: }()

    //: private lazy var valueArr: [String] = {
    private lazy var valueArr: [String] = //: return [SEARCH_AGE, SEARCH_VIDEOCOVER]
        [userPlainFormat, const_collectionValue]
    //: }()
}

// MARK: - Event

//: extension TalkingSearchDetailViewController {
extension TitleureThen {
    //: @objc private func resetButtonClick() {
    @objc private func someoneTotalerest() {
        //: SEARCH_AGE = "Any".localized
        userPlainFormat = (String(show_exactlyId.suffix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        const_collectionValue = (String(show_exactlyId.suffix(3))).localized
        //: valueArr = [SEARCH_AGE, SEARCH_VIDEOCOVER]
        valueArr = [userPlainFormat, const_collectionValue]
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    // 通知首页刷新，返回
    //: @objc private func searchButtonClick() {
    @objc private func beret() {
        //: NotificationCenter.default.post(name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: data_userName, object: self)
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingSearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
extension TitleureThen: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue { // 女性用户只展示Age
            //: return 1
            return 1
        }
        //: return titleArr.count
        return titleArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSearchDetailCell.className(), for: indexPath) as! TalkingSearchDetailCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ComparativeDetailCell.className(), for: indexPath) as! ComparativeDetailCell
        //: cell.refreshCell(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        cell.eigenvalueTotaleraction(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: agePicker.normalSelectedComponent(value: SEARCH_AGE)
            agePicker.ballpark(value: userPlainFormat)
            //: agePicker.showView()
            agePicker.backgroundView()
            //: } else {
        } else {
            //: videoCoverPicker.normalSelectedComponent(value: SEARCH_VIDEOCOVER)
            videoCoverPicker.ballpark(value: const_collectionValue)
            //: videoCoverPicker.showView()
            videoCoverPicker.backgroundView()
        }
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingSearchDetailViewController: JXPagingViewListViewDelegate {
extension TitleureThen: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return UIScrollView()
        return UIScrollView()
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingSearchDetailViewController {
extension TitleureThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func animaSame() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(resetBtn)
        view.addSubview(resetBtn)
        //: view.addSubview(searchBtn)
        view.addSubview(searchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func networkViews() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            //: make.bottom.equalTo(-(40+kDeviceSafeBottomHeight))
            make.bottom.equalTo(-(40 + appInviteValue))
        }

        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.size.bottom.equalTo(resetBtn)
            make.size.bottom.equalTo(resetBtn)
        }
    }
}
