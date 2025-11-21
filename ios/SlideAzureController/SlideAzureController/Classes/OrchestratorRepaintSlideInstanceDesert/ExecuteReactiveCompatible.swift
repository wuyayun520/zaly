
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_showValue:[UInt8] = [0xde,0xe3,0xde,0xe9,0x9d,0xd8,0xe4,0xd9,0xda,0xe7,0xaf,0x9e,0x95,0xdd,0xd6,0xe8,0x95,0xe3,0xe4,0xe9,0x95,0xd7,0xda,0xda,0xe3,0x95,0xde,0xe2,0xe5,0xe1,0xda,0xe2,0xda,0xe3,0xe9,0xda,0xd9]

fileprivate func clearCeaseLocal(provide num: UInt8) -> UInt8 {
    let value = Int(num) - 117
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_wallet" :*/
fileprivate let constShotStr:[Character] = ["i","c","o","n","_","m","e","_","w","a"]
fileprivate let notiRecognizeText:String = "llelock"

/*: "icon_me_dgc" :*/
fileprivate let app_invisibleData:String = "far smoothicon_m"
fileprivate let user_statStr:String = "e_dgcbounce here selection job king"

/*: "icon_me_friends" :*/
fileprivate let user_withdrawStr:String = "icoabsolute"
fileprivate let app_springPreviousMessage:String = "friendshade"

/*: "xicon_me_posts" :*/
fileprivate let constExpensePath:String = "reduce flow reminder recent thresholdxicon_"
fileprivate let noti_takeValue:[Character] = ["s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let kDirectionName:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let show_movementId:String = "choose pattern stallService"

/*: "icon_me_game" :*/
fileprivate let userFortName:String = "icon_then give universal"
fileprivate let data_weekOfKey:String = "E"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecuteReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class ExecuteReactiveCompatible: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(TapPortionValueConvertible, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        setupAlwaysSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_showValue.map{clearCeaseLocal(provide: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(BlendOfView.self, forCellWithReuseIdentifier: BlendOfView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension ExecuteReactiveCompatible {
    //: func setViewData() {
    func displaceOrAccumulation() {
        //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue { // 默认模式
            //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(constShotStr) + notiRecognizeText.replacingOccurrences(of: "lock", with: "t"))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(app_invisibleData.suffix(6)) + String(user_statStr.prefix(5)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (user_withdrawStr.replacingOccurrences(of: "absolute", with: "n") + "_me_" + app_springPreviousMessage.replacingOccurrences(of: "shade", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(constExpensePath.suffix(6)) + "me_po" + String(noti_takeValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kDirectionName) + String(show_movementId.suffix(7))))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(app_invisibleData.suffix(6)) + String(user_statStr.prefix(5)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (user_withdrawStr.replacingOccurrences(of: "absolute", with: "n") + "_me_" + app_springPreviousMessage.replacingOccurrences(of: "shade", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(constExpensePath.suffix(6)) + "me_po" + String(noti_takeValue))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kDirectionName) + String(show_movementId.suffix(7))))]
            }
            // 游戏入口
            //: if DismissReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
            if DismissReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
                //: DismissReactiveCompatible.share.appUserConfigMode.gameShowBit == 3 {
                DismissReactiveCompatible.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(userFortName.prefix(5)) + "me_gam" + data_weekOfKey.lowercased())))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(app_invisibleData.suffix(6)) + String(user_statStr.prefix(5)))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(constExpensePath.suffix(6)) + "me_po" + String(noti_takeValue))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(kDirectionName) + String(show_movementId.suffix(7))))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        characterConstraint()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension ExecuteReactiveCompatible: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BlendOfView.className(), for: indexPath) as! BlendOfView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.object(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: PushThen.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            PushThen.share.plumage(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: PushThen.share.func__pushToSubscribePageWebVC()
            PushThen.share.forceBack()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: PushThen.share.func__pushToWebVC(webViewType: .InviteFriends)
            PushThen.share.plumage(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: DismissReactiveCompatible.share.loginUserMode.userID)
            let vc = ValueRecognizerDelegate(uid: DismissReactiveCompatible.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: PushThen.share.func__pushToWebVC(webViewType: .FAQ)
            PushThen.share.plumage(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = RelativeResolveViewController()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (main_logStr - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension ExecuteReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupAlwaysSubviews() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func characterConstraint() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - BlendOfView

//: class TalkingMeItemCell: UICollectionViewCell {
class BlendOfView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_showValue.map{clearCeaseLocal(provide: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func object(_ data: (TapPortionValueConvertible, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.BundleImageNamed(name: data.1)
        icon.image = UIImage.locationName(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .bigGallery(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
