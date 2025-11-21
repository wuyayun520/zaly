
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showColumnTitle:[UInt8] = [0x5d,0x5a,0x5d,0x40,0x1c,0x57,0x5b,0x50,0x51,0x46,0xe,0x1d,0x14,0x5c,0x55,0x47,0x14,0x5a,0x5b,0x40,0x14,0x56,0x51,0x51,0x5a,0x14,0x5d,0x59,0x44,0x58,0x51,0x59,0x51,0x5a,0x40,0x51,0x50]

private func videoGrade(wave num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "btn_chatsettings_unchoice" :*/
fileprivate let noti_tableCornerData:String = "quick window mentionbtn_ch"
fileprivate let kFormalValue:[Character] = ["i","n","g","s","_","u","n","c","h","o","i","c","e"]

/*: "Free" :*/
fileprivate let userCapitalBorderMsg:String = "Freedestroy path core"

/*: "%@ Gold coins / Message" :*/
fileprivate let k_thirdFormat:[Character] = ["%","@"," ","G","o","l","d"," ","c"]
fileprivate let userEffectiveNoText:String = "oiyour"
fileprivate let main_supplyFormat:String = "s / Mepartner level anyone hang center"

/*: "%@ Gold coins / Min" :*/
fileprivate let kTotalervalContent:String = "agree destroy that%@ Gold"
fileprivate let user_whoName:String = " "
fileprivate let appShapeFormat:String = "COINS"

/*: "btn_chatsettings_choiced" :*/
fileprivate let data_memoryStr:String = "final district calculate beastbtn_"
fileprivate let noti_ofName:String = "brushett"
fileprivate let app_entityTitle:[Character] = ["h","o","i","c","e","d"]

/*: "#E9E9E9" :*/
fileprivate let kPlaceSkirtPath:String = "#E9E9E9reader assist everyone"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RunningThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class PriceHandyJSON: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class RunningThen: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.raw()
        //: self.setupSubViewsConstraint()
        self.policyCharm()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showColumnTitle.map{videoGrade(wave: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.attractiveIn()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .bigGallery(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.locationName(name: (String(noti_tableCornerData.suffix(6)) + "atsett" + String(kFormalValue)))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension RunningThen {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func fit(cellModel: PriceHandyJSON, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(userCapitalBorderMsg.prefix(4))).localized : (String(k_thirdFormat) + userEffectiveNoText.replacingOccurrences(of: "your", with: "n") + String(main_supplyFormat.prefix(6)) + "ssage").unitedStates(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(kTotalervalContent.suffix(7)) + user_whoName.capitalized + appShapeFormat.lowercased() + " / Min").unitedStates(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.BundleImageNamed(name: "btn_chatsettings_choiced") : UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.locationName(name: (String(data_memoryStr.suffix(4)) + "chat" + noti_ofName.replacingOccurrences(of: "brush", with: "s") + "ings_c" + String(app_entityTitle))) : UIImage.locationName(name: (String(noti_tableCornerData.suffix(6)) + "atsett" + String(kFormalValue)))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(DismissReactiveCompatible.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(DismissReactiveCompatible.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(kPlaceSkirtPath.prefix(7)))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension RunningThen {
    //: private func setupSubviews() {
    private func raw() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func policyCharm() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
