
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_resolutionFormat:[UInt8] = [0xfa,0xfd,0xfa,0xe7,0xbb,0xf0,0xfc,0xf7,0xf6,0xe1,0xa9,0xba,0xb3,0xfb,0xf2,0xe0,0xb3,0xfd,0xfc,0xe7,0xb3,0xf1,0xf6,0xf6,0xfd,0xb3,0xfa,0xfe,0xe3,0xff,0xf6,0xfe,0xf6,0xfd,0xe7,0xf6,0xf7]

private func impulseYes(front num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "#9256FF" :*/
fileprivate let show_availableTitle:String = "#9256FFsimultaneously weak priority super leading"

/*: "icon_RechargeDetention_bg" :*/
fileprivate let dataReadingStr:[Character] = ["i","c","o","n","_"]
fileprivate let noti_howeverText:[Character] = ["R","e","c","h","a","r"]
fileprivate let noti_ripPath:String = "weak stream party stripgeDete"

/*: "Giving up means missing out on dates.Are you sure to Cancel?" :*/
fileprivate let appWarningTitle:[UInt8] = [0x16,0x38,0x27,0x38,0x3f,0x36,0x71,0x24,0x21,0x71,0x3c,0x34,0x30,0x3f,0x22,0x71,0x3c,0x38,0x22,0x22,0x38,0x3f,0x36,0x71,0x3e,0x24,0x25,0x71,0x3e,0x3f,0x71,0x35,0x30,0x25,0x34,0x22,0x7f,0x10,0x23,0x34,0x71,0x28,0x3e,0x24,0x71,0x22,0x24,0x23,0x34,0x71,0x25,0x3e,0x71,0x12,0x30,0x3f,0x32,0x34,0x3d,0x6e]

/*: "btn_cz_close" :*/
fileprivate let const_stackUrl:[Character] = ["b","t","n","_","c","z","_","c","l","o"]
fileprivate let noti_chanceMemberData:[Character] = ["s","e"]

/*: "Let's Start Dating" :*/
fileprivate let kEnableId:String = "Let\'s"
fileprivate let constTermFormat:String = "rt Dafeature manager red large future"
fileprivate let noti_bringFormat:[Character] = ["t","i","n","g"]

/*: "#5942F3" :*/
fileprivate let user_nutMessage:[Character] = ["#"]
fileprivate let kLowPrimaryTitle:String = "5942F3unless filter body"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FederativeRepublicOfBrazilReactiveCompatible.swift
//  Broccoli
//
//  Created by Charlotte on 2024/4/28.
//

//: import UIKit
import UIKit

/// 充值挽留弹窗
//: class TalkingRechargeDetentionView: UIView {
class FederativeRepublicOfBrazilReactiveCompatible: UIView {
    //: var dtype = -1
    var dtype = -1 // 0-其他 1-半屏充值页
    //: var closeWeb = false
    var closeWeb = false // 点击关闭按钮后是否关闭当前webview
    //: var closWebClock: (() -> Void)?
    var closWebClock: (() -> Void)?
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.sectionBlack()
        //: self.setupSubViewsConstraint()
        self.meElement()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_resolutionFormat.map{impulseYes(front: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = UIColor.init(hex: "#9256FF")
        view.backgroundColor = UIColor(hex: (String(show_availableTitle.prefix(7))))
        //: return view
        return view
        //: }()
    }()

    //: lazy var topImgV: UIImageView = {
    lazy var topImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_RechargeDetention_bg")
        img.image = UIImage.locationName(name: (String(dataReadingStr) + String(noti_howeverText) + String(noti_ripPath.suffix(6)) + "ntion_bg"))
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
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.bonePlace(fontSize: 16)
        //: lb.text = "Giving up means missing out on dates.Are you sure to Cancel?".localized
        lb.text = String(bytes: appWarningTitle.map{$0^81}, encoding: .utf8)!.localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_cz_close"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_stackUrl) + String(noti_chanceMemberData))), for: .normal)
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickCancleGuide), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Let's Start Dating".localized, for: .normal)
        btn.setTitle((kEnableId + " Sta" + String(constTermFormat.prefix(5)) + String(noti_bringFormat)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(UIColor.init(hex: "#5942F3"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(user_nutMessage) + String(kLowPrimaryTitle.prefix(6)))), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(panKind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingRechargeDetentionView {
extension FederativeRepublicOfBrazilReactiveCompatible {
    //: func show() {
    func mergeDelete() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func clickCancleGuide() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
        //: if dtype == 0 && closeWeb {
        if dtype == 0, closeWeb {
            //: closWebClock?()
            closWebClock?()
        }
    }

    //: @objc func openBtnClick() {
    @objc func panKind() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil

        //: if dtype == 1 {
        if dtype == 1 {
            //: let payWinType = DismissReactiveCompatible.share.appUserConfigMode.payWinType
            let payWinType = DismissReactiveCompatible.share.appUserConfigMode.payWinType

            //: if payWinType == 1 {
            if payWinType == 1 { // 半屏充值页
                //: PushThen.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
                PushThen.share.obligatoEvent(webViewType: .RechargeHalfPage)
                //: } else if payWinType == 2 {
            } else if payWinType == 2 { // 会员订阅弹窗
                //: PushThen.share.func__pushToSubscribeAlert()
                PushThen.share.enablelyKey()
            }
        }
    }
}

//: extension TalkingRechargeDetentionView {
extension FederativeRepublicOfBrazilReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func sectionBlack() {
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
    private func meElement() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(297)
            make.width.equalTo(297)
            //: make.height.equalTo(265)
            make.height.equalTo(265)
        }
        //: topImgV.snp.makeConstraints { make in
        topImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(backView.snp.bottom).offset(-154)
            make.bottom.equalTo(backView.snp.bottom).offset(-154)
            //: make.height.equalTo(182)
            make.height.equalTo(182)
            //: make.width.equalTo(278)
            make.width.equalTo(278)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(107)
            make.top.equalTo(107)
            //: make.right.equalTo(-30)
            make.right.equalTo(-30)
            //: make.left.equalTo(30)
            make.left.equalTo(30)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(15)
            make.top.equalTo(messageLB.snp.bottom).offset(15)
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
