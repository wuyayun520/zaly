
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appPlusId:[UInt8] = [0x5f,0x58,0x5f,0x42,0x1e,0x55,0x59,0x52,0x53,0x44,0xc,0x1f,0x16,0x5e,0x57,0x45,0x16,0x58,0x59,0x42,0x16,0x54,0x53,0x53,0x58,0x16,0x5f,0x5b,0x46,0x5a,0x53,0x5b,0x53,0x58,0x42,0x53,0x52]

/*: "icon_me_income" :*/
fileprivate let const_relateValue:String = "development pause ply shadow suspendicon_"
fileprivate let showTheTitle:String = "me_incomevanish eastern accounting invite science"

/*: "Income" :*/
fileprivate let kWorkMsg:String = "additional someone speaker hopIncome"

/*: "icon_me_male_wallet" :*/
fileprivate let user_standDocStr:[Character] = ["i","c","o","n","_","m","e","_","m","a","l","e","_","w","a"]
fileprivate let main_materialFormerValue:[Character] = ["l","l","e","t"]

/*: "Wallet" :*/
fileprivate let main_successTitle:String = "she"
fileprivate let notiUntilMsg:[Character] = ["a","l","l","e","t"]

/*: "#7189F7" :*/
fileprivate let constVarietyMessage:[Character] = ["#","7","1","8","9","F","7"]

/*: "Level" :*/
fileprivate let main_schedulePath:[Character] = ["L","e","v","e","l"]

/*: "icon_me_level" :*/
fileprivate let appHelloBelowTitle:String = "icosearch"
fileprivate let show_fastKey:String = "EVEL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MotivationView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class MotivationView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        middle()
        //: setupSubViewsConstraint()
        statusDown()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appPlusId.map{$0^54}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(presentationToCapacity), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue && DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_income")
            icon.image = UIImage.locationName(name: (String(const_relateValue.suffix(5)) + String(showTheTitle.prefix(9))))
            //: lab.text = "Income".localized
            lab.text = (String(kWorkMsg.suffix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_male_wallet")
            icon.image = UIImage.locationName(name: (String(user_standDocStr) + String(main_materialFormerValue)))
            //: lab.text = "Wallet".localized
            lab.text = (main_successTitle.replacingOccurrences(of: "she", with: "W") + String(notiUntilMsg)).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(constVarietyMessage)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beforeBeggarMyNeighbourPolicy), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(main_schedulePath)).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "icon_me_level")
        icon.image = UIImage.locationName(name: (appHelloBelowTitle.replacingOccurrences(of: "search", with: "n") + "_me_l" + show_fastKey.lowercased()))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(constVarietyMessage)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension MotivationView {
    //: func setViewData() {
    func nightRank() {
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: goldCoinsNum.text = "$\(DismissReactiveCompatible.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(DismissReactiveCompatible.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(DismissReactiveCompatible.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(DismissReactiveCompatible.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = DismissReactiveCompatible.share.loginUserMode.level
        myLevelNum.text = DismissReactiveCompatible.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func presentationToCapacity() {
        //: incomeClick()
        incomePrimary()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func beforeBeggarMyNeighbourPolicy() {
        //: PushThen.share.func__pushToWebVC(webViewType: .Level)
        PushThen.share.plumage(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func incomePrimary() {
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: if DismissReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.isTPAuth == MovementBasicType.isSuccessed.rawValue {
                //: PushThen.share.func__pushToWebVC(webViewType: .Balance)
                PushThen.share.plumage(webViewType: .Balance)
                //: } else {
            } else {
                //: PushThen.share.func__pushUserVerifyController(toast: nil)
                PushThen.share.undercoverOperation(toast: nil)
            }

            //: } else {
        } else {
            //: PushThen.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            PushThen.share.plumage(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension MotivationView {
    /// 添加视图
    //: private func setupSubviews() {
    private func middle() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func statusDown() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (main_logStr - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
