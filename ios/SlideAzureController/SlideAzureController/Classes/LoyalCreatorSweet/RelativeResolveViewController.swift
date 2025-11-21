
//: Declare String Begin

/*: "Game Center" :*/
fileprivate let userCollectSolarMessage:[Character] = ["G","a","m","e"," ","C"]
fileprivate let show_impressionMessage:String = "militaryter"

/*: "You've got no list yet." :*/
fileprivate let notiJusticeMsg:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","s","t"]
fileprivate let app_meanText:String = " yet.pic home target remove"

/*: "list" :*/
fileprivate let constTenderKey:String = "lthirdst"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RelativeResolveViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/11/16.
//

//: import UIKit
import UIKit

//: class TalkingGameListViewController: TalkingBaseViewController {
class RelativeResolveViewController: WeddingLovelyRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Game Center".localized
        self.title = (String(userCollectSolarMessage) + show_impressionMessage.replacingOccurrences(of: "military", with: "en")).localized
        //: setupSubviews()
        match()
        //: setupSubViewsConstraint()
        line()
        //: bindInteraction()
        bindAction()
        //: req_getGameList()
        contentInsert()
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.sectionInset = UIEdgeInsets(top: 24, left: 15, bottom: 0, right: 15)
        layout.sectionInset = UIEdgeInsets(top: 24, left: 15, bottom: 0, right: 15)

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.showsVerticalScrollIndicator = true
        collect.showsVerticalScrollIndicator = true
        //: collect.showsHorizontalScrollIndicator = false
        collect.showsHorizontalScrollIndicator = false
        //: collect.register(TalkingliveRoomGameItemCell.self, forCellWithReuseIdentifier: TalkingliveRoomGameItemCell.className())
        collect.register(SparkView.self, forCellWithReuseIdentifier: SparkView.className())
        //: return collect
        return collect
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RedEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (String(notiJusticeMsg) + String(app_meanText.prefix(5))).localized
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var dataArr: [TalkingGameListModel] = {
    private lazy var dataArr: [ResolveModelType] = //: return [ResolveModelType]()
        .init()
    //: }()
}

// MARK: - Load Data

//: extension TalkingGameListViewController {
extension RelativeResolveViewController {
    /// 获取游戏列表
    //: private func req_getGameList() {
    private func contentInsert() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_getGameList(category: 1) { [weak self] succeed, result, errorModel in
        FlyerThen.red(category: 1) { [weak self] _, result, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: let json = JSON(result ?? [:])
            let json = JSON(result ?? [:])
            //: json["list"].arrayObject?.forEach({ dict in
            json[(constTenderKey.replacingOccurrences(of: "third", with: "i"))].arrayObject?.forEach { dict in
                //: if let model = TalkingGameListModel.deserialize(from: dict as? Dictionary) {
                if let model = ResolveModelType.deserialize(from: dict as? Dictionary) {
                    //: self.dataArr.append(model)
                    self.dataArr.append(model)
                }
                //: })
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
            //: self.emptyView.isHidden = (self.dataArr.count > 0)
            self.emptyView.isHidden = (self.dataArr.count > 0)
        }
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingGameListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension RelativeResolveViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingliveRoomGameItemCell.className(), for: indexPath) as! TalkingliveRoomGameItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SparkView.className(), for: indexPath) as! SparkView
        //: cell.refreshView(model: dataArr[indexPath.row], nameColor: .appTitleColor())
        cell.renderStreet(model: dataArr[indexPath.row], nameColor: .dialog())
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: var config = TalkingWebConfig()
        var config = EndConfig()
        //: config.widthHeight = model.widthHeight
        config.widthHeight = model.widthHeight
        //: config.clearBgColor = true
        config.clearBgColor = true
        //: PushThen.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
        PushThen.share.plumeBright(urlStr: model.url, webConfig: config)
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/4, height: GameItem_H)
        return CGSize(width: (main_logStr - 30) / 4, height: main_senseMessage)
    }
}

// MARK: - Layout

//: extension TalkingGameListViewController {
extension RelativeResolveViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func match() {
        //: view.addSubview(collectionView)
        view.addSubview(collectionView)
        //: view.addSubview(emptyView)
        view.addSubview(emptyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func line() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bindAction() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.req_getGameList()
            self.contentInsert()
        }
    }
}
