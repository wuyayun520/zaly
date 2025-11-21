
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kSkirtTitle:[UInt8] = [0x54,0x53,0x54,0x49,0x15,0x5e,0x52,0x59,0x58,0x4f,0x7,0x14,0x1d,0x55,0x5c,0x4e,0x1d,0x53,0x52,0x49,0x1d,0x5f,0x58,0x58,0x53,0x1d,0x54,0x50,0x4d,0x51,0x58,0x50,0x58,0x53,0x49,0x58,0x59]

private func angleMaximum(enter num: UInt8) -> UInt8 {
    return num ^ 61
}

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let kAnimalFitMsg:String = "half care enter domestic bounceicon_"
fileprivate let data_greenKey:String = "entersubs"
fileprivate let k_refSkiTriggerUrl:String = "bacfore"

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let mainFloorStr:String = "icorepresentative"
fileprivate let show_trustDisplayMessage:String = "dark statement persone_vips"
fileprivate let noti_hangMsg:String = "ibe_back basic"
fileprivate let kExpressTitle:String = "TOPBACK"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let noti_invisibleKey:[UInt8] = [0x29,0x16,0x3,0x8,0x46,0x30,0x2f,0x36,0x6c,0x12,0x9,0x46,0x1,0xf,0x10,0x3,0x46,0x23,0x1e,0x5,0xa,0x13,0x15,0xf,0x10,0x3,0x46,0x1,0xf,0x0,0x12,0x15]

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let noti_fatherStr:[UInt8] = [0x3c,0x5e,0x6b,0x5e,0x63,0x5c,0x15,0x56,0x63,0x15,0x3a,0x6d,0x58,0x61,0x6a,0x68,0x5e,0x6b,0x5a,0x15,0x5c,0x5e,0x5b,0x69,0x15,0x6c,0x5e,0x61,0x61,0x15,0x56,0x65,0x65,0x5a,0x56,0x61,0x15,0x69,0x64,0x15,0x5d,0x5a,0x67]

fileprivate func genderTradeDit(can num: UInt8) -> UInt8 {
    let value = Int(num) + 11
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Subscribe" :*/
fileprivate let main_uponValue:String = "follow ref prepare script drownSubscrib"
fileprivate let k_freezeId:String = "E"

/*: "Cancel" :*/
fileprivate let showBuildPath:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisenableThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class DisenableThen: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.minimum()
        //: self.setupSubViewsConstraint()
        self.search()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kSkirtTitle.map{angleMaximum(enter: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.locationName(name: (String(kAnimalFitMsg.suffix(5)) + "live_v" + data_greenKey.replacingOccurrences(of: "enter", with: "ip") + "cribe_" + k_refSkiTriggerUrl.replacingOccurrences(of: "fore", with: "k")))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.locationName(name: (mainFloorStr.replacingOccurrences(of: "representative", with: "n") + "_liv" + String(show_trustDisplayMessage.suffix(6)) + "ubscr" + String(noti_hangMsg.prefix(4)) + kExpressTitle.lowercased()))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: noti_invisibleKey.map{$0^102}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: noti_fatherStr.map{genderTradeDit(can: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(main_uponValue.suffix(8)) + k_freezeId.lowercased()).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(anyExample), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(showBuildPath)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.saveInColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appValueDetailColor().cgColor
        btn.layer.borderColor = UIColor.saveInColor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(offness), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension DisenableThen {
    //: @objc func finishBtnClick() {
    @objc func anyExample() {
        //: dismiss()
        thumb()
        //: PushThen.share.func__pushToSubscribePageWebVC()
        PushThen.share.forceBack()
    }

    //: @objc func closeBtnClick() {
    @objc func offness() {
        //: dismiss()
        thumb()
    }

    //: func show() {
    func animaShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func thumb() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension DisenableThen {
    // 添加视图
    //: private func setupSubviews() {
    private func minimum() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func search() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
