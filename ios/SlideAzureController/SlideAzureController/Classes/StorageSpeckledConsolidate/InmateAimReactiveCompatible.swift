
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_handleSickMsg:[UInt8] = [0xb4,0xb3,0xb4,0xa9,0xf5,0xbe,0xb2,0xb9,0xb8,0xaf,0xe7,0xf4,0xfd,0xb5,0xbc,0xae,0xfd,0xb3,0xb2,0xa9,0xfd,0xbf,0xb8,0xb8,0xb3,0xfd,0xb4,0xb0,0xad,0xb1,0xb8,0xb0,0xb8,0xb3,0xa9,0xb8,0xb9]

private func anotherTotal(exist num: UInt8) -> UInt8 {
    return num ^ 221
}

/*: "#9256FF" :*/
fileprivate let show_shallFormat:String = "#warn56"
fileprivate let notiBusyDonPath:[Character] = ["F","F"]

/*: "bg_balance" :*/
fileprivate let userAidName:[Character] = ["b","g","_","b","a"]
fileprivate let app_supposedMsg:String = "lanccycle"

/*: "Girls are eagerly waiting for your replay. Recharge now and Enjoy happy time with her." :*/
fileprivate let user_boldPath:[UInt8] = [0x37,0x19,0x2,0x1c,0x3,0x50,0x11,0x2,0x15,0x50,0x15,0x11,0x17,0x15,0x2,0x1c,0x9,0x50,0x7,0x11,0x19,0x4,0x19,0x1e,0x17,0x50,0x16,0x1f,0x2,0x50,0x9,0x1f,0x5,0x2,0x50,0x2,0x15,0x0,0x1c,0x11,0x9,0x5e,0x50,0x22,0x15,0x13,0x18,0x11,0x2,0x17,0x15,0x50,0x1e,0x1f,0x7,0x50,0x11,0x1e,0x14,0x50,0x35,0x1e,0x1a,0x1f,0x9,0x50,0x18,0x11,0x0,0x0,0x9,0x50,0x4,0x19,0x1d,0x15,0x50,0x7,0x19,0x4,0x18,0x50,0x18,0x15,0x2,0x5e]

private func operateHair(request num: UInt8) -> UInt8 {
    return num ^ 112
}

/*: "btn_cz_close" :*/
fileprivate let userStripMessage:String = "route art clipbtn_"

/*: "Top up" :*/
fileprivate let notiSkirtText:[Character] = ["T","o","p"," ","u","p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InmateAimReactiveCompatible.swift
//  Broccoli
//
//  Created by Charlotte on 2024/4/28.
//

//: import UIKit
import UIKit

/// 余额不足提示弹窗
//: class TalkingInsufficientBalanceView: UIView {
class InmateAimReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?
    //: var openBtnClock: (() -> Void)?
    var openBtnClock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.alongThink()
        //: self.setupSubViewsConstraint()
        self.transmissionChannelRating()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_handleSickMsg.map{anotherTotal(exist: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.borderWidth = 8
        view.layer.borderWidth = 8
        //: view.layer.borderColor = UIColor.init(hex: "#9256FF")?.cgColor
        view.layer.borderColor = UIColor(hex: (show_shallFormat.replacingOccurrences(of: "warn", with: "92") + String(notiBusyDonPath)))?.cgColor
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var topImgV: UIImageView = {
    lazy var topImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "bg_balance")
        img.image = UIImage.locationName(name: (String(userAidName) + app_supposedMsg.replacingOccurrences(of: "cycle", with: "e")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: return img
        return img
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appValueColor()
        lb.textColor = UIColor.ownLight()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.bonePlace(fontSize: 16)
        //: lb.text = "Girls are eagerly waiting for your replay. Recharge now and Enjoy happy time with her.".localized
        lb.text = String(bytes: user_boldPath.map{operateHair(request: $0)}, encoding: .utf8)!.localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_cz_close"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userStripMessage.suffix(4)) + "cz_close")), for: .normal)
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(transformPer), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Top up".localized, for: .normal)
        btn.setTitle((String(notiSkirtText)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.backgroundColor = UIColor.init(hex: "#9256FF")
        btn.backgroundColor = UIColor(hex: (show_shallFormat.replacingOccurrences(of: "warn", with: "92") + String(notiBusyDonPath)))
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(thresholdEnableClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingInsufficientBalanceView {
extension InmateAimReactiveCompatible {
    //: func show() {
    func favourite() {
        //: var ishave = 0
        var ishave = 0
        //: for view in DepictionThen.getWindow().subviews {
        for view in DepictionThen.fossilization().subviews {
            //: if view.tag ==  1000 {
            if view.tag == 1000 {
                //: ishave = 1
                ishave = 1
            }
        }
        //: if ishave == 1 {
        if ishave == 1 {
            //: return
            return
        }
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: popView?.tag = 1000
        popView?.tag = 1000
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func transformPer() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func thresholdEnableClick() {
        //: openBtnClock?()
        openBtnClock?()
        //: cancleBtnClick()
        transformPer()
    }
}

//: extension TalkingInsufficientBalanceView {
extension InmateAimReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func alongThink() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: self.addSubview(topImgV)
        self.addSubview(topImgV)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: self.addSubview(cancleBtn)
        self.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func transmissionChannelRating() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(297)
            make.width.equalTo(297)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }
        //: topImgV.snp.makeConstraints { make in
        topImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(backView.snp.bottom).offset(-95)
            make.bottom.equalTo(backView.snp.bottom).offset(-95)
            //: make.height.equalTo(195)
            make.height.equalTo(195)
            //: make.width.equalTo(315)
            make.width.equalTo(315)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.left.top.equalTo(30)
            make.left.top.equalTo(30)
            //: make.right.equalTo(-63)
            make.right.equalTo(-63)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(14)
            make.top.equalTo(messageLB.snp.bottom).offset(14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 203, height: 50))
            make.size.equalTo(CGSize(width: 203, height: 50))
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backView.snp.bottom).offset(30)
            make.top.equalTo(backView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
