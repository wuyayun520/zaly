
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainSinceMessage:[UInt8] = [0x39,0x3e,0x39,0x24,0x78,0x33,0x3f,0x34,0x35,0x22,0x6a,0x79,0x70,0x38,0x31,0x23,0x70,0x3e,0x3f,0x24,0x70,0x32,0x35,0x35,0x3e,0x70,0x39,0x3d,0x20,0x3c,0x35,0x3d,0x35,0x3e,0x24,0x35,0x34]

private func milkSickHeart(network num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "icon_livetc_warn" :*/
fileprivate let constCurrencyStr:[Character] = ["i","c","o","n","_"]
fileprivate let kDefinePath:[Character] = ["l","i","v","e","t","c","_","w","a","r","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WritingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/11/20.
//

//: import UIKit
import UIKit

//: class TalkingFemaleNoBodyAlertView: UIView {
class WritingReactiveCompatible: UIView {
    //: private var popView: TalkingPopView?
    private var popView: TransferPopView?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        somewhere()
        //: setupSubViewsConstraint()
        dayConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainSinceMessage.map{milkSickHeart(network: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        iamg.image = UIImage.locationName(name: (String(constCurrencyStr) + String(kDefinePath)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = DismissReactiveCompatible.share.appUserConfigMode.blockCameraPopupContent
        lab.text = DismissReactiveCompatible.share.appUserConfigMode.blockCameraPopupContent
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mist), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFemaleNoBodyAlertView {
extension WritingReactiveCompatible {
    //: func show() {
    func fromJudgeShow() {
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
    @objc func untilMention() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc private func rightButtonClick() {
    @objc private func mist() {
        //: dismiss()
        untilMention()
    }
}

// MARK: - Layout

//: extension TalkingFemaleNoBodyAlertView {
extension WritingReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func somewhere() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dayConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.greaterThanOrEqualTo(actualWidth(w: 255))
            make.height.greaterThanOrEqualTo(actualWidth(w: 255))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.width.height.equalTo(actualWidth(w: 93))
            make.width.height.equalTo(actualWidth(w: 93))
        }

        //: contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(20)
            make.top.equalTo(topIcon.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(20)
            make.top.equalTo(contentLab.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
    }
}
