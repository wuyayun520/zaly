
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_rateName:[UInt8] = [0xca,0xcf,0xca,0xd5,0x89,0xc4,0xd0,0xc5,0xc6,0xd3,0x9b,0x8a,0x81,0xc9,0xc2,0xd4,0x81,0xcf,0xd0,0xd5,0x81,0xc3,0xc6,0xc6,0xcf,0x81,0xca,0xce,0xd1,0xcd,0xc6,0xce,0xc6,0xcf,0xd5,0xc6,0xc5]

fileprivate func offceAwakeConversation(that num: UInt8) -> UInt8 {
    let value = Int(num) + 159
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Nickname" :*/
fileprivate let constCreateUrl:String = "ski normallyNickname"

/*: "Birthday" :*/
fileprivate let dataEyebrowRewardName:[Character] = ["B","i"]
fileprivate let show_priceName:String = "rthwordy"

/*: "F4F4F4" :*/
fileprivate let noti_reasonFormat:[Character] = ["F","4","F","4","F","4"]

/*: "area_code_down_icon" :*/
fileprivate let main_labelFormat:String = "area_position detail"
fileprivate let showSubEarlySingleContent:String = "down_iclose stretch financial range"
fileprivate let userWayData:String = "otick"

/*: "BBBBBB" :*/
fileprivate let app_clothesStr:String = "ripripripriprip"
fileprivate let constAbsKey:String = "origin"

/*: "0/20" :*/
fileprivate let app_complyFormat:String = "0/20"

/*: "20/0" :*/
fileprivate let k_restoreMessage:String = "20/0"

/*: "Invitation code" :*/
fileprivate let kAllowName:String = "we event communication equal formatInvi"
fileprivate let notiReliefTitle:[Character] = ["c","o","d","e"]

/*: "btn_field_delete_icon" :*/
fileprivate let user_appropriateMessage:String = "btn_why seek decide vital zz"
fileprivate let user_bubblePath:String = "fimaker"
fileprivate let noti_rateValue:String = "te_iconbrush female min half estimated"

/*: "Next" :*/
fileprivate let noti_effectiveMessage:[Character] = ["N","e","x","t"]

/*: "#8C7AFF" :*/
fileprivate let noti_discussionStr:String = "#8C7AFFstyle native"

/*: "Skip" :*/
fileprivate let mainPriorityStr:[Character] = ["S","k","i","p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TickAfterView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: enum EditInfoType {
enum SmallInfoType {
    //: case NickName
    case NickName
    //: case Birth
    case Birth
    //: case HeadPic
    case HeadPic
    //: case Finish
    case Finish
    //: case Skip
    case Skip
}

//: class TalkingLoginEditInfoView: UIView {
class TickAfterView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: SmallInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: DismissReactiveCompatible.share.userFillInfoMode.nickName = DismissReactiveCompatible.share.loginUserMode.nickname ?? ""
        DismissReactiveCompatible.share.userFillInfoMode.nickName = DismissReactiveCompatible.share.loginUserMode.nickname ?? ""
        //: if let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey) {
        if let inviteCode = UserDefaults.standard.string(forKey: show_marginScaleId) {
            //: DismissReactiveCompatible.share.userFillInfoMode.inviteCode = inviteCode
            DismissReactiveCompatible.share.userFillInfoMode.inviteCode = inviteCode
            //: inviteCodeInputView.text = inviteCode
            inviteCodeInputView.text = inviteCode
        }

        //: setupSubviews()
        duringCreation()
        //: setupSubViewsConstraint()
        container()
        //: bindInteraction()
        fromRefuse()
        // 先执行一下该方法，昵称可能有默认值
        //: nicknameTextChage(nameInputView)
        river(nameInputView)

        //: if (DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.female.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeMale) {
            (DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeMale)
        {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
        }

        //: func__checkFinishBtnState()
        feature()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_rateName.map{offceAwakeConversation(that: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var nameTitleLab: UILabel = {
    lazy var nameTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .bigGallery(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Nickname".localized
        label.text = (String(constCreateUrl.suffix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthTitleLab: UILabel = {
    lazy var birthTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .bigGallery(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Birthday".localized
        label.text = (String(dataEyebrowRewardName) + show_priceName.replacingOccurrences(of: "word", with: "da")).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthControl: UIControl = {
    lazy var birthControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (String(noti_reasonFormat)))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var birthLabel: UILabel = {
    lazy var birthLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: let day = DismissReactiveCompatible.share.userFillInfoMode.birthDay
        let day = DismissReactiveCompatible.share.userFillInfoMode.birthDay
        //: let month = DismissReactiveCompatible.share.userFillInfoMode.birthMonth
        let month = DismissReactiveCompatible.share.userFillInfoMode.birthMonth
        //: let year = DismissReactiveCompatible.share.userFillInfoMode.birthYear
        let year = DismissReactiveCompatible.share.userFillInfoMode.birthYear

        //: label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"

        //: return label
        return label
        //: }()
    }()

    //: lazy var birthDownImgView: UIImageView = {
    lazy var birthDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.BundleImageNamed(name: "area_code_down_icon")
        imageView.image = UIImage.locationName(name: (String(main_labelFormat.prefix(5)) + "code_" + String(showSubEarlySingleContent.prefix(7)) + userWayData.replacingOccurrences(of: "tick", with: "n")))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var nameInputView: UITextField = {
    lazy var nameInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(noti_reasonFormat)))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .bigGallery(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dialog()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.bigGallery(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (app_clothesStr.replacingOccurrences(of: "rip", with: "B") + constAbsKey.replacingOccurrences(of: "origin", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(nameCountLab)
        rightView.addSubview(nameCountLab)
        //: textField.addTarget(self, action: #selector(nicknameTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(river(_:)), for: .editingChanged)
        //: textField.text = DismissReactiveCompatible.share.userFillInfoMode.nickName
        textField.text = DismissReactiveCompatible.share.userFillInfoMode.nickName
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var nameCountLab: UILabel = {
    lazy var nameCountLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: label.text = "0/20"
        label.text = (app_complyFormat.capitalized)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: label.text = "20/0"
            label.text = (k_restoreMessage.capitalized)
        }
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeTitleLab: UILabel = {
    private lazy var inviteCodeTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .bigGallery(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Invitation code".localized
        label.text = (String(kAllowName.suffix(4)) + "tation " + String(notiReliefTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeCleanBtn: UIButton = {
    private lazy var inviteCodeCleanBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(user_appropriateMessage.prefix(4)) + user_bubblePath.replacingOccurrences(of: "maker", with: "el") + "d_dele" + String(noti_rateValue.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(spotEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var inviteCodeInputView: UITextField = {
    lazy var inviteCodeInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(noti_reasonFormat)))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .bigGallery(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dialog()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.bigGallery(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (app_clothesStr.replacingOccurrences(of: "rip", with: "B") + constAbsKey.replacingOccurrences(of: "origin", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(inviteCodeCleanBtn)
        rightView.addSubview(inviteCodeCleanBtn)
        //: textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(last(_:)), for: .editingChanged)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(noti_effectiveMessage)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(noti_discussionStr.prefix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(mainPriorityStr)).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginEditInfoView {
extension TickAfterView {
    /// 更新Next按钮状态
    //: private func func__checkFinishBtnState() {
    private func feature() {
        //: if (DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.female.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeMale) {
            (DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue && !DismissReactiveCompatible.share.appConfigMode.skipInputInviteCodeMale)
        { // 全部必填
            //: let nickName = DismissReactiveCompatible.share.userFillInfoMode.nickName
            let nickName = DismissReactiveCompatible.share.userFillInfoMode.nickName
            //: let inviteCode = DismissReactiveCompatible.share.userFillInfoMode.inviteCode
            let inviteCode = DismissReactiveCompatible.share.userFillInfoMode.inviteCode
            //: commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    /// 清除邀请码事件
    //: @objc private func inviteCodeCleanButtonEvent() {
    @objc private func spotEvent() {
        //: inviteCodeInputView.text = ""
        inviteCodeInputView.text = ""
        //: DismissReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        DismissReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        //: func__checkFinishBtnState()
        feature()
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingLoginEditInfoView: UITextFieldDelegate {
extension TickAfterView: UITextFieldDelegate {
    //: @objc private func nicknameTextChage(_ textField: UITextField) {
    @objc private func river(_: UITextField) {
        //: let verStr: String = nameInputView.text ?? ""
        let verStr: String = nameInputView.text ?? ""
        //: if verStr.count > nameCount {
        if verStr.count > nameCount {
            //: let substring = nameInputView.text?.prefix(nameCount)
            let substring = nameInputView.text?.prefix(nameCount)
            //: nameInputView.text = String(substring ?? "")
            nameInputView.text = String(substring ?? "")
        }

        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: nameCountLab.text = "20/\(nameInputView.text!.count)"
            nameCountLab.text = "20/\(nameInputView.text!.count)"
            //: } else {
        } else {
            //: nameCountLab.text = "\(nameInputView.text!.count)/20"
            nameCountLab.text = "\(nameInputView.text!.count)/20"
        }
        //: DismissReactiveCompatible.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        DismissReactiveCompatible.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        //: func__checkFinishBtnState()
        feature()
    }

    //: @objc private func inviteCodeTextChage(_ textField: UITextField) {
    @objc private func last(_: UITextField) {
        //: let verStr: String = inviteCodeInputView.text ?? ""
        let verStr: String = inviteCodeInputView.text ?? ""
        //: if verStr.count > 6 {
        if verStr.count > 6 {
            //: let substring = inviteCodeInputView.text?.prefix(6)
            let substring = inviteCodeInputView.text?.prefix(6)
            //: inviteCodeInputView.text = String(substring ?? "")
            inviteCodeInputView.text = String(substring ?? "")
        }
        //: DismissReactiveCompatible.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        DismissReactiveCompatible.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        //: func__checkFinishBtnState()
        feature()
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

// MARK: - RevenueConfirmViewDelegate

//: extension TalkingLoginEditInfoView: DateViewDelegate {
extension TickAfterView: RevenueConfirmViewDelegate {
    //: func func__birthControlClickAction() {
    func alongside() {
        //: nameInputView.resignFirstResponder()
        nameInputView.resignFirstResponder()
        //: inviteCodeInputView.resignFirstResponder()
        inviteCodeInputView.resignFirstResponder()
        //: let myDateView = TalkingDateView()
        let myDateView = ParaPickView()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: let day = DismissReactiveCompatible.share.userFillInfoMode.birthDay
        let day = DismissReactiveCompatible.share.userFillInfoMode.birthDay
        //: let month = DismissReactiveCompatible.share.userFillInfoMode.birthMonth
        let month = DismissReactiveCompatible.share.userFillInfoMode.birthMonth
        //: let year = DismissReactiveCompatible.share.userFillInfoMode.birthYear
        let year = DismissReactiveCompatible.share.userFillInfoMode.birthYear
        //: myDateView.showView()
        myDateView.backgroundView()
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            //: myDateView.setDefaultDate(year: year, month: month, day: day)
            myDateView.scaleFor(year: year, month: month, day: day)
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func behindDiskKey(year: Int, month: Int, day: Int) {
        //: birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        //: DismissReactiveCompatible.share.userFillInfoMode.birthDay = day
        DismissReactiveCompatible.share.userFillInfoMode.birthDay = day
        //: DismissReactiveCompatible.share.userFillInfoMode.birthMonth = month
        DismissReactiveCompatible.share.userFillInfoMode.birthMonth = month
        //: DismissReactiveCompatible.share.userFillInfoMode.birthYear = year
        DismissReactiveCompatible.share.userFillInfoMode.birthYear = year
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoView {
extension TickAfterView {
    /// 添加视图
    //: private func setupSubviews() {
    private func duringCreation() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(nameTitleLab)
        contentView.addSubview(nameTitleLab)
        //: contentView.addSubview(nameInputView)
        contentView.addSubview(nameInputView)
        //: contentView.addSubview(birthTitleLab)
        contentView.addSubview(birthTitleLab)
        //: contentView.addSubview(birthControl)
        contentView.addSubview(birthControl)
        //: birthControl.addSubview(birthLabel)
        birthControl.addSubview(birthLabel)
        //: birthControl.addSubview(birthDownImgView)
        birthControl.addSubview(birthDownImgView)
        //: contentView.addSubview(inviteCodeTitleLab)
        contentView.addSubview(inviteCodeTitleLab)
        //: contentView.addSubview(inviteCodeInputView)
        contentView.addSubview(inviteCodeInputView)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(skipButton)
        contentView.addSubview(skipButton)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func container() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: nameTitleLab.snp.makeConstraints { make in
        nameTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: nameInputView.snp.makeConstraints { make in
        nameInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
            make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
        }
        //: birthTitleLab.snp.makeConstraints { make in
        birthTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.top.equalTo(nameInputView.snp.bottom).offset(30)
            //: make.leading.height.equalTo(nameTitleLab)
            make.leading.height.equalTo(nameTitleLab)
        }
        //: birthControl.snp.makeConstraints { make in
        birthControl.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
            make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
        }
        //: birthLabel.snp.makeConstraints { make in
        birthLabel.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-40)
            make.trailing.equalToSuperview().offset(-40)
        }
        //: birthDownImgView.snp.makeConstraints { make in
        birthDownImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-18)
            make.trailing.equalToSuperview().offset(-18)
        }

        //: inviteCodeTitleLab.snp.makeConstraints { make in
        inviteCodeTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(birthControl.snp.bottom).offset(30)
            make.top.equalTo(birthControl.snp.bottom).offset(30)
            //: make.leading.height.equalTo(nameTitleLab)
            make.leading.height.equalTo(nameTitleLab)
        }

        //: inviteCodeInputView.snp.makeConstraints { make in
        inviteCodeInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
            make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth - 60)
            make.width.equalTo(main_logStr - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(inviteCodeInputView.snp.bottom).offset(30)
            make.top.equalTo(inviteCodeInputView.snp.bottom).offset(30)
        }

        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(20)
            make.top.equalTo(commitButton.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func fromRefuse() {
        //: skipButton.rx.tap
        skipButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Skip)
                    self.btnBlock!(.Skip)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: birthControl.rx.controlEvent(.touchUpInside)
        birthControl.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__birthControlClickAction()
                self.alongside()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
