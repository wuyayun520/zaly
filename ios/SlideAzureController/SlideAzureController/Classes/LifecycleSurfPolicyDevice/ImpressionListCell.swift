
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constControlTitle:[UInt8] = [0x62,0x67,0x62,0x6d,0x21,0x5c,0x68,0x5d,0x5e,0x6b,0x33,0x22,0x19,0x61,0x5a,0x6c,0x19,0x67,0x68,0x6d,0x19,0x5b,0x5e,0x5e,0x67,0x19,0x62,0x66,0x69,0x65,0x5e,0x66,0x5e,0x67,0x6d,0x5e,0x5d]

fileprivate func twoMedal(motion num: UInt8) -> UInt8 {
    let value = Int(num) - 249
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Full" :*/
fileprivate let userOriginPageUrl:[Character] = ["F","u","l","l"]

/*: "%@ Online" :*/
fileprivate let show_includeName:String = "change select evaluation%@ O"
fileprivate let app_menuMessage:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImpressionListCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomListCell: UITableViewCell {
class ImpressionListCell: UITableViewCell {
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
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: createCellUI()
        observe()
        //: layoutSubViewsConstraints()
        inner()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constControlTitle.map{twoMedal(motion: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .bigGallery(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: return label
        return label
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatRoomListCell {
extension ImpressionListCell {
    //: func setChatRoomListCell(model: TalkingChatRoomListModel) {
    func resign(model: CandlepowerListModel) {
        //: IconBtn.setUrlImage(urlStr: model.icon)
        IconBtn.jawWithFinish(urlStr: model.icon)
        //: titleLB.text = model.name
        titleLB.text = model.name
        //: messageLB.text = model.msg
        messageLB.text = model.msg
        //: if model.isFull {
        if model.isFull {
            //: numberLB.text = "Full".localized
            numberLB.text = (String(userOriginPageUrl)).localized
            //: numberLB.textColor = UIColor.msgTipsColor()
            numberLB.textColor = UIColor.chromaticColourColor()
            //: }else {
        } else {
            //: numberLB.text = "%@ Online".localizedArguments(model.num)
            numberLB.text = (String(show_includeName.suffix(4)) + "nlin" + String(app_menuMessage)).unitedStates(model.num)
            //: numberLB.textColor = .appValueDetailColor()
            numberLB.textColor = .saveInColor()
        }
    }
}

// MARK: - UI

//: extension TalkingChatRoomListCell {
extension ImpressionListCell {
    //: func createCellUI() {
    func observe() {
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(titleLB)
        self.contentView.addSubview(titleLB)
        //: self.contentView.addSubview(messageLB)
        self.contentView.addSubview(messageLB)
        //: self.contentView.addSubview(numberLB)
        self.contentView.addSubview(numberLB)
    }

    //: func layoutSubViewsConstraints() {
    func inner() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.right).offset(-15)
            make.trailing.equalTo(self.right).offset(-15)
            //: make.top.equalTo(self).offset(16)
            make.top.equalTo(self).offset(16)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }

        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.trailing.lessThanOrEqualTo(numberLB.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(numberLB.snp.leading).offset(-5)
            //: make.top.equalTo(self).offset(13)
            make.top.equalTo(self).offset(13)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(titleLB)
            make.leading.trailing.equalTo(titleLB)
            //: make.top.equalTo(titleLB.snp.bottom).offset(8)
            make.top.equalTo(titleLB.snp.bottom).offset(8)
        }
    }
}
