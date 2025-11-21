
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_toolName:[UInt8] = [0x86,0x81,0x86,0x9b,0xc7,0x8c,0x80,0x8b,0x8a,0x9d,0xd5,0xc6,0xcf,0x87,0x8e,0x9c,0xcf,0x81,0x80,0x9b,0xcf,0x8d,0x8a,0x8a,0x81,0xcf,0x86,0x82,0x9f,0x83,0x8a,0x82,0x8a,0x81,0x9b,0x8a,0x8b]

/*: "#999999" :*/
fileprivate let main_goldMessage:[Character] = ["#","9","9","9","9","9"]
fileprivate let noti_hiMessage:[Character] = ["9"]

/*: "0/20" :*/
fileprivate let user_starName:String = "0/20"

/*: "Nickname" :*/
fileprivate let user_lowId:String = "each lope always containNickname"

/*: "enter your name" :*/
fileprivate let mainStreetReplacementKey:[Character] = ["e"]
fileprivate let notiWritingTitle:String = "nter permission resume out deep someone"
fileprivate let noti_formationUrl:String = " namesoccer timing band cap angle"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MovementTextCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: typealias EditNameBlock = (String) ->(Void)
typealias EditNameBlock = (String) -> Void

//: class TalkingEditNameCell: UITableViewCell {
class MovementTextCell: UITableViewCell {
    //: var nameBlock: EditNameBlock!
    var nameBlock: EditNameBlock!

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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView .addSubview(nameTF)
        backView.addSubview(nameTF)
        //: backView.addSubview(numberLB)
        backView.addSubview(numberLB)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(invisible(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_toolName.map{$0^239}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: nameTF.snp.makeConstraints { make in
        nameTF.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(46)
            make.top.equalTo(backView).offset(46)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-12)
            make.bottom.equalTo(backView.snp.bottom).offset(-12)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (String(main_goldMessage) + String(noti_hiMessage)))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: LB.text = "0/20"
        LB.text = (user_starName.capitalized)
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.dialog()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        LB.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: LB.text = "Nickname".localized
        LB.text = (String(user_lowId.suffix(8))).localized
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: let str  = "* \(LB.text ?? "")"
            let str = "* \(LB.text ?? "")"
            //: let attrString = NSMutableAttributedString(string: str)
            let attrString = NSMutableAttributedString(string: str)
            //: let attributes = [.foregroundColor: UIColor.red, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 18)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.red, .font: UIFont.bigGallery(type: .Semibold, fontSize: 18)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: 1))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: 1))
            //: LB.attributedText = attrString
            LB.attributedText = attrString
        }
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var nameTF: UITextField = {
    lazy var nameTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .doingTo()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.dialog()
        //: tf.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        tf.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: tf.textAlignment = .center
        tf.textAlignment = .center
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "enter your name".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(mainStreetReplacementKey) + String(notiWritingTitle.prefix(5)) + "your" + String(noti_formationUrl.prefix(5))).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (String(main_goldMessage) + String(noti_hiMessage)))!])
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.text = DismissReactiveCompatible.share.loginUserMode.nickname
        tf.text = DismissReactiveCompatible.share.loginUserMode.nickname
        //: numberLB.text = "\(DismissReactiveCompatible.share.loginUserMode.nickname?.count ?? 0)/20"
        numberLB.text = "\(DismissReactiveCompatible.share.loginUserMode.nickname?.count ?? 0)/20"
        //: return tf
        return tf
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditNameCell {
extension MovementTextCell {
    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func invisible(notification _: NSNotification) {
        //: if self.nameBlock != nil {
        if self.nameBlock != nil {
            //: self.nameBlock(nameTF.text ?? "")
            self.nameBlock(nameTF.text ?? "")
        }
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingEditNameCell: UITextFieldDelegate {
extension MovementTextCell: UITextFieldDelegate {
    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>20 || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > 20 || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }

        //: numberLB.text = "\(textField.text!.count+string.count)/20"
        numberLB.text = "\(textField.text!.count + string.count)/20"
        //: return true
        return true
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }
}
