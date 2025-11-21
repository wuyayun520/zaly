
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appEntityBrightSpendValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let k_sizeTitle:[Character] = ["M","F",":","L","i"]
fileprivate let const_earnOrbitValue:[Character] = ["v","e","C","h","a","t","W","e","l","M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let main_absoluteUrl:String = "MF:Lcycle fast equally match register"
fileprivate let notiSpecialNearFormat:String = "PrizeMsglife location short ice"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let data_closeFloorStr:String = "MF:Liop success catch"
fileprivate let k_reliefUrl:String = "tAttenwide panel"
fileprivate let kShapeMessage:String = "row electron yestionMsg"

/*: "UITableViewCell" :*/
fileprivate let app_hourNoteData:String = "language host alleged bean recoverUITabl"
fileprivate let mainLaboratoryTitle:String = "self analysis appeal foodwCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrabSampleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class GrabSampleReactiveCompatible: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = AfterHandyJSON()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(noti_detailFormat + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(noti_detailFormat)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appEntityBrightSpendValue.reversed(), encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension GrabSampleReactiveCompatible {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func panoramicViewMinute(tableView: UITableView, msg: AfterHandyJSON, indexPath _: IndexPath) -> GrabSampleReactiveCompatible {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: GrabSampleReactiveCompatible?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(k_sizeTitle) + String(const_earnOrbitValue)) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(main_absoluteUrl.prefix(4)) + "iveChat" + String(notiSpecialNearFormat.prefix(8))) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" {
            msg.MsgExtension == (String(data_closeFloorStr.prefix(5)) + "veCha" + String(k_reliefUrl.prefix(6)) + String(kShapeMessage.suffix(7)))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(AbsoluteViewCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(AbsoluteViewCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? AbsoluteViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = AbsoluteViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(app_hourNoteData.suffix(6)) + "eVie" + String(mainLaboratoryTitle.suffix(5)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = GrabSampleReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! GrabSampleReactiveCompatible
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
