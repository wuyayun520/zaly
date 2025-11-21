
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataMiniText:[UInt8] = [0x81,0x86,0x81,0x8c,0x40,0x7b,0x87,0x7c,0x7d,0x8a,0x52,0x41,0x38,0x80,0x79,0x8b,0x38,0x86,0x87,0x8c,0x38,0x7a,0x7d,0x7d,0x86,0x38,0x81,0x85,0x88,0x84,0x7d,0x85,0x7d,0x86,0x8c,0x7d,0x7c]

fileprivate func blindSize(living num: UInt8) -> UInt8 {
    let value = Int(num) - 24
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_bg_lx_kefu" :*/
fileprivate let show_genderStr:String = "icon_bdit shared blue script"
fileprivate let appMaterialId:String = "them bottom process topic near_kefu"

/*: "Having a problem?" :*/
fileprivate let notiRunData:String = "Haviby middle prompt ask"
fileprivate let data_sameName:String = "romml"
fileprivate let main_decisionText:[Character] = ["e","m","?"]

/*: "Contact our customer service team  to assist you~" :*/
fileprivate let dataNapBitPath:[UInt8] = [0x7e,0x75,0x6f,0x79,0x20,0x74,0x73,0x69,0x73,0x73,0x61,0x20,0x6f,0x74,0x20,0x20,0x6d,0x61,0x65,0x74,0x20,0x65,0x63,0x69,0x76,0x72,0x65,0x73,0x20,0x72,0x65,0x6d,0x6f,0x74,0x73,0x75,0x63,0x20,0x72,0x75,0x6f,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x43]

/*: "btn_cz_close" :*/
fileprivate let main_weData:String = "btn_ceven beyond"
fileprivate let k_justiceKey:[Character] = ["z","_","c","l","o","s","e"]

/*: "Customer Service" :*/
fileprivate let showGivenName:[Character] = ["C","u","s","t","o","m","e","r"," ","S","e","r","v","i"]
fileprivate let notiPropertyFormat:[Character] = ["c","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TriggerView.swift
//  Broccoli
//
//  Created by Charlotte on 2024/4/28.
//

//: import UIKit
import UIKit

/// 联系客服弹窗
//: class TalkingContactServiceView: UIView {
class TriggerView: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.mechanicalSystemSubviews()
        //: self.setupSubViewsConstraint()
        self.returningSwitchicer()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataMiniText.map{blindSize(living: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
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
        //: img.image = UIImage.BundleImageNamed(name: "icon_bg_lx_kefu")
        img.image = UIImage.locationName(name: (String(show_genderStr.prefix(6)) + "g_lx" + String(appMaterialId.suffix(5))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 18)
        lb.font = UIFont.pingfang(fontSize: 18)
        //: lb.text = "Having a problem?".localized
        lb.text = (String(notiRunData.prefix(4)) + "ng a p" + data_sameName.replacingOccurrences(of: "mm", with: "b") + String(main_decisionText)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 16)
        lb.font = UIFont.bonePlace(fontSize: 16)
        //: lb.text = "Contact our customer service team  to assist you~".localized
        lb.text = String(bytes: dataNapBitPath.reversed(), encoding: .utf8)!.localized
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
        btn.setImage(UIImage.locationName(name: (String(main_weData.prefix(5)) + String(k_justiceKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cancle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Customer Service".localized, for: .normal)
        btn.setTitle((String(showGivenName) + String(notiPropertyFormat)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(engineeringScience), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingContactServiceView {
extension TriggerView {
    //: func show() {
    func propertyShow() {
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
    @objc func cancle() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func engineeringScience() {
        //: let vc = TalkingPrivateChatController(chatID: DepictionThen.getCustomerServiceID())
        let vc = SmallControllerDelegate(chatID: DepictionThen.noteFamily())
        //: vc.navView.backButton.isHidden = true
        vc.navView.backButton.isHidden = true
        //: self.currentViewController()?.present(vc, animated: true)
        self.exitSchedule()?.present(vc, animated: true)
        //: cancleBtnClick()
        cancle()
    }
}

//: extension TalkingContactServiceView {
extension TriggerView {
    // 添加视图
    //: private func setupSubviews() {
    private func mechanicalSystemSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(topImgV)
        backView.addSubview(topImgV)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: self.addSubview(cancleBtn)
        self.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func returningSwitchicer() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(297)
            make.width.equalTo(297)
            //: make.height.equalTo(320)
            make.height.equalTo(320)
        }
        //: topImgV.snp.makeConstraints { make in
        topImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.size.equalTo(119)
            make.size.equalTo(119)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.top.equalTo(topImgV.snp.bottom).offset(11)
            make.top.equalTo(topImgV.snp.bottom).offset(11)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(10)
            make.top.equalTo(titleLB.snp.bottom).offset(10)
            //: make.left.equalTo(21)
            make.left.equalTo(21)
            //: make.right.equalTo(-21)
            make.right.equalTo(-21)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(21)
            make.top.equalTo(messageLB.snp.bottom).offset(21)
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
