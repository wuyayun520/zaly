
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_saleName:[UInt8] = [0x6b,0x70,0x6b,0x76,0x2a,0x65,0x71,0x66,0x67,0x74,0x3c,0x2b,0x22,0x6a,0x63,0x75,0x22,0x70,0x71,0x76,0x22,0x64,0x67,0x67,0x70,0x22,0x6b,0x6f,0x72,0x6e,0x67,0x6f,0x67,0x70,0x76,0x67,0x66]

fileprivate func methodOutline(user num: UInt8) -> UInt8 {
    let value = Int(num) + 254
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_sayhi_Bg" :*/
fileprivate let show_brideDistanceFormat:[Character] = ["i","c","o","n","_","s","a","y"]
fileprivate let main_cordStr:[Character] = ["h","i","_","B","g"]

/*: "Say hi successfully~" :*/
fileprivate let mainGeneralKey:[Character] = ["S","a","y"," ","h","i"," ","s","u","c","c"]
fileprivate let user_coalStr:String = "essfully~against ta"

/*: "users" :*/
fileprivate let appCourseText:[UInt8] = [0xaa,0xac,0xba,0xad,0xac]

private func againstDesign(exclusive num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "#B32BD4" :*/
fileprivate let kVolumeTitle:[Character] = ["#","B","3","2","B","D","4"]

/*: "icon_sayhi_like_location" :*/
fileprivate let show_assetBodyId:String = "icon_sprogress capacity always bite"
fileprivate let mainSlowValue:String = "ayelement"
fileprivate let show_flagStr:String = "blue close category force mediae_loc"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PutReactiveCompatible.swift
//  Pods
//
//  Created by Charlotte on 2025/11/7.
//

//: import UIKit
import UIKit

//: class SayHiPopUpView: UIView {
class PutReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?
    //: private var models = [sayHiModel]()
    private var models = [sayHiModel]()
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.performBy()
        //: self.setupSubViewsConstraint()
        self.clothing()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_saleName.map{methodOutline(user: $0)}, encoding: .utf8)!)
    }

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_sayhi_Bg")
        iamg.image = UIImage.locationName(name: (String(show_brideDistanceFormat) + String(main_cordStr)))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var clickToViewBtn: UIButton = {
    private lazy var clickToViewBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.addTarget(self, action: #selector(clickToViewButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moveAround), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension SayHiPopUpView {
extension PutReactiveCompatible {
    //: @objc func clickToViewButtonEvent() {
    @objc func moveAround() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        // 串行执行
        //: var tempAr = Array<String>()
        var tempAr = [String]()
        //: Task {
        Task {
            //: for model in models {
            for model in models {
                //: let isSuccess = await greetToUser(uid: model.uid)
                let isSuccess = await evenUid(uid: model.uid)
                // 可以在这里处理每个请求的结果
                //: if isSuccess {
                if isSuccess {
                    //: tempAr.append(model.uid)
                    tempAr.append(model.uid)
                }
                //: print("用户 \(model.uid) 打招呼结果: \(isSuccess)")
            }
            // 所有请求完成
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: self.dismiss()
            self.formatSituation()
            //: if tempAr.count > 0 {
            if tempAr.count > 0 {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
                self.showGuidanceName(showMsg: (String(mainGeneralKey) + String(user_coalStr.prefix(9))).localized)
            }
            //: NotificationCenter.default.post(name: SAYHI_END_NOTIFICATION, object: nil, userInfo: ["users":tempAr])
            NotificationCenter.default.post(name: showStorageFormat, object: nil, userInfo: [String(bytes: appCourseText.map{againstDesign(exclusive: $0)}, encoding: .utf8)!: tempAr])
        }
    }

    //: func show(models: [sayHiModel]) {
    func areaShow(models: [sayHiModel]) {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
        //: self.models = models
        self.models = models
        //: setupUserView()
        viewSign()
    }

    //: @objc func dismiss() {
    @objc func formatSituation() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    // /// 一键打招呼 串行 async 方法
    //: func greetToUser(uid: String) async -> Bool {
    func evenUid(uid: String) async -> Bool {
        //: return await withCheckedContinuation { continuation in
        return await withCheckedContinuation { continuation in
            //: let vc = TalkingPrivateChatController(chatID: uid)
            let vc = SmallControllerDelegate(chatID: uid)
            //: vc.func_sendSayHiMsg()
            vc.gravity()
            //: vc.QuickEndBlock = { isSuccess, code in
            vc.QuickEndBlock = { isSuccess, _ in
                //: continuation.resume(returning: isSuccess)
                continuation.resume(returning: isSuccess)
            }
        }
    }
}

//: extension SayHiPopUpView {
extension PutReactiveCompatible {
    //: private func setupSubviews() {
    private func performBy() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(clickToViewBtn)
        contentView.addSubview(clickToViewBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func clothing() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 352, height: 470))
            make.size.equalTo(CGSize(width: 352, height: 470))
        }

        //: clickToViewBtn.snp.makeConstraints { make in
        clickToViewBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(contentView).offset(-27)
            make.bottom.equalTo(contentView).offset(-27)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(250)
            make.width.equalTo(250)
            //: make.height.equalTo(70)
            make.height.equalTo(70)
        }
    }

    //: private func setupUserView() {
    private func viewSign() {
        //: for (index,model) in models.enumerated() {
        for (index, model) in models.enumerated() {
            //: let imagview = UIImageView()
            let imagview = UIImageView()
            //: imagview.setUrlImage(urlStr: model.headUrl)
            imagview.bolt(urlStr: model.headUrl)
            //: imagview.contentMode = .scaleAspectFill
            imagview.contentMode = .scaleAspectFill
            //: imagview.layer.cornerRadius = 20
            imagview.layer.cornerRadius = 20
            //: imagview.layer.borderWidth = 4.0
            imagview.layer.borderWidth = 4.0
            //: imagview.layer.borderColor = UIColor.white.cgColor
            imagview.layer.borderColor = UIColor.white.cgColor
            //: imagview.clipsToBounds = true
            imagview.clipsToBounds = true
            //: self.contentView.addSubview(imagview)
            self.contentView.addSubview(imagview)
            //: if index == 0 {
            if index == 0 {
                //: imagview.snp.makeConstraints { make in
                imagview.snp.makeConstraints { make in
                    //: make.leading.equalTo(5)
                    make.leading.equalTo(5)
                    //: make.top.equalTo(130)
                    make.top.equalTo(130)
                    //: make.size.equalTo(CGSize(width: 115, height: 154))
                    make.size.equalTo(CGSize(width: 115, height: 154))
                }
                //: imagview.transform = CGAffineTransform(rotationAngle: CGFloat(-10 * Double.pi / 180))
                imagview.transform = CGAffineTransform(rotationAngle: CGFloat(-10 * Double.pi / 180))
                //: if LanguageManager.shared.direction == .rightToLeft {
                if RatingReactiveCompatible.shared.direction == .rightToLeft {
                    //: imagview.transform = CGAffineTransform(rotationAngle: CGFloat(10 * Double.pi / 180))
                    imagview.transform = CGAffineTransform(rotationAngle: CGFloat(10 * Double.pi / 180))
                }

                //: } else if index == 1 {
            } else if index == 1 {
                //: imagview.snp.makeConstraints { make in
                imagview.snp.makeConstraints { make in
                    //: make.leading.equalTo(110)
                    make.leading.equalTo(110)
                    //: make.top.equalTo(80)
                    make.top.equalTo(80)
                    //: make.size.equalTo(CGSize(width: 152, height: 202))
                    make.size.equalTo(CGSize(width: 152, height: 202))
                }
                //: } else if index == 2 {
            } else if index == 2 {
                //: imagview.snp.makeConstraints { make in
                imagview.snp.makeConstraints { make in
                    //: make.trailing.equalTo(-5)
                    make.trailing.equalTo(-5)
                    //: make.top.equalTo(130)
                    make.top.equalTo(130)
                    //: make.size.equalTo(CGSize(width: 115, height: 154))
                    make.size.equalTo(CGSize(width: 115, height: 154))
                }
                //: imagview.transform = CGAffineTransform(rotationAngle: CGFloat(10 * Double.pi / 180))
                imagview.transform = CGAffineTransform(rotationAngle: CGFloat(10 * Double.pi / 180))
                //: if LanguageManager.shared.direction == .rightToLeft {
                if RatingReactiveCompatible.shared.direction == .rightToLeft {
                    //: imagview.transform = CGAffineTransform(rotationAngle: CGFloat(-10 * Double.pi / 180))
                    imagview.transform = CGAffineTransform(rotationAngle: CGFloat(-10 * Double.pi / 180))
                }
            }

            //: let imag = UIImageView()
            let imag = UIImageView()
            //: imag.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#B32BD4")!.withAlphaComponent(0).cgColor, UIColor.init(hex: "#B32BD4")!.withAlphaComponent(1).cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
            imag.image = UIImage.aboveDraft(colors: [UIColor(hex: (String(kVolumeTitle)))!.withAlphaComponent(0).cgColor, UIColor(hex: (String(kVolumeTitle)))!.withAlphaComponent(1).cgColor], size: CGSize(width: main_logStr, height: main_nameData))
            //: imagview.addSubview(imag)
            imagview.addSubview(imag)
            //: imag.snp.makeConstraints { make in
            imag.snp.makeConstraints { make in
                //: make.bottom.leading.trailing.equalToSuperview()
                make.bottom.leading.trailing.equalToSuperview()
                //: make.height.equalTo(52)
                make.height.equalTo(52)
            }
            //: let nameLB = UILabel.init()
            let nameLB = UILabel()
            //: nameLB.text = model.nickname
            nameLB.text = model.nickname
            //: nameLB.textColor = .white
            nameLB.textColor = .white
            //: nameLB.font = UIFont.pingfangFont(type: .Semibold, fontSize: 16)
            nameLB.font = UIFont.bigGallery(type: .Semibold, fontSize: 16)
            //: imag.addSubview(nameLB)
            imag.addSubview(nameLB)
            //: nameLB.snp.makeConstraints { make in
            nameLB.snp.makeConstraints { make in
                //: make.leading.equalTo(10)
                make.leading.equalTo(10)
                //: make.trailing.equalTo(-10)
                make.trailing.equalTo(-10)
                //: make.top.equalTo(2)
                make.top.equalTo(2)
            }

            //: let locationBtn = TalkingButton.init()
            let locationBtn = RangeReactiveCompatible()
            //: locationBtn.setTitle(model.country, for: .normal)
            locationBtn.setTitle(model.country, for: .normal)
            //: locationBtn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
            locationBtn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 13)
            //: locationBtn.spaceBetweenTitleAndImage = 4
            locationBtn.spaceBetweenTitleAndImage = 4
            //: locationBtn.setImage(UIImage.BundleImageNamed(name: "icon_sayhi_like_location"), for: .normal)
            locationBtn.setImage(UIImage.locationName(name: (String(show_assetBodyId.prefix(6)) + mainSlowValue.replacingOccurrences(of: "element", with: "hi") + "_lik" + String(show_flagStr.suffix(5)) + "ation")), for: .normal)
            //: imag.addSubview(locationBtn)
            imag.addSubview(locationBtn)
            //: locationBtn.snp.makeConstraints { make in
            locationBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(12)
                make.leading.equalTo(12)
                //: make.top.equalTo(nameLB.snp.bottom).offset(2)
                make.top.equalTo(nameLB.snp.bottom).offset(2)
            }
        }
    }
}
