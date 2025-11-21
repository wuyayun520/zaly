
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userThreadMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_cover_toast" :*/
fileprivate let mainVanishTitle:String = "icon_cextension month"
fileprivate let noti_precedentName:String = "ST"

/*: "Not for now" :*/
fileprivate let constSkinText:String = "trigger face easeNot f"
fileprivate let showThreadValue:[Character] = ["o","r"," ","n","o","w"]

/*: "Turn on" :*/
fileprivate let notiEndKey:String = "Turn onking distribute premium sure"

/*: "Live Certification off" :*/
fileprivate let kNearDueAttentionPath:String = "first analysis commit mechanism premiumLive "
fileprivate let user_linkKey:String = "catake"
fileprivate let user_movieUrl:String = "alter emptyion off"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let mainBenchId:[UInt8] = [0x5b,0x67,0x6e,0x6a,0x78,0x6e,0x2b,0x66,0x6a,0x60,0x6e,0x2b,0x78,0x7e,0x79,0x6e,0x2b,0x72,0x64,0x7e,0x79,0x2b,0x6d,0x6a,0x68,0x6e,0x2b,0x62,0x78,0x2b,0x6a,0x67,0x7c,0x6a,0x72,0x78,0x2b,0x62,0x65,0x2b,0x7f,0x63,0x6e,0x2b,0x7d,0x62,0x6f,0x6e,0x64,0x2b,0x78,0x68,0x79,0x6e,0x6e,0x65]

private func ditLifetime(connect num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "Current network unavailable" :*/
fileprivate let userFiscalDonUrl:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a","b","l","e"]

/*: "Live Reminder" :*/
fileprivate let constHelpMessage:String = "Liveleading busy involvement"
fileprivate let userInnerUrl:String = " Reminderscript reason"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let constInfoPath:[UInt8] = [0xd3,0xe5,0xff,0xaa,0xe2,0xeb,0xfc,0xef,0xe4,0xad,0xfe,0xaa,0xff,0xf9,0xef,0xee,0xaa,0xf3,0xe5,0xff,0xf8,0xaa,0xec,0xf8,0xef,0xef,0xaa,0xfc,0xe3,0xee,0xef,0xe5,0xaa,0xe5,0xfa,0xfa,0xe5,0xf8,0xfe,0xff,0xe4,0xe3,0xfe,0xf3,0xaa,0xf3,0xef,0xfe,0xa6,0xaa,0xfe,0xeb,0xe6,0xe1,0xaa,0xfe,0xe5,0xaa,0xf9,0xe5,0xe7,0xef,0xe5,0xe4,0xef,0xaa,0xec,0xe3,0xf8,0xf9,0xfe,0xab]

private func powderHorn(estimated num: UInt8) -> UInt8 {
    return num ^ 138
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProviderAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum TickingViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class ProviderAlertView: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: TransferPopView?
    //: private var type = LiveAlertViewType.noFace
    private var type = TickingViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: TickingViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        relapsing()
        //: setupSubViewsConstraint()
        crushHalf()
        //: refreshUI()
        resignGender()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userThreadMsg.reversed(), encoding: .utf8)!)
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
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_cover_toast")
        iamg.image = UIImage.locationName(name: (String(mainVanishTitle.prefix(6)) + "over_toa" + noti_precedentName.lowercased()))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.pingfang(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.bonePlace(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
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
        btn.addTarget(self, action: #selector(afterJudge), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.attractiveIn(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(constSkinText.suffix(5)) + String(showThreadValue)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.attractiveIn().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(permission), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .attractiveIn()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(notiEndKey.prefix(7))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(afterJudge), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension ProviderAlertView {
    //: func show() {
    func stripPhone() {
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
    @objc func penumbra() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func permission() {
        //: dismiss()
        penumbra()
    }

    //: @objc private func rightButtonClick() {
    @objc private func afterJudge() {
        //: dismiss()
        penumbra()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            penumbra()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension ProviderAlertView {
    // 刷新视图
    //: private func refreshUI() {
    private func resignGender() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(kNearDueAttentionPath.suffix(5)) + "Certifi" + user_linkKey.replacingOccurrences(of: "take", with: "t") + String(user_movieUrl.suffix(7))).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: mainBenchId.map{ditLifetime(connect: $0)}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(kNearDueAttentionPath.suffix(5)) + "Certifi" + user_linkKey.replacingOccurrences(of: "take", with: "t") + String(user_movieUrl.suffix(7))).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(userFiscalDonUrl)).localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(constHelpMessage.prefix(4)) + String(userInnerUrl.prefix(9))).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: constInfoPath.map{powderHorn(estimated: $0)}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func relapsing() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func crushHalf() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
