
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainShirtStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Licensing" :*/
fileprivate let constMemoryTitle:String = "Licengreet delivery apply"

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let appDimensionContent:[UInt8] = [0x79,0x65,0x6e,0x6f,0x6d,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6e,0x72,0x61,0x65,0x20,0x64,0x6e,0x61,0x20,0x73,0x6c,0x6c,0x61,0x63,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x72,0x65,0x74,0x74,0x65,0x62,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6f,0x74,0x20,0x73,0x65,0x63,0x6e,0x65,0x63,0x69,0x6c,0x20,0x67,0x6e,0x69,0x74,0x6e,0x61,0x72,0x47]

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let showVeryJawValue:[UInt8] = [0x7e,0x5f,0x58,0x44,0xa,0x45,0x44,0xa,0x69,0x4b,0x47,0x4f,0x58,0x4b,0xa,0x4b,0x44,0x4e,0xa,0x58,0x4f,0x49,0x45,0x58,0x4e,0x43,0x44,0x4d,0xa,0x5a,0x4f,0x58,0x47,0x43,0x59,0x59,0x43,0x45,0x44,0x59,0xa,0x43,0x44,0xa,0x59,0x4f,0x5e,0x5e,0x43,0x44,0x4d,0x59,0xa,0x5e,0x45,0xa,0x5f,0x59,0x4f,0xa,0x5e,0x42,0x4f,0xa,0x4c,0x4f,0x4b,0x5e,0x5f,0x58,0x4f,0xa,0x5a,0x58,0x45,0x5a,0x4f,0x58,0x46,0x53]

/*: "Cancel" :*/
fileprivate let user_keyMsg:String = "none separate fortCancel"

/*: "Open" :*/
fileprivate let data_anotherKey:String = "Openits host"

/*: "icon_peimisionlic_camera" :*/
fileprivate let appContinuingName:[Character] = ["i","c","o","n","_","p","e","i","m","i","s","i","o"]
fileprivate let constBounceSwingMessage:String = "nliput"

/*: "icon_peimissionlic_mic" :*/
fileprivate let notiInputRelateMsg:[Character] = ["i","c","o","n","_"]
fileprivate let noti_noteMsg:String = "peone"
fileprivate let showOutputText:String = "warmsi"
fileprivate let app_diskKey:String = "edge more thisc_mic"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManufacturerPermissionView.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class ManufacturerPermissionView: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.clearSubviews()
        //: self.setupSubViewsConstraint()
        self.originalConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainShirtStr.reversed(), encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 20)
        lb.font = UIFont.pingfang(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(constMemoryTitle.prefix(5)) + "sing").localized
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
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue && DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: appDimensionContent.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: showVeryJawValue.map{$0^42}, encoding: .utf8)!.localized
        }
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
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(user_keyMsg.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.saveInColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.attractiveIn().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(manualBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(data_anotherKey.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cellChin), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension ManufacturerPermissionView {
    //: func show() {
    func occurAnswer() {
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
    @objc func manualBy() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func cellChin() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        manualBy()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func clap(type: AdulthoodPermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.BundleImageNamed(name: "icon_peimisionlic_camera")
                icon.image = UIImage.locationName(name: (String(appContinuingName) + constBounceSwingMessage.replacingOccurrences(of: "put", with: "c") + "_camera"))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.BundleImageNamed(name: "icon_peimissionlic_mic")
                icon.image = UIImage.locationName(name: (String(notiInputRelateMsg) + noti_noteMsg.replacingOccurrences(of: "one", with: "im") + showOutputText.replacingOccurrences(of: "warm", with: "is") + "onli" + String(app_diskKey.suffix(5))))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.BundleImageNamed(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.locationName(name: (String(appContinuingName) + constBounceSwingMessage.replacingOccurrences(of: "put", with: "c") + "_camera"))
                    //: } else {
                } else {
                    //: icon.image = UIImage.BundleImageNamed(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.locationName(name: (String(notiInputRelateMsg) + noti_noteMsg.replacingOccurrences(of: "one", with: "im") + showOutputText.replacingOccurrences(of: "warm", with: "is") + "onli" + String(app_diskKey.suffix(5))))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension ManufacturerPermissionView {
    // 添加视图
    //: private func setupSubviews() {
    private func clearSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func originalConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
