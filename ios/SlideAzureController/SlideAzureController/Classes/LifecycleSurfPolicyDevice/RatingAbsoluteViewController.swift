
//: Declare String Begin

/*: "btn_back_white" :*/
fileprivate let mainLiteWaveName:[Character] = ["b","t"]
fileprivate let appYesterdayFormat:[Character] = ["n","_","b","a","c","k","_","w","h","i","t","e"]

/*: "area_icon_ :*/
fileprivate let const_pictureTitle:String = "wealthy turnarea_"

/*: "get img error" :*/
fileprivate let constGapName:String = "model ago effectiveget img e"
fileprivate let notiStoryTitle:[Character] = ["r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RatingAbsoluteViewController.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class RatingAbsoluteViewController: WeddingLovelyRecognizerDelegate {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = SmallishThen.share.haveMinimumCountry()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.subviews()
        //: self.setupSubViewsConstraint()
        self.space()
        //: self.bindInteraction()
        self.unless()
        //: self.loginView.setPhoneView()
        self.loginView.reserve()
    }

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: CrownedHeadThen = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = CrownedHeadThen(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: dataPointTitle, width: 44, height: 44))
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainLiteWaveName) + String(appYesterdayFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(female), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension RatingAbsoluteViewController {
    //: @objc func backBtnClick() {
    @objc func female() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func it() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = SmallRecognizerDelegate()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.convert()
        }
    }

    //: func func__updateAreaView() {
    func convert() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(const_pictureTitle.suffix(5)) + "icon_") + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = BlackEffectTool.default.shadeTing(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.regularPolygon()
                //: printLog(message: "get img error")
                printLog(message: (String(constGapName.suffix(9)) + String(notiStoryTitle)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.bolt(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func telephoneExtension(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        FirRequestTool.who(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = PortraitThen()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension RatingAbsoluteViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func subviews() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        convert()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func space() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func unless() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.telephoneExtension(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.it()
        }
    }
}
