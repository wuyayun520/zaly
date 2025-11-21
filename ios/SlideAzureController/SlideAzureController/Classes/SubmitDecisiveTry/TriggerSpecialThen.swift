
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showPoKey:[UInt8] = [0x8f,0x88,0x8f,0x92,0xce,0x85,0x89,0x82,0x83,0x94,0xdc,0xcf,0xc6,0x8e,0x87,0x95,0xc6,0x88,0x89,0x92,0xc6,0x84,0x83,0x83,0x88,0xc6,0x8f,0x8b,0x96,0x8a,0x83,0x8b,0x83,0x88,0x92,0x83,0x82]

private func powInside(grade num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: "pic" :*/
fileprivate let appPhotoName:String = "genderc"

/*: "url" :*/
fileprivate let app_directionStr:String = "URL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TriggerSpecialThen.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class TriggerSpecialThen: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, main_logStr, TriggerSpecialThen.low())
        //: basicUI()
        arrayUi()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showPoKey.map{powInside(grade: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.jawWithFinish(urlStr: dic?[(appPhotoName.replacingOccurrences(of: "gender", with: "pi"))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rawNet), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.jawWithFinish(urlStr: dic?[(appPhotoName.replacingOccurrences(of: "gender", with: "pi"))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mainStack), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension TriggerSpecialThen {
    //: @objc private func hostBtnClick() {
    @objc private func rawNet() {
        //: let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: PushThen.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        PushThen.share.plumeBright(urlStr: dic?[(app_directionStr.lowercased())] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func mainStack() {
        //: let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = DismissReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: PushThen.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        PushThen.share.plumeBright(urlStr: dic?[(app_directionStr.lowercased())] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension TriggerSpecialThen {
    //: class func getSelfHeight() -> CGFloat {
    class func low() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue && DismissReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func arrayUi() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, DismissReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
