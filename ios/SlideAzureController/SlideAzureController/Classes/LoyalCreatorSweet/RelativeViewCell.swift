
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showTargetUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_video" :*/
fileprivate let kAlreadyPath:[Character] = ["i"]
fileprivate let userWorldValue:String = "con_mnap movie reader"

/*: "Receive video calls" :*/
fileprivate let const_regionUrl:String = "Receivbeyond communicate target instruction connection"
fileprivate let kEarlyContent:[Character] = ["d","e","o"," ","c","a","l","l","s"]

/*: "icon_me_voice" :*/
fileprivate let kFamilyText:String = "asset"
fileprivate let show_becomeMsg:String = "speaker port restriction behindon_me_"

/*: "Receive voice calls" :*/
fileprivate let main_tapBlankSpareTitle:[Character] = ["R","e","c","e","i","v","e"," ","v","o","i"]
fileprivate let user_lookName:[Character] = ["c","e"," ","c","a","l","l","s"]

/*: "icon_me_randomvideo" :*/
fileprivate let dataCoalFormat:[Character] = ["i","c","o","n","_","m","e","_","r","a","n","d"]
fileprivate let data_serveValue:String = "ohelpvideo"

/*: "Random Video" :*/
fileprivate let showReplaceHeavyUrl:[Character] = ["R","a","n","d","o"]
fileprivate let mainStumbleText:String = "simultaneously element even bitem Video"

/*: "value" :*/
fileprivate let appNorTitle:[Character] = ["v","a","l","u","e"]

/*: "type" :*/
fileprivate let data_fastStr:[Character] = ["t","y","p","e"]

/*: "videoAuth" :*/
fileprivate let main_commonUrl:String = "viable"
fileprivate let data_countTitle:String = "under telephone period custom leveleoAuth"

/*: "voiceAuth" :*/
fileprivate let show_recentUrl:[Character] = ["v","o","i","c","e","A","u","t","h"]

/*: "randomVideo" :*/
fileprivate let app_photoMessage:String = "rbeatndom"
fileprivate let mainShotTitle:String = "down"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RelativeViewCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum CountensityVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class RelativeViewCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: CountensityVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showTargetUrl.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.attractiveIn()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(screen), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension RelativeViewCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func earlierType(type: CountensityVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_video")
            icon.image = UIImage.locationName(name: (String(kAlreadyPath) + String(userWorldValue.prefix(5)) + "e_video"))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(const_regionUrl.prefix(6)) + "e vi" + String(kEarlyContent)).localized
            //: switchView.isOn = (DismissReactiveCompatible.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (DismissReactiveCompatible.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_voice")
            icon.image = UIImage.locationName(name: (kFamilyText.replacingOccurrences(of: "asset", with: "ic") + String(show_becomeMsg.suffix(6)) + "voice"))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(main_tapBlankSpareTitle) + String(user_lookName)).localized
            //: switchView.isOn = (DismissReactiveCompatible.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (DismissReactiveCompatible.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_randomvideo")
            icon.image = UIImage.locationName(name: (String(dataCoalFormat) + data_serveValue.replacingOccurrences(of: "help", with: "m")))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(showReplaceHeavyUrl) + String(mainStumbleText.suffix(7))).localized
            //: switchView.isOn = (DismissReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (DismissReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func screen() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(appNorTitle))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(String(data_fastStr))] = (main_commonUrl.replacingOccurrences(of: "able", with: "d") + String(data_countTitle.suffix(6)))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(String(data_fastStr))] = (String(show_recentUrl))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(String(data_fastStr))] = (app_photoMessage.replacingOccurrences(of: "beat", with: "a") + "Vide" + mainShotTitle.replacingOccurrences(of: "down", with: "o"))
        }
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        FlyerThen.displayMutual(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: DismissReactiveCompatible.share.loginUserMode.videoAuth = value
                DismissReactiveCompatible.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: DismissReactiveCompatible.share.loginUserMode.voiceAuth = value
                DismissReactiveCompatible.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: DismissReactiveCompatible.share.appUserConfigMode.randomVideo = value
                DismissReactiveCompatible.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).rewardFront()
        }
    }
}
