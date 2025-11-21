
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_donTitle:[UInt8] = [0xe0,0xe7,0xe0,0xfd,0xa1,0xea,0xe6,0xed,0xec,0xfb,0xb3,0xa0,0xa9,0xe1,0xe8,0xfa,0xa9,0xe7,0xe6,0xfd,0xa9,0xeb,0xec,0xec,0xe7,0xa9,0xe0,0xe4,0xf9,0xe5,0xec,0xe4,0xec,0xe7,0xfd,0xec,0xed]

private func loadSkip(lat num: UInt8) -> UInt8 {
    return num ^ 137
}

/*: "Not yet~" :*/
fileprivate let main_targetStr:String = "select"
fileprivate let notiDesignHolderMsg:String = "ot yet~on band low wed"

/*: "#8C7AFF" :*/
fileprivate let app_assignId:String = "#8"
fileprivate let user_gameName:[Character] = ["C","7","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenceListView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import JXSegmentedView
import JXSegmentedView
//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankListView: UIView {
class OpenceListView: UIView {
    //: var type = 0
    var type = 0

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.repose()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_donTitle.map{loadSkip(lat: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: ranktableView.frame = self.bounds
        ranktableView.frame = self.bounds
    }

    // MARK: param

    //: lazy var dataArray: [SocialRankItemModel] = [] {
    lazy var dataArray: [DisableModelType] = [] {
        //: didSet {
        didSet {
            //: if dataArray.isEmpty == false {
            if dataArray.isEmpty == false {
                //: tableHeaderView.index = self.type
                tableHeaderView.index = self.type
                //: ranktableView.tableHeaderView = tableHeaderView
                ranktableView.tableHeaderView = tableHeaderView

                //: tableHeaderView.dataArray = dataArray
                tableHeaderView.dataArray = dataArray

                //: ranktableView.backgroundView = UIView.init()
                ranktableView.backgroundView = UIView()
                //: } else {
            } else {
                //: ranktableView.backgroundView = tableBackgrourdView
                ranktableView.backgroundView = tableBackgrourdView
                //: ranktableView.tableHeaderView = UIView()
                ranktableView.tableHeaderView = UIView()
            }
            //: ranktableView.reloadData()
            ranktableView.reloadData()
        }
    }

    // MARK: UI

    //: lazy var ranktableView = UITableView.init(frame: self.bounds, style: .plain).then {
    lazy var ranktableView = UITableView(frame: self.bounds, style: .plain).then {
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.bounces = false
        $0.bounces = false
        //: $0.backgroundView = tableBackgrourdView
        $0.backgroundView = tableBackgrourdView
        //: $0.tableFooterView = UIView()
        $0.tableFooterView = UIView()
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingRoundedCell.self, forCellReuseIdentifier: TalkingRoundedCell.className())
        $0.register(TitleurePhaseViewCell.self, forCellReuseIdentifier: TitleurePhaseViewCell.className())
        //: $0.register(SocialRankListViewCell.self, forCellReuseIdentifier: SocialRankListViewCell.className())
        $0.register(SocialThen.self, forCellReuseIdentifier: SocialThen.className())
    }

    //: lazy var tableHeaderView = SocialRankHeaderView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualHeight(h: 220+14))).then {
    lazy var tableHeaderView = SocietalHeaderView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: actualHeight(h: 220 + 14))).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.index = self.type
        $0.index = self.type
    }

    //: lazy var tableBackgrourdView = SocialEmptyView().then {
    lazy var tableBackgrourdView = RansackedThen().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.desLab.text = "Not yet~".localized
        $0.desLab.text = (main_targetStr.replacingOccurrences(of: "select", with: "N") + String(notiDesignHolderMsg.prefix(7))).localized
        //: $0.desLab.textColor = UIColor(hex: "#8C7AFF")
        $0.desLab.textColor = UIColor(hex: (app_assignId.capitalized + String(user_gameName)))
        //: $0.imgV.snp.remakeConstraints { make in
        $0.imgV.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension SocialRankListView: UITableViewDataSource, UITableViewDelegate {
extension OpenceListView: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return dataArray.count > 3 ? 1 : 0
            return dataArray.count > 3 ? 1 : 0
        }
        //: return dataArray.count - 3
        return dataArray.count - 3
    }

    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingRoundedCell.className(), for: indexPath) as! TalkingRoundedCell
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleurePhaseViewCell.className(), for: indexPath) as! TitleurePhaseViewCell
            //: return cell
            return cell
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: SocialRankListViewCell.className(), for: indexPath) as! SocialRankListViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: SocialThen.className(), for: indexPath) as! SocialThen
        //: let model = dataArray[indexPath.row+3]
        let model = dataArray[indexPath.row + 3]
        //: cell.updateRankCell(model: model, index: indexPath.row+3)
        cell.nativeWarning(model: model, index: indexPath.row + 3)
        //: cell.updateIcon(type: self.type)
        cell.flushOrVariation(type: self.type)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingRoundedCell.className()) as! TalkingRoundedCell
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleurePhaseViewCell.className()) as! TitleurePhaseViewCell
            //: return cell.cellHeight
            return cell.cellHeight
        }
        //: return actualHeight(h: 70)
        return actualHeight(h: 70)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = dataArray[indexPath.row+3]
        let model = dataArray[indexPath.row + 3]
        //: guard model.uid != 0 else {
        guard model.uid != 0 else {
            //: return
            return
        }
        //: PushThen.share.func__pushToUserDetailVC(uid: "\(model.uid)")
        PushThen.share.sessionSomebody(uid: "\(model.uid)")
    }
}

//: extension SocialRankListView: JXSegmentedListContainerViewListDelegate {
extension OpenceListView: JXSegmentedListContainerViewListDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self
        return self
    }
}

// MARK: Layout

//: extension SocialRankListView {
extension OpenceListView {
    //: private func setupSubviews() {
    private func repose() {
        //: self.addSubview(ranktableView)
        self.addSubview(ranktableView)
    }
}
