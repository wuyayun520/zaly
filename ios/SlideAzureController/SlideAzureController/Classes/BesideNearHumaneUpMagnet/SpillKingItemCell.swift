
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_equityTrustSunName:[UInt8] = [0xa5,0xa2,0xa5,0xb8,0xe4,0xaf,0xa3,0xa8,0xa9,0xbe,0xf6,0xe5,0xec,0xa4,0xad,0xbf,0xec,0xa2,0xa3,0xb8,0xec,0xae,0xa9,0xa9,0xa2,0xec,0xa5,0xa1,0xbc,0xa0,0xa9,0xa1,0xa9,0xa2,0xb8,0xa9,0xa8]

/*: "btn_daily_todayBg_nor" :*/
fileprivate let userPhotoData:String = "forehead bright extendbtn_"
fileprivate let app_largeKey:String = "tell object comment waity_today"
fileprivate let userBeatValue:String = "secure procedure boxBg_nor"

/*: "btn_daily_style1_nor" :*/
fileprivate let mainDressPushData:String = "remark panelbtn_da"
fileprivate let user_dayStr:String = "barrier controlstyle1_"
fileprivate let showTeamStr:String = "nlistenr"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let const_flatReplaceName:[Character] = ["b","t","n","_","d","a","i"]
fileprivate let k_transferEarPersonalityMsg:[Character] = ["l","y","_","t","o","d","a","y","L","i","g","h","t","_","n","o","r"]

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let const_entryShotText:String = "btn_skin reject own want several"
fileprivate let noti_stageKey:String = "green ridnotSig"

/*: "btn_daily_signIn_nor" :*/
fileprivate let mainTapPath:String = "eye fresh wind coldbtn_da"
fileprivate let noti_dynamicsMsg:[Character] = ["i","l","y","_","s","i","g","n","I","n","_","n","o","r"]

/*: "btn_daily_today_nor" :*/
fileprivate let k_identifyUrl:String = "btn_damm prosecutor leading orientation receive"
fileprivate let mainModeData:String = "person jointoday_nor"

/*: "#FF8F1A" :*/
fileprivate let k_containChanceId:[Character] = ["#","F","F","8","F","1","A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpillKingItemCell.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class SpillKingItemCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_equityTrustSunName.map{$0^204}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.supreme()
        //: self.setupSubViewsConstraint()
        self.replace()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayBg_nor")
        img.image = UIImage.locationName(name: (String(userPhotoData.suffix(4)) + "dail" + String(app_largeKey.suffix(7)) + String(userBeatValue.suffix(6))))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_style1_nor")
        img.image = UIImage.locationName(name: (String(mainDressPushData.suffix(6)) + "ily_" + String(user_dayStr.suffix(7)) + showTeamStr.replacingOccurrences(of: "listen", with: "o")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_daily_todayLight_nor")
        img.image = UIImage.locationName(name: (String(const_flatReplaceName) + String(k_transferEarPersonalityMsg)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 14)
        lab.font = UIFont.pingfang(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension SpillKingItemCell {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func privacyGame(model: SampleReactiveCompatible) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.pingfangRugularFont(fontSize: 17)
        dayLab.font = UIFont.bonePlace(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.locationName(name: (String(const_entryShotText.prefix(4)) + "daily_" + String(noti_stageKey.suffix(6)) + "nIn_nor"))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.saveInColor()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.locationName(name: (String(mainTapPath.suffix(6)) + String(noti_dynamicsMsg)))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.saveInColor()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.locationName(name: (String(k_identifyUrl.prefix(6)) + "ily_" + String(mainModeData.suffix(9))))
            //: dayLab.font = UIFont.pingfangMediumFont(fontSize: 17)
            dayLab.font = UIFont.pingfang(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(k_containChanceId)))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.BundleImageNamed(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.locationName(name: (String(k_identifyUrl.prefix(6)) + "ily_" + String(mainModeData.suffix(9))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.ownLight()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension SpillKingItemCell {
    // 添加视图
    //: private func setupSubviews() {
    private func supreme() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func replace() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
