
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kForceAdministrativePath:[UInt8] = [0xcb,0xcc,0xcb,0xd6,0x8a,0xc1,0xcd,0xc6,0xc7,0xd0,0x98,0x8b,0x82,0xca,0xc3,0xd1,0x82,0xcc,0xcd,0xd6,0x82,0xc0,0xc7,0xc7,0xcc,0x82,0xcb,0xcf,0xd2,0xce,0xc7,0xcf,0xc7,0xcc,0xd6,0xc7,0xc6]

private func betterOccur(matter num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "icon_ziliao_id_default" :*/
fileprivate let noti_physicalMessage:[Character] = ["i","c","o","n","_","z","i","l","i","a"]
fileprivate let main_sinceName:String = "o_id_inform bottom user same upper"

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let userStumbleStr:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","x","i","n","g","z","u","o","_","d","e","f","a","u","l","t"]

/*: "icon_ziliao_qianming_default" :*/
fileprivate let noti_stackUrl:[Character] = ["i","c","o","n","_"]
fileprivate let main_remarkStr:String = "ziscopeia"
fileprivate let noti_meetData:[Character] = ["m","i","n","g","_","d","e","f","a","u","l","t"]

/*: "btn_me_copy" :*/
fileprivate let appResumeName:[Character] = ["b","t","n","_","m","e","_","c","o","p","y"]

/*: "icon_data_man" :*/
fileprivate let const_expressionId:String = "icon_bond cost wedding argument"
fileprivate let k_justiceName:String = "alleged port theaterdata_man"

/*: "icon_data_position" :*/
fileprivate let notiPartyMsg:String = "advertisingcon"
fileprivate let dataLovelyPointUrl:String = "a_poillegal recommend research edge"
fileprivate let show_perAdviceEraseFormat:[Character] = ["s","i","t","i","o","n"]

/*: "icon_userinfo_language" :*/
fileprivate let notiTrustData:String = "always here visual rangeicon_u"
fileprivate let const_involvementTitle:[Character] = ["n","f","o","_","l"]
fileprivate let appSlideStr:String = "accessguage"

/*: "UID Copied" :*/
fileprivate let main_countValue:String = "produce categoryUID Copi"
fileprivate let noti_exactlyTitle:String = "assistant"

/*: "icon_data_woman" :*/
fileprivate let kCharacterKey:[UInt8] = [0x6e,0x61,0x6d,0x6f,0x77,0x5f,0x61,0x74,0x61,0x64,0x5f,0x6e,0x6f,0x63,0x69]

/*: "Unknown" :*/
fileprivate let app_sendKey:String = "Unknownservice crush"

/*: " Unknown" :*/
fileprivate let dataMicMessage:[Character] = [" ","U","n","k","n","o"]
fileprivate let mainOfflyStr:[Character] = ["w","n"]

/*: "666666" :*/
fileprivate let const_agreeMessage:String = "666666"

/*: "No personal signature was completed" :*/
fileprivate let dataKitUrl:[UInt8] = [0xc8,0xe9,0xa6,0xf6,0xe3,0xf4,0xf5,0xe9,0xe8,0xe7,0xea,0xa6,0xf5,0xef,0xe1,0xe8,0xe7,0xf2,0xf3,0xf4,0xe3,0xa6,0xf1,0xe7,0xf5,0xa6,0xe5,0xe9,0xeb,0xf6,0xea,0xe3,0xf2,0xe3,0xe2]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CreateViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class CreateViewCell: UITableViewCell {
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
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.outsideIt()
        //: self.setupSubViewsConstraint()
        self.extend()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kForceAdministrativePath.map{betterOccur(matter: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "icon_ziliao_id_default")
        imgV.image = UIImage.locationName(name: (String(noti_physicalMessage) + String(main_sinceName.prefix(5)) + "default"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.locationName(name: (String(userStumbleStr)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.locationName(name: (String(noti_stackUrl) + main_remarkStr.replacingOccurrences(of: "scope", with: "l") + "o_qian" + String(noti_meetData)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .ownLight()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .ownLight()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .ownLight()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(appResumeName))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(progress), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "icon_data_man")
        imgV.image = UIImage.locationName(name: (String(const_expressionId.prefix(5)) + String(k_justiceName.suffix(8))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .ownLight()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: RangeReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = RangeReactiveCompatible(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.locationName(name: (notiPartyMsg.replacingOccurrences(of: "advertising", with: "i") + "_dat" + String(dataLovelyPointUrl.prefix(4)) + String(show_perAdviceEraseFormat))), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.bonePlace(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var languageButton: TalkingButton = {
    private lazy var languageButton: RangeReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = RangeReactiveCompatible(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_userinfo_language"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(notiTrustData.suffix(6)) + "seri" + String(const_involvementTitle) + appSlideStr.replacingOccurrences(of: "access", with: "an"))), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.bonePlace(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension CreateViewCell {
    //: @objc func clickCopyButtonAction() {
    @objc func progress() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        InsertProgressHUD.overDeadline((String(main_countValue.suffix(8)) + noti_exactlyTitle.replacingOccurrences(of: "assistant", with: "ed")).localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension CreateViewCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func replaceModel(userModel: DisableMeasurable) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == FenceSequence.female.rawValue) ? String(bytes: kCharacterKey.reversed(), encoding: .utf8)! : (String(const_expressionId.prefix(5)) + String(k_justiceName.suffix(8)))
        //: sexIcon.image = UIImage.BundleImageNamed(name: sexImgStr)
        sexIcon.image = UIImage.locationName(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: var tempstr = ""
        var tempstr = ""
        //: let firstStr = userModel.customFirstLang == "Unknown" ? "":userModel.customFirstLang
        let firstStr = userModel.customFirstLang == (String(app_sendKey.prefix(7))) ? "" : userModel.customFirstLang
        //: for str in userModel.customSecondLang {
        for str in userModel.customSecondLang {
            //: if (str == "Unknown" && firstStr.count > 0) || (str.count <= 0 && firstStr.count <= 0) {
            if (str == (String(app_sendKey.prefix(7))) && firstStr.count > 0) || (str.count <= 0 && firstStr.count <= 0) {
                //: tempstr.append(" Unknown")
                tempstr.append((String(dataMicMessage) + String(mainOfflyStr)))
                //: }else {
            } else {
                //: tempstr.append(" " + str)
                tempstr.append(" " + str)
            }
        }
        //: languageButton.setTitle(firstStr + tempstr, for: .normal)
        languageButton.setTitle(firstStr + tempstr, for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (const_agreeMessage.capitalized))!, .font: UIFont.bigGallery(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: dataKitUrl.map{$0^134}, encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: languageButton.snp.remakeConstraints { make in
            languageButton.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.equalTo(uidImgView)
                make.leading.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension CreateViewCell {
    //: private func setupSubviews() {
    private func outsideIt() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
        //: contentView.addSubview(languageButton)
        contentView.addSubview(languageButton)
    }

    //: private func setupSubViewsConstraint() {
    private func extend() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: languageButton.snp.makeConstraints { make in
        languageButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(9)
            make.top.equalTo(locationButton.snp.bottom).offset(9)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(languageButton.snp.bottom).offset(10)
            make.top.equalTo(languageButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
