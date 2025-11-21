
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_injuryStr:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func polePrepare(hood num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "Allow push notifications" :*/
fileprivate let dataFlexibleBarrierName:[Character] = ["A","l","l","o","w"," ","p"]
fileprivate let showAnnouncementValue:String = "ush modify currency band ready ask"
fileprivate let notiYesterdayPath:String = "cationjaw"

/*: "You don't miss out on chat messages when someone wants to chat with you." :*/
fileprivate let k_arrangementId:[UInt8] = [0x3c,0xa,0x10,0x45,0x1,0xa,0xb,0x42,0x11,0x45,0x8,0xc,0x16,0x16,0x45,0xa,0x10,0x11,0x45,0xa,0xb,0x45,0x6,0xd,0x4,0x11,0x45,0x8,0x0,0x16,0x16,0x4,0x2,0x0,0x16,0x45,0x12,0xd,0x0,0xb,0x45,0x16,0xa,0x8,0x0,0xa,0xb,0x0,0x45,0x12,0x4,0xb,0x11,0x16,0x45,0x11,0xa,0x45,0x6,0xd,0x4,0x11,0x45,0x12,0xc,0x11,0xd,0x45,0x1c,0xa,0x10,0x4b]

private func mpTurn(close num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "Open" :*/
fileprivate let noti_afterUrl:String = "trail above outsideOpen"

/*: "icon_chats_subtract" :*/
fileprivate let app_oppositeValue:String = "dit progressicon_"
fileprivate let mainClothesPath:String = "btpathct"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransferThen.swift
//  SlideAzureController
//
//  Created by Hemming on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingNoticeTipView: UIView {
class TransferThen: UIView {
    //: public var viewHeight: CGFloat = 0
    public var viewHeight: CGFloat = 0

    //: public var closeBtnBlock: (() -> Void)?
    public var closeBtnBlock: (() -> Void)?

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_injuryStr.map{polePrepare(hood: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        err()
        //: setupSubViewsConstraint()
        restraint()
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Allow push notifications".localized
        lab.text = (String(dataFlexibleBarrierName) + String(showAnnouncementValue.prefix(4)) + "notifi" + notiYesterdayPath.replacingOccurrences(of: "jaw", with: "s")).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.pingfang(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleValueLab: UILabel = {
    private lazy var titleValueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You don't miss out on chat messages when someone wants to chat with you.".localized
        lab.text = String(bytes: k_arrangementId.map{mpTurn(close: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .ownLight()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 13)
        lab.font = UIFont.bonePlace(fontSize: 13)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(noti_afterUrl.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.openColor(color: UIColor.attractiveIn(), forState: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(shirtButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(app_oppositeValue.suffix(5)) + "chats_su" + mainClothesPath.replacingOccurrences(of: "path", with: "ra"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(recapture), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: @objc func openBtnClick() {
    @objc func shirtButton() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
    }

    //: @objc func closeBtnClick() {
    @objc func recapture() {
        //: self.closeBtnBlock?()
        self.closeBtnBlock?()
    }
}

//: extension TalkingNoticeTipView {
extension TransferThen {
    /// 创建视图
    //: private func setupSubviews() {
    private func err() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(titleValueLab)
        addSubview(titleValueLab)
        //: addSubview(openBtn)
        addSubview(openBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)

        //: viewHeight = titleValueLab.sizeThatFits(CGSize(width: ScreenWidth-110, height: CGFLOAT_MAX)).height + 66
        viewHeight = titleValueLab.sizeThatFits(CGSize(width: main_logStr - 110, height: CGFLOAT_MAX)).height + 66
        //: self.frame = CGRect(x: 0, y: StatusBarHeight, width: ScreenWidth, height: viewHeight)
        self.frame = CGRect(x: 0, y: dataPointTitle, width: main_logStr, height: viewHeight)
    }

    //: private func setupSubViewsConstraint() {
    private func restraint() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.top.trailing.bottom.equalToSuperview().inset(10)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
        }
        //: titleValueLab.snp.makeConstraints { make in
        titleValueLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
