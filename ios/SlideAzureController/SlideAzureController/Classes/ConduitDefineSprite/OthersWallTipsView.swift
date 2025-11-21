
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataSucceedFormat:[UInt8] = [0xf6,0xf1,0xf6,0xeb,0xb7,0xfc,0xf0,0xfb,0xfa,0xed,0xa5,0xb6,0xbf,0xf7,0xfe,0xec,0xbf,0xf1,0xf0,0xeb,0xbf,0xfd,0xfa,0xfa,0xf1,0xbf,0xf6,0xf2,0xef,0xf3,0xfa,0xf2,0xfa,0xf1,0xeb,0xfa,0xfb]

private func feedUsMm(white num: UInt8) -> UInt8 {
    return num ^ 159
}

/*: "icon_free_call_bg_coundown" :*/
fileprivate let main_clothesAssertValue:String = "icon_fbusiness score"
fileprivate let dataEnableingUrl:String = "smartall"
fileprivate let user_makeWithoutImpulsePath:String = "undoproduction"
fileprivate let notiGoodDeadlineTitle:[Character] = ["n"]

/*: "icon_free_call_countdown" :*/
fileprivate let notiFeeTitle:String = "icon_fconvert finish cord expected empty"
fileprivate let showLifetimeData:String = "call_material else topic addition ex"
fileprivate let noti_energyFormat:String = "doisolaten"

/*: "Not enough coins" :*/
fileprivate let constDotLensFormat:String = "regular life districtNot en"
fileprivate let k_occurPath:String = "relatens"

/*: "#8566FF" :*/
fileprivate let k_curveValue:String = "input keep assign event additional#8566FF"

/*: "Recharge" :*/
fileprivate let userSituationFormat:[Character] = ["R","e"]
fileprivate let dataUponMsg:String = "CHARGE"

/*: "%@s Remaining" :*/
fileprivate let appAnotherSignatureMsg:String = "%"
fileprivate let noti_earnGoKey:String = "we leave@s R"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OthersWallTipsView.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/4/29.
//

//: import UIKit
import UIKit

/// 免费通话剩余20s倒计时页面
//: class TalkingFreeCallRechargeTipsView: UIView {
class OthersWallTipsView: UIView {
    // MARK: - 属性声明

    //: var touchRechargeBtnBlock: (() -> Void)?
    var touchRechargeBtnBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        childSGame()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataSucceedFormat.map{feedUsMm(white: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.cornerRadius = 12
        v.layer.cornerRadius = 12
        //: return v
        return v
        //: }()
    }()

    //: lazy var topBgImagV: UIImageView = {
    lazy var topBgImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_free_call_bg_coundown")
        imag.image = UIImage.locationName(name: (String(main_clothesAssertValue.prefix(6)) + "ree_" + dataEnableingUrl.replacingOccurrences(of: "smart", with: "c") + "_bg_co" + user_makeWithoutImpulsePath.replacingOccurrences(of: "production", with: "w") + String(notiGoodDeadlineTitle)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImagV: UIImageView = {
    lazy var topImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_free_call_countdown")
        imag.image = UIImage.locationName(name: (String(notiFeeTitle.prefix(6)) + "ree_" + String(showLifetimeData.prefix(5)) + "count" + noti_energyFormat.replacingOccurrences(of: "isolate", with: "w")))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Not enough coins".localized
        lb.text = (String(constDotLensFormat.suffix(6)) + "ough co" + k_occurPath.replacingOccurrences(of: "relate", with: "i")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 12)
        lb.font = UIFont.pingfang(fontSize: 12)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var countLB: UILabel = {
    lazy var countLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.init(hex: "#8566FF")
        lb.textColor = UIColor(hex: (String(k_curveValue.suffix(7))))
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 10)
        lb.font = UIFont.bonePlace(fontSize: 10)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var callBtn: UIButton = {
    lazy var callBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.layer.cornerRadius = 10
        btn.layer.cornerRadius = 10
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 72, height: 20)), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 12)
        //: btn.setTitle("Recharge".localized, for: .normal)
        btn.setTitle((String(userSituationFormat) + dataUponMsg.lowercased()).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(streamTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingFreeCallRechargeTipsView {
extension OthersWallTipsView {
    //: func setTipsMessage(count: Int) {
    func invite(count: Int) {
        //: countLB.text = "%@s Remaining".localizedArguments(count)
        countLB.text = (appAnotherSignatureMsg.capitalized + String(noti_earnGoKey.suffix(4)) + "emaining").unitedStates(count)
    }

    //: @objc private func callBtnClick() {
    @objc private func streamTo() {
        //: PushThen.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        PushThen.share.obligatoEvent(webViewType: .RechargeHalfPage)
        //: touchRechargeBtnBlock?()
        touchRechargeBtnBlock?()
    }
}

//: extension TalkingFreeCallRechargeTipsView {
extension OthersWallTipsView {
    //: private func setupSubviews() {
    private func childSGame() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topBgImagV)
        contentView.addSubview(topBgImagV)
        //: addSubview(topImagV)
        addSubview(topImagV)
        //: contentView.addSubview(tipsLB)
        contentView.addSubview(tipsLB)
        //: contentView.addSubview(countLB)
        contentView.addSubview(countLB)
        //: contentView.addSubview(callBtn)
        contentView.addSubview(callBtn)

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
        }
        //: topBgImagV.snp.makeConstraints { make in
        topBgImagV.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(57)
            make.height.equalTo(57)
        }
        //: topImagV.snp.makeConstraints { make in
        topImagV.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(37)
            make.width.equalTo(37)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }

        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.top.equalTo(38)
            make.top.equalTo(38)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: countLB.snp.makeConstraints { make in
        countLB.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLB.snp.bottom).offset(4)
            make.top.equalTo(tipsLB.snp.bottom).offset(4)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(countLB.snp.bottom).offset(8)
            make.top.equalTo(countLB.snp.bottom).offset(8)
            //: make.size.equalTo(CGSize.init(width: 72, height: 20))
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
    }
}
