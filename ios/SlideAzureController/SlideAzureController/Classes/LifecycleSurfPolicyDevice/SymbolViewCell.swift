
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_suitLipMsg:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

private func topicLife(think num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "#EDEDED" :*/
fileprivate let notiBlowFormat:[Character] = ["#","E","D","E","D","E"]
fileprivate let showBirthdayUrl:String = "more"

/*: "Click for details" :*/
fileprivate let user_uniformKey:String = "equally refer log proposal situationClic"
fileprivate let main_hugePath:String = "r deburn try"
fileprivate let appLowMessage:[Character] = ["t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let k_performMessage:[Character] = ["#","1","2","8","C","F","F"]

/*: "system_notif_click_go" :*/
fileprivate let notiCustomEliteHiddenMsg:String = "SYSTEM"
fileprivate let user_recentMsg:String = "_cliservice word motivation"

/*: "img" :*/
fileprivate let userTimingPath:String = "extendg"

/*: "jumpKey" :*/
fileprivate let kAlreadyName:String = "outlet calculation beatjumpKey"

/*: "url" :*/
fileprivate let show_financialFormat:String = "uradministrative"

/*: "mfChat" :*/
fileprivate let show_creationUrl:[UInt8] = [0x74,0x61,0x68,0x43,0x66,0x6d]

/*: "jumpUid" :*/
fileprivate let noti_middleId:[Character] = ["j","u","m","p","U","i","d"]

/*: "mfChatGift" :*/
fileprivate let noti_flatSuitData:[UInt8] = [0x4b,0x40,0x65,0x4e,0x47,0x52,0x61,0x4f,0x40,0x52]

/*: "user" :*/
fileprivate let notiMessageId:[UInt8] = [0x3a,0x3c,0x2a,0x3d]

private func foretellIce(inmate num: UInt8) -> UInt8 {
    return num ^ 79
}

/*: "outerUrl" :*/
fileprivate let app_topicKey:[UInt8] = [0xa2,0xb8,0xb9,0xa8,0xbf,0x98,0xbf,0xa1]

private func themeTill(curve num: UInt8) -> UInt8 {
    return num ^ 205
}

/*: "系统通知跳转失败：不支持  :*/
fileprivate let show_additionalPath:String = "\u{7cfb}统通知跳转"
fileprivate let user_trailValue:[Character] = [" "]

/*:  跳转类型。" :*/
fileprivate let noti_failureHealthyExitStr:String = " 跳转类row。"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SymbolViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class SymbolViewCell: ResidentReactiveCompatible {
    //: var textData: TalkingChatSystemNotifJumpMsgCellData?
    var textData: ContainerReactiveCompatible?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        layGuide()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_suitLipMsg.map{topicLife(think: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonMigrationDigitizerDoingRecoil), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(notiBlowFormat) + showBirthdayUrl.replacingOccurrences(of: "more", with: "D")))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(user_uniformKey.suffix(4)) + "k fo" + String(main_hugePath.prefix(4)) + String(appLowMessage)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (String(k_performMessage)))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lab.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "system_notif_click_go")
        imgV.image = UIImage.locationName(name: (notiCustomEliteHiddenMsg.lowercased() + "_notif" + String(user_recentMsg.prefix(4)) + "ck_go"))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SymbolViewCell {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func namePost(with data: AccumulationReactiveCompatible) {
        //: super.fill(with: data)
        super.namePost(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? TalkingChatSystemNotifJumpMsgCellData
        textData = data as? ContainerReactiveCompatible
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.bolt(urlStr: textData.extraJson[(userTimingPath.replacingOccurrences(of: "extend", with: "im"))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.rogueStateForRadii(width: textData.bannerSize.width,
                                          //: height: textData.bannerSize.height,
                                          height: textData.bannerSize.height,
                                          //: corners: [ .topRight],
                                          corners: [.topRight],
                                          //: cornerRadii: CGSize(width: 12, height: 12))
                                          cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func buttonMigrationDigitizerDoingRecoil() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(kAlreadyName.suffix(7)))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (show_financialFormat.replacingOccurrences(of: "administrative", with: "l")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(show_financialFormat.replacingOccurrences(of: "administrative", with: "l"))].stringValue
            //: PushThen.share.func__pushToWebVC(urlStr: url)
            PushThen.share.plumeBright(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: show_creationUrl.reversed(), encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(noti_middleId))].stringValue
            //: PushThen.share.func__pushToPriveteChatVC(chatID: jumpUid)
            PushThen.share.resolutionBegin(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: noti_flatSuitData.map{$0^38}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(noti_middleId))].stringValue
            //: PushThen.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            PushThen.share.resolutionBegin(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.fileRouteBtn()
            }
        //: case "user": // 用户详情
        case String(bytes: notiMessageId.map{foretellIce(inmate: $0)}, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(noti_middleId))].stringValue
            //: PushThen.share.func__pushToUserDetailVC(uid: jumpUid)
            PushThen.share.sessionSomebody(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: app_topicKey.map{themeTill(curve: $0)}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(show_financialFormat.replacingOccurrences(of: "administrative", with: "l"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (show_additionalPath + "失败：不\u{652f}持" + String(user_trailValue)) + "\(jumpKey)" + (noti_failureHealthyExitStr.replacingOccurrences(of: "row", with: "型")))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SymbolViewCell {
    /// 初始化视图
    //: private func setupSubviews() {
    private func layGuide() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
