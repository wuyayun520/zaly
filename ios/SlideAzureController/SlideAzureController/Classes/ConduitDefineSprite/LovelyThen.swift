
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_separatePath:[UInt8] = [0xf,0x8,0xf,0x12,0x4e,0x5,0x9,0x2,0x3,0x14,0x5c,0x4f,0x46,0xe,0x7,0x15,0x46,0x8,0x9,0x12,0x46,0x4,0x3,0x3,0x8,0x46,0xf,0xb,0x16,0xa,0x3,0xb,0x3,0x8,0x12,0x3,0x2]

private func directBlind(allow num: UInt8) -> UInt8 {
    return num ^ 102
}

/*: "rating_guide_bg" :*/
fileprivate let constSoonStr:String = "ralibrary"
fileprivate let user_responseKey:String = "house north universalde_bg"

/*: "#FF0084" :*/
fileprivate let app_yourselfLovelyTriggerUrl:[Character] = ["#","F","F","0","0","8","4"]

/*: "points" :*/
fileprivate let const_averageData:[UInt8] = [0xd4,0xcb,0xcd,0xca,0xd0,0xd7]

private func sectionForwardSome(special num: UInt8) -> UInt8 {
    return num ^ 164
}

/*: "coins" :*/
fileprivate let userDestroyBanLaboratoryPath:String = "concentrationoins"

/*: "Get  :*/
fileprivate let const_factStr:[Character] = ["G","e","t"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LovelyThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: class AppStoreRatingGuideView: UIView {
class LovelyThen: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: TransferPopView?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: setupSubviews()
        refuseCancel()
        //: setupSubViewsConstraint()
        constraintAsk()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_separatePath.map{directBlind(allow: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "rating_guide_bg")
        v.image = UIImage.locationName(name: (constSoonStr.replacingOccurrences(of: "library", with: "ti") + "ng_gui" + String(user_responseKey.suffix(5))))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var rewardLab: UILabel = {
    private lazy var rewardLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor(hex: "#FF0084")!
        label.textColor = UIColor(hex: (String(app_yourselfLovelyTriggerUrl)))!
        //: label.font = UIFont.pingfangFont(type: .Medium, fontSize: 22)
        label.font = UIFont.bigGallery(type: .Medium, fontSize: 22)
        //: let text = DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue ? "points":"coins"
        let text = DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue ? String(bytes: const_averageData.map{sectionForwardSome(special: $0)}, encoding: .utf8)! : (userDestroyBanLaboratoryPath.replacingOccurrences(of: "concentration", with: "c"))
        //: label.text = "Get \(DismissReactiveCompatible.share.appUserConfigMode.ratingReward) \(text)!"
        label.text = (String(const_factStr)) + "\(DismissReactiveCompatible.share.appUserConfigMode.ratingReward) \(text)!"
        //: return label
        return label
        //: }()
    }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(cancelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enableerDisappear), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goBtn: UIButton = {
    private lazy var goBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(goButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appealingness), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension AppStoreRatingGuideView {
extension LovelyThen {
    //: func show() {
    func neck() {
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
    @objc func primary() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc private func cancelButtonClick() {
    @objc private func enableerDisappear() {
        //: dismiss()
        primary()
    }

    //: @objc private func goButtonClick() {
    @objc private func appealingness() {
        //: dismiss()
        primary()
        //: rightBlcok?()
        rightBlcok?()
    }
}

// MARK: - Layout

//: extension AppStoreRatingGuideView {
extension LovelyThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func refuseCancel() {
        //: self.addSubview(bgImgView)
        self.addSubview(bgImgView)
        //: bgImgView.addSubview(rewardLab)
        bgImgView.addSubview(rewardLab)
        //: bgImgView.addSubview(cancelBtn)
        bgImgView.addSubview(cancelBtn)
        //: bgImgView.addSubview(goBtn)
        bgImgView.addSubview(goBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintAsk() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 339), height: actualWidth(w: 330)))
            make.size.equalTo(CGSize(width: actualWidth(w: 339), height: actualWidth(w: 330)))
        }

        //: rewardLab.snp.makeConstraints { make in
        rewardLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 57))
            make.leading.equalTo(actualWidth(w: 57))
            //: let currLanguage = LanguageManager.shared.currLanguage
            let currLanguage = RatingReactiveCompatible.shared.currLanguage
            //: if currLanguage == "es" {
            if currLanguage == "es" {
                //: make.bottom.equalTo(-actualWidth(w: 60))
                make.bottom.equalTo(-actualWidth(w: 60))
                //: } else if currLanguage == "pt" {
            } else if currLanguage == "pt" {
                //: make.bottom.equalTo(-actualWidth(w: 55))
                make.bottom.equalTo(-actualWidth(w: 55))
                //: } else {
            } else {
                //: make.bottom.equalTo(-actualWidth(w: 71))
                make.bottom.equalTo(-actualWidth(w: 71))
            }
        }

        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.left.equalTo(actualWidth(w: 40))
            make.left.equalTo(actualWidth(w: 40))
            //: make.bottom.equalTo(-actualWidth(w: 5))
            make.bottom.equalTo(-actualWidth(w: 5))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 120), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 120), height: actualWidth(w: 50)))
        }

        //: goBtn.snp.makeConstraints { make in
        goBtn.snp.makeConstraints { make in
            //: make.right.equalTo(-actualWidth(w: 40))
            make.right.equalTo(-actualWidth(w: 40))
            //: make.bottom.size.equalTo(cancelBtn)
            make.bottom.size.equalTo(cancelBtn)
        }
    }
}
