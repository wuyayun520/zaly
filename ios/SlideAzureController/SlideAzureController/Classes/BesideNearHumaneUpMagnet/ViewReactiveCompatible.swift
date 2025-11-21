
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userRelationData:[UInt8] = [0x13,0x14,0x13,0xe,0x52,0x19,0x15,0x1e,0x1f,0x8,0x40,0x53,0x5a,0x12,0x1b,0x9,0x5a,0x14,0x15,0xe,0x5a,0x18,0x1f,0x1f,0x14,0x5a,0x13,0x17,0xa,0x16,0x1f,0x17,0x1f,0x14,0xe,0x1f,0x1e]

private func cropTrend(cute num: UInt8) -> UInt8 {
    return num ^ 122
}

/*: "bth_live_follow_pre" :*/
fileprivate let appFoundValue:[Character] = ["b","t","h","_","l","i","v","e","_","f","o","l","l","o","w","_","p","r","e"]

/*: "btn_live_mini_nor" :*/
fileprivate let appQuickCoordinatorData:[Character] = ["b","t","n","_","l","i","v","e","_","m","i","n"]
fileprivate let app_commentUrl:[Character] = ["i","_","n","o","r"]

/*: "#2DF2FF" :*/
fileprivate let mainResumeStr:String = "blind log#2DF2F"
fileprivate let user_financialFormat:String = "rich"

/*: "Live" :*/
fileprivate let dataSuiteKey:[Character] = ["L","i","v","e"]

/*: "#FF506D" :*/
fileprivate let kEditPopId:String = "#"
fileprivate let user_yesterdayMessage:[Character] = ["F","F","5","0","6","D"]

/*: "removeAttentionUid" :*/
fileprivate let const_optionMsg:String = "rthreado"
fileprivate let dataOutsideMessage:[Character] = ["e","n","t","i","o","n","U","i","d"]

/*: "attentionUid" :*/
fileprivate let noti_acrossChooseValue:String = "ayesterday"
fileprivate let appRobotTitle:String = "tlatti"

/*: "source" :*/
fileprivate let constWhichWouldKey:String = "soimagerce"

/*: "num" :*/
fileprivate let show_fortName:[Character] = ["n","u","m"]

/*: "UID: :*/
fileprivate let dataBrideMessage:String = "UID:accommodate delivery transmission basic way"

/*: "btn_live_closed_nor" :*/
fileprivate let app_gatherMessage:[Character] = ["b","t","n","_","l","i","v","e","_","c","l","o","s","e","d","_","n"]
fileprivate let user_shallId:[Character] = ["o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomTopView: UIView {
class ViewReactiveCompatible: UIView {
    //: weak var weakVC: TalkingBaseViewController?
    weak var weakVC: WeddingLovelyRecognizerDelegate?
    // 右侧按钮点击Block
    //: var rightBtnBlock: (() -> Void)? = nil
    var rightBtnBlock: (() -> Void)? = nil
    // 未检测出人脸时长（间隔1秒）
    //: var noFaceTime: Int = 0 {
    var noFaceTime: Int = 0 {
        //: didSet {
        didSet {
            //: if noFaceTime >= DismissReactiveCompatible.share.appConfigMode.countdown1 {
            if noFaceTime >= DismissReactiveCompatible.share.appConfigMode.countdown1 { // 展示倒计时
                //: self.liveStatusImgV.isHidden = true
                self.liveStatusImgV.isHidden = true
                //: self.countdownView.isHidden = false
                self.countdownView.isHidden = false
                //: self.countdownLab.text = "\(MAX_NOFACETIME-noFaceTime)s"
                self.countdownLab.text = "\(const_buttonPopPath - noFaceTime)s"
                // svga
                //: self.svgaView.isHidden = false
                self.svgaView.isHidden = false
                //: self.svgaView.refreshView(countdown: "\(MAX_NOFACETIME-noFaceTime)")
                self.svgaView.curLicense(countdown: "\(const_buttonPopPath - noFaceTime)")
                //: } else {
            } else {
                //: self.refreshLiveStatus()
                self.exaggerate()
            }
        }
    }

    // 主播信息
    //: private var liveModel = TalkingLiveRoomModel()
    private var liveModel = DwellHiddenMeasurable()

    //: var onlineNunTimer: Timer?
    var onlineNunTimer: Timer? /// 直播人数刷新定时器

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        phallic()
        //: setupSubViewsConstraint()
        overAttribute()
        //: startTimer()
        molarConcentration()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userRelationData.map{cropTrend(cute: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var iconBgBtn: UIButton = {
    private lazy var iconBgBtn: UIButton = {
        //: let v = UIButton()
        let v = UIButton()
        //: v.backgroundColor = .black.withAlphaComponent(0.2)
        v.backgroundColor = .black.withAlphaComponent(0.2)
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.addTarget(self, action: #selector(iconBgButtonClick), for: .touchUpInside)
        v.addTarget(self, action: #selector(imageSnapClick), for: .touchUpInside)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 11)
        lab.font = UIFont.pingfang(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.7)
        lab.textColor = UIColor.white.withAlphaComponent(0.7)
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 11)
        lab.font = UIFont.pingfang(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followBtn: UIButton = {
    private lazy var followBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setImage(UIImage.BundleImageNamed(name: "bth_live_follow_pre"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(appFoundValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(followButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(turnClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(appQuickCoordinatorData) + String(app_commentUrl))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(coatButton), for: .touchUpInside)
        //: btn.isHidden = (DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = (DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveStatusImgV: TalkingButton = {
    private lazy var liveStatusImgV: RangeReactiveCompatible = {
        //: let img = TalkingButton()
        let img = RangeReactiveCompatible()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.satisfyTo(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        img.titleLabel?.font = UIFont.pingfang(fontSize: 12)
        //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
        let image = UIImage.littleness(color: UIColor(hex: (String(mainResumeStr.suffix(6)) + user_financialFormat.replacingOccurrences(of: "rich", with: "F")))!, size: CGSize(width: 8, height: 8))
        //: img.setImage(image.fasten(), for: .normal)
        img.setImage(image.fasten(), for: .normal)
        //: img.setTitle("Live".localized, for: .normal)
        img.setTitle((String(dataSuiteKey)).localized, for: .normal)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var countdownView: UIView = {
    private lazy var countdownView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.isHidden = true
        bg.isHidden = true
        //: bg.layer.cornerRadius = 4
        bg.layer.cornerRadius = 4
        //: bg.layer.masksToBounds = true
        bg.layer.masksToBounds = true
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)

        //: let icon = UIView()
        let icon = UIView()
        //: icon.backgroundColor = UIColor(hex: "#FF506D")
        icon.backgroundColor = UIColor(hex: (kEditPopId.capitalized + String(user_yesterdayMessage)))
        //: icon.layer.cornerRadius = 3.5
        icon.layer.cornerRadius = 3.5
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: icon.layer.borderWidth = 1
        icon.layer.borderWidth = 1
        //: icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.borderColor = UIColor.white.cgColor
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 7, height: 7))
            make.size.equalTo(CGSize(width: 7, height: 7))
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var countdownLab: UILabel = {
    private lazy var countdownLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 12)
        lab.font = UIFont.pingfang(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = " \(DismissReactiveCompatible.share.appConfigMode.countdown2)s"
        lab.text = " \(DismissReactiveCompatible.share.appConfigMode.countdown2)s"
        //: countdownView.addSubview(lab)
        countdownView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var svgaView: TalkingLiveCountdownView = {
    lazy var svgaView: EncampThen = {
        //: let v = TalkingLiveCountdownView()
        let v = EncampThen()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    /// 在线人数
    //: private lazy var onlineNumBtn: UIButton = {
    private lazy var onlineNumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        btn.openColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        //: btn.addTarget(self, action: #selector(onlineNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(directExpected), for: .touchUpInside)
        //: btn.layer.cornerRadius = actualWidth(w: 32)/2
        btn.layer.cornerRadius = actualWidth(w: 32) / 2
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 12)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var onlineListView: TalkingLiveRoomOnlineListView = {
    private lazy var onlineListView: TickView = {
        //: let v = TalkingLiveRoomOnlineListView()
        let v = TickView()
        //: v.touchIconBtnBlock = { [weak self] uid in
        v.touchIconBtnBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.showUserCard(uid: uid)
            self.utiliser(uid: uid)
        }
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLiveRoomTopView {
extension ViewReactiveCompatible {
    /// 关注/取消关注
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - isAttention: true: 取关；false: 关注
    //: @objc func req_followRequest(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
    @objc func delayAttention(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            enablece(showMsg: main_textStr)
            //: completion?(false)
            completion?(false)
            //: return
            return
        }

        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if isAttention {
        if isAttention {
            //: dict["removeAttentionUid"] = uid
            dict[(const_optionMsg.replacingOccurrences(of: "thread", with: "em") + "veAtt" + String(dataOutsideMessage))] = uid
            //: } else {
        } else {
            //: dict["attentionUid"] = uid
            dict[(noti_acrossChooseValue.replacingOccurrences(of: "yesterday", with: "t") + appRobotTitle.replacingOccurrences(of: "lat", with: "en") + "onUid")] = uid
            //: dict["source"] = "1"
            dict[(constWhichWouldKey.replacingOccurrences(of: "image", with: "u"))] = "1"
        }
        //: TalkingChatRequestTool.req_atationTool(isAttention: !isAttention, params: dict) { succeed, result, errorModel in
        TamperRequestTool.filing(isAttention: !isAttention, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }
}

// MARK: - 在线人数

//: extension TalkingLiveRoomTopView {
extension ViewReactiveCompatible {
    //: @objc private func onlineNumBtnClick() {
    @objc private func directExpected() {
        //: self.onlineListView.showView(chatGroupId: liveModel.chatGroupId)
        self.onlineListView.price(chatGroupId: liveModel.chatGroupId)
    }

    /// 获取
    //: @objc private func getOnlineNumData() {
    @objc private func tooOnLine() {
        //: TalkingAudienceManager().req_liveRoomOnlineNum(chatGroupId: liveModel.chatGroupId, completion:{ succeed, result, errorModel in
        BarrierReactiveCompatible().reduceWeek(chatGroupId: liveModel.chatGroupId, completion: { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let num = json["num"].string
            let num = json[(String(show_fortName))].string
            //: guard num?.count ?? 0 > 0 else {
            guard num?.count ?? 0 > 0 else {
                //: self.onlineNumBtn.isHidden = true
                self.onlineNumBtn.isHidden = true
                //: return
                return
            }
            //: self.onlineNumBtn.setTitle(num, for: .normal)
            self.onlineNumBtn.setTitle(num, for: .normal)

            //: })
        })
    }

    //: private func startTimer() {
    private func molarConcentration() {
        //: stopTimer()
        haltCos()
        //: onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(getOnlineNumData), userInfo: nil, repeats: true)
        onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(tooOnLine), userInfo: nil, repeats: true)
    }

    //: func stopTimer() {
    func haltCos() {
        //: onlineNunTimer?.invalidate()
        onlineNunTimer?.invalidate()
        //: onlineNunTimer = nil
        onlineNunTimer = nil
    }
}

// MARK: - Event

//: extension TalkingLiveRoomTopView {
extension ViewReactiveCompatible {
    /// 刷新顶部视图
    //: func refreshTopView(_ liveModel: TalkingLiveRoomModel) {
    func wind(_ liveModel: DwellHiddenMeasurable) {
        //: self.liveModel = liveModel
        self.liveModel = liveModel
        //: getOnlineNumData()
        tooOnLine()
        //: nickNameLab.text = liveModel.streamerInfo.nickname
        nickNameLab.text = liveModel.streamerInfo.nickname
        //: uidLab.text = "UID:\(liveModel.streamerInfo.uid)"
        uidLab.text = (String(dataBrideMessage.prefix(4))) + "\(liveModel.streamerInfo.uid)"
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        //: icon.setUrlImage(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.placeHolderImage(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        icon.loadPoiseFinishParkImageEye(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.electronOrbit(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        //: if isAnchor {
        if isAnchor {
            //: refreshLiveStatus()
            exaggerate()
            //: miniBtn.setImage(UIImage.BundleImageNamed(name: "btn_live_mini_nor"), for: .normal)
            miniBtn.setImage(UIImage.locationName(name: (String(appQuickCoordinatorData) + String(app_commentUrl))), for: .normal)
            //: refreshFollow(isAttention: true)
            oppositeNo(isAttention: true)
            //: } else {
        } else {
            //: miniBtn.setImage(UIImage.BundleImageNamed(name: "btn_live_closed_nor"), for: .normal)
            miniBtn.setImage(UIImage.locationName(name: (String(app_gatherMessage) + String(user_shallId))), for: .normal)
            //: refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            oppositeNo(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }

    /// 最小化/关闭直播 按钮点击事件
    //: @objc func miniButtonClick() {
    @objc func coatButton() {
        //: rightBtnBlock?()
        rightBtnBlock?()
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        //: if isAnchor {
        if isAnchor { // 改为小窗口
            //: TalkingLiveManager.shared().live_updateTXLivePreview(smallWindow: true)
            ManagerPushListener.nowPanel().thinWindow(smallWindow: true)
            //: currentViewController()?.navigationController?.popViewController(animated: false)
            exitSchedule()?.navigationController?.popViewController(animated: false)
        }
    }

    //: @objc private func iconBgButtonClick() {
    @objc private func imageSnapClick() {
        //: showUserCard(uid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
        utiliser(uid: String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid))
    }

    /// 展示个人资料卡
    //: private func showUserCard(uid: String) {
    private func utiliser(uid: String) {
        //: let userCard = TalkingLiveUserCardView(frame: .zero, uid: uid)
        let userCard = TransferViewDelegate(frame: .zero, uid: uid)
        //: userCard.delegate = weakVC as? any TalkingLiveUserCardViewDelegate
        userCard.delegate = weakVC as? any DelegateObjectProtocol
        //: userCard.show()
        userCard.lock()
    }

    /// 刷新关注按钮
    //: private func refreshFollow(isAttention: Bool) {
    private func oppositeNo(isAttention: Bool) {
        //: followBtn.isHidden = isAttention
        followBtn.isHidden = isAttention
        //: iconBgBtn.snp.updateConstraints { make in
        iconBgBtn.snp.updateConstraints { make in
            //: make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115):actualWidth(w: 130))
            make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
        }
    }

    /// 刷新直播状态
    //: private func refreshLiveStatus() {
    private func exaggerate() {
        //: self.liveStatusImgV.isHidden = !TalkingLiveManager.shared().isLive
        self.liveStatusImgV.isHidden = !ManagerPushListener.nowPanel().isLive
        //: self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        //: self.svgaView.isHidden = !self.liveStatusImgV.isHidden
        self.svgaView.isHidden = !self.liveStatusImgV.isHidden
    }

    /// 关注按钮点击事件
    //: @objc private func followButtonClick() {
    @objc private func turnClick() {
        //: req_followRequest(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
        delayAttention(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: let isAttention = self.liveModel.streamerInfo.isAttention
            let isAttention = self.liveModel.streamerInfo.isAttention
            //: self.liveModel.streamerInfo.isAttention = !isAttention
            self.liveModel.streamerInfo.isAttention = !isAttention
            //: self.refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            self.oppositeNo(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomTopView {
extension ViewReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func phallic() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(iconBgBtn)
        addSubview(iconBgBtn)
        //: iconBgBtn.addSubview(icon)
        iconBgBtn.addSubview(icon)
        //: iconBgBtn.addSubview(nickNameLab)
        iconBgBtn.addSubview(nickNameLab)
        //: iconBgBtn.addSubview(uidLab)
        iconBgBtn.addSubview(uidLab)
        //: iconBgBtn.addSubview(followBtn)
        iconBgBtn.addSubview(followBtn)
        //: addSubview(miniBtn)
        addSubview(miniBtn)
        //: addSubview(liveStatusImgV)
        addSubview(liveStatusImgV)
        //: addSubview(countdownView)
        addSubview(countdownView)
        //: addSubview(onlineNumBtn)
        addSubview(onlineNumBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func overAttribute() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 68))
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: dataPointTitle + actualWidth(w: 68))

        //: iconBgBtn.snp.makeConstraints { make in
        iconBgBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(dataPointTitle + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 32))
            make.height.equalTo(actualWidth(w: 32))
            //: make.width.equalTo(actualWidth(w: 115))
            make.width.equalTo(actualWidth(w: 115))
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(iconBgBtn.snp.height)
            make.width.height.equalTo(iconBgBtn.snp.height)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 2))
            make.top.equalTo(actualWidth(w: 2))
            //: make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            //: make.width.equalTo(actualWidth(w: 65))
            make.width.equalTo(actualWidth(w: 65))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 2))
            make.bottom.equalTo(-actualWidth(w: 2))
            //: make.leading.width.equalTo(nickNameLab)
            make.leading.width.equalTo(nickNameLab)
        }
        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 6))
            make.trailing.equalTo(-actualWidth(w: 6))
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }

        //: miniBtn.snp.makeConstraints { make in
        miniBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconBgBtn)
            make.centerY.equalTo(iconBgBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: onlineNumBtn.snp.makeConstraints { make in
        onlineNumBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(miniBtn)
            make.centerY.equalTo(miniBtn)
            //: make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            //: make.size.equalTo(miniBtn)
            make.size.equalTo(miniBtn)
        }
        //: let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfang(fontSize: 12)], context: nil)

        //: liveStatusImgV.snp.makeConstraints { make in
        liveStatusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBgBtn)
            make.leading.equalTo(iconBgBtn)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.width.equalTo(rect.width+20)
            make.width.equalTo(rect.width + 20)
        }
        //: let countdown_w = 13.0+countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        let countdown_w = 13.0 + countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        //: countdownView.snp.makeConstraints { make in
        countdownView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(liveStatusImgV)
            make.leading.top.equalTo(liveStatusImgV)
            //: make.size.equalTo(CGSize(width: countdown_w, height: 16))
            make.size.equalTo(CGSize(width: countdown_w, height: 16))
        }
        //: countdownLab.snp.makeConstraints { make in
        countdownLab.snp.makeConstraints { make in
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
