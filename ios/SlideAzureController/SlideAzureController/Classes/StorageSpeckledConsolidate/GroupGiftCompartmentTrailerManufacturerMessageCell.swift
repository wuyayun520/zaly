
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_motivationLevelText:[UInt8] = [0x44,0x43,0x44,0x59,0x5,0x4e,0x42,0x49,0x48,0x5f,0x17,0x4,0xd,0x45,0x4c,0x5e,0xd,0x43,0x42,0x59,0xd,0x4f,0x48,0x48,0x43,0xd,0x44,0x40,0x5d,0x41,0x48,0x40,0x48,0x43,0x59,0x48,0x49]

/*: "all" :*/
fileprivate let noti_rateText:String = "aamam"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupGiftCompartmentTrailerManufacturerMessageCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/7.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatGiftMsgCell: TalkingChatBaseMsgCell {
class GroupGiftCompartmentTrailerManufacturerMessageCell: ResidentReactiveCompatible {
    //: var giftData: TalkingGroupChatGiftMsgCellData?
    var giftData: InsertCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(toUserImgView)
        self.bubbleImgView.addSubview(toUserImgView)
        //: self.contentView.addSubview(giftImgView)
        self.contentView.addSubview(giftImgView)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_motivationLevelText.map{$0^45}, encoding: .utf8)!)
    }

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

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dialog()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.bonePlace(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: private lazy var giftImgView: UIImageView = {
    private lazy var giftImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFit
        imgV.contentMode = .scaleAspectFit
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var toUserImgView: UIImageView = {
    private lazy var toUserImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.layer.cornerRadius = 5
        imgV.layer.cornerRadius = 5
        //: imgV.clipsToBounds = true
        imgV.clipsToBounds = true
        //: return imgV
        return imgV
        //: }()
    }()
}

//: extension TalkingGroupChatGiftMsgCell {
extension GroupGiftCompartmentTrailerManufacturerMessageCell {
    //: override func fill(with data: TCommonCellData) {
    override func namePost(with data: AccumulationReactiveCompatible) {
        //: super.fill(with: data)
        super.namePost(with: data)
        //: self.giftData = data as? TalkingGroupChatGiftMsgCellData
        self.giftData = data as? InsertCellData
        //: guard let giftData = giftData else { return }
        guard let giftData = giftData else { return }
        //: let gift = giftData.msgModel.gift
        let gift = giftData.msgModel.gift
        //: let imgPreview = gift.imgPreview
        let imgPreview = gift.imgPreview
        //: self.giftImgView.setUrlImage(urlStr: imgPreview)
        self.giftImgView.bolt(urlStr: imgPreview)
        //: self.giftContentLab.attributedText = giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: if giftData.msgModel.toUser.uid == "all" { // 送礼所有人
        if giftData.msgModel.toUser.uid == (noti_rateText.replacingOccurrences(of: "am", with: "l")) { // 送礼所有人
            //: self.toUserImgView.image = UIImage.BundleImageNamed(name: giftData.msgModel.toUser.headPic)
            self.toUserImgView.image = UIImage.locationName(name: giftData.msgModel.toUser.headPic)
            //: } else {
        } else {
            //: self.toUserImgView.setUrlImage(urlStr: giftData.msgModel.toUser.headPic)
            self.toUserImgView.bolt(urlStr: giftData.msgModel.toUser.headPic)
        }
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = giftData else { return }
        guard let giftData = giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.toUserImgView.snp.remakeConstraints { make in
        self.toUserImgView.snp.remakeConstraints { make in
            //: make.leading.equalTo(self.giftContentLab.snp.trailing).offset(5)
            make.leading.equalTo(self.giftContentLab.snp.trailing).offset(5)
            //: make.top.equalTo(giftContentLab)
            make.top.equalTo(giftContentLab)
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }

        //: if self.messageData?.direction == .MsgDirectionIncoming {
        if self.messageData?.direction == .MsgDirectionIncoming {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.container.snp.trailing).offset(6)
                make.leading.equalTo(self.container.snp.trailing).offset(6)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }

            //: } else {
        } else {
            //: self.giftImgView.snp.remakeConstraints { make in
            self.giftImgView.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.container).offset(-46)
                make.leading.equalTo(self.container).offset(-46)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }
        }
    }
}
