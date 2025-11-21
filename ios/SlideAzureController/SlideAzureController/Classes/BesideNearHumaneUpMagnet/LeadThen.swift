
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_coatKey:[UInt8] = [0x1a,0x1d,0x1a,0x7,0x5b,0x10,0x1c,0x17,0x16,0x1,0x49,0x5a,0x53,0x1b,0x12,0x0,0x53,0x1d,0x1c,0x7,0x53,0x11,0x16,0x16,0x1d,0x53,0x1a,0x1e,0x3,0x1f,0x16,0x1e,0x16,0x1d,0x7,0x16,0x17]

private func bodyExplore(can num: UInt8) -> UInt8 {
    return num ^ 115
}

/*: "male_invite_call_mask" :*/
fileprivate let user_handHangName:String = "male_idot laboratory vital read"
fileprivate let show_mayId:String = "_callservice decide"
fileprivate let userCuteValue:[Character] = ["_","m","a","s","k"]

/*: "get json error" :*/
fileprivate let const_makeupFormat:String = "get jsure related birthday"
fileprivate let userSpreadUrl:String = "errcancel"

/*: "#FF2348" :*/
fileprivate let noti_mechanismMsg:String = "read start stack snake#FF2348"

/*: "She invites you to call" :*/
fileprivate let userAlwaysName:String = "will my source laboratoryShe "
fileprivate let appBoltTitle:String = "combine middle feed talk cells yo"
fileprivate let appVisitorUrl:String = "impulse button task cal"
fileprivate let noti_migrationStr:[Character] = ["l"]

/*: "btn_video_drop_nor" :*/
fileprivate let kSuitKey:[Character] = ["b","t","n","_","v","i","d"]
fileprivate let notiPushVehicleConnectUrl:String = "limited builder arrow withineo_d"

/*: "male_invite_call_nor" :*/
fileprivate let notiLowValue:[Character] = ["m","a","l","e","_","i","n","v","i"]
fileprivate let k_connectionMessage:[Character] = ["t","e","_","c","a","l","l","_","n","o","r"]

/*: "transform.scale" :*/
fileprivate let mainDisappearTitle:String = "TRANSF"
fileprivate let showUniformText:String = "caplye"

/*: "animation" :*/
fileprivate let mainDocumentMsg:[Character] = ["a","n","i","m","a","t","i"]
fileprivate let showPresentWealthySameUrl:[Character] = ["o","n"]

/*: "icon_Chat_freetimes" :*/
fileprivate let appBeardTitle:String = "rush spec camera timeicon_C"
fileprivate let dataAidMessage:String = "partimes"

/*: "limit" :*/
fileprivate let userFadeName:[UInt8] = [0xc3,0xc6,0xc2,0xc6,0xdb]

private func decideFuture(pair num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "uid" :*/
fileprivate let user_rankId:String = "writtenid"

/*: "invitePop" :*/
fileprivate let dataToolMessage:String = "re"
fileprivate let dataGameFadeId:[Character] = ["n","v","i","t","e","P","o","p"]

/*: "headPic" :*/
fileprivate let dataPingKey:String = "magnitude environment personalheadPic"

/*: "videoUrl" :*/
fileprivate let appHumanUrl:String = "slow nextvideoUrl"

/*: "videoPop" :*/
fileprivate let const_mouthValue:[Character] = ["v","i","d","e","o","P","o"]
fileprivate let showReportFormat:String = "transmission"

/*: "yyyy-MM-dd" :*/
fileprivate let show_mediumPath:String = "resolution"
fileprivate let userSoulCanValue:String = "yyy-sum constraint"

/*: "today" :*/
fileprivate let appShirtName:String = "toafteray"

/*: "times" :*/
fileprivate let notiFollowSeekText:String = "tteames"

/*: "ShowMaleInviteCallViewDateKey_ :*/
fileprivate let const_includeFormat:String = "schedule par taskShow"
fileprivate let notiAllStr:String = "nviteCarequest terms opposite"
fileprivate let kVersionTitle:String = "visiblevisible"
fileprivate let app_trailName:String = "plan think reach pattern resistanceView"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2025/8/21.
//

//: import UIKit
import UIKit

//: class MaleInviteCallView: UIView {
class LeadThen: UIView {
    //: var dismissBlock: (() -> Void)?
    var dismissBlock: (() -> Void)?
    //: private var popView: TalkingPopView?
    private var popView: TransferPopView?
    /// 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    /// 拨打中背景音乐
    //: private var bgmPlayer: TalkingCallBGMPlayer?
    private var bgmPlayer: ApplicationReactiveCompatible?
    /// 视频封面
    //: private var myVideoUrl = ""
    private var myVideoUrl = ""
    /// 通话头像
    //: private var callHeadPic = ""
    private var callHeadPic = ""
    /// 用户不在线时，是否换个用户拨打
    //: private var needCallAgain = false
    private var needCallAgain = false

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_coatKey.map{bodyExplore(can: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        v.image = UIImage.electronOrbit(sex: FenceSequence.female.rawValue)
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.cornerRadius = 16
        v.layer.cornerRadius = 16
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    // 视频播放器
    //: private lazy var videoPlayer: TalkingVideoPlayerManager = {
    private lazy var videoPlayer: PackagingPlayListener = {
        //: let player = TalkingVideoPlayerManager()
        let player = PackagingPlayListener()
        //: player.setMute(bEnable: true)
        player.scheduleColumn(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var maskTopImgV: UIImageView = {
    private lazy var maskTopImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: let img = UIImage.BundleImageNamed(name: "male_invite_call_mask")
        let img = UIImage.locationName(name: (String(user_handHangName.prefix(6)) + "nvite" + String(show_mayId.prefix(5)) + String(userCuteValue)))
        //: if let cgimage = img.cgImage {
        if let cgimage = img.cgImage {
            //: v.image = UIImage(cgImage: cgimage, scale: img.scale, orientation: .down)
            v.image = UIImage(cgImage: cgimage, scale: img.scale, orientation: .down)
        }
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: bgImgView.addSubview(v)
        bgImgView.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: bgImgView.addSubview(player)
        bgImgView.addSubview(player)
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_countdown_bg)
        let url = BlackEffectTool.default.recordingRevenue(type: .Live_countdown_bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(const_makeupFormat.prefix(5)) + "son " + userSpreadUrl.replacingOccurrences(of: "cancel", with: "or")))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaNumLab: UILabel = {
    private lazy var svgaNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 20)
        lab.font = UIFont.pingfang(fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.textColor = UIColor(hex: "#FF2348")
        lab.textColor = UIColor(hex: (String(noti_mechanismMsg.suffix(7))))
        //: bgImgView.addSubview(lab)
        bgImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.text = "She invites you to call".localized
        label.text = (String(userAlwaysName.suffix(4)) + "invite" + String(appBoltTitle.suffix(4)) + "u to" + String(appVisitorUrl.suffix(4)) + String(noti_migrationStr)).localized
        //: label.font = UIFont.pingfangMediumFont(fontSize: 18)
        label.font = UIFont.pingfang(fontSize: 18)
        //: label.textColor = .white
        label.textColor = .white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: bgImgView.addSubview(label)
        bgImgView.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maskBottomImgV: UIImageView = {
    private lazy var maskBottomImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "male_invite_call_mask")
        v.image = UIImage.locationName(name: (String(user_handHangName.prefix(6)) + "nvite" + String(show_mayId.prefix(5)) + String(userCuteValue)))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: bgImgView.addSubview(v)
        bgImgView.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(kSuitKey) + String(notiPushVehicleConnectUrl.suffix(4)) + "rop_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lockClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: bgImgView.addSubview(btn)
        bgImgView.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    // 接听按钮
    //: private lazy var acceptBtn: UIButton = {
    private lazy var acceptBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "male_invite_call_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(notiLowValue) + String(k_connectionMessage))), for: .normal)
        //: btn.addTarget(self, action: #selector(acceptButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tickMove), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        // 添加关键帧动画
        //: let keyAnimation = CAKeyframeAnimation()
        let keyAnimation = CAKeyframeAnimation()
        //: keyAnimation.keyPath = "transform.scale"
        keyAnimation.keyPath = (mainDisappearTitle.lowercased() + "orm.s" + showUniformText.replacingOccurrences(of: "ply", with: "l"))
        //: keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
        keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: actualWidth(w: 84/70), y: actualWidth(w: 84/70))),
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: actualWidth(w: 84 / 70), y: actualWidth(w: 84 / 70))),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1))]
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1))]
        //: keyAnimation.duration = 1.2
        keyAnimation.duration = 1.2
        //: keyAnimation.repeatCount = MAXFLOAT
        keyAnimation.repeatCount = MAXFLOAT
        //: keyAnimation.isRemovedOnCompletion = false
        keyAnimation.isRemovedOnCompletion = false
        //: keyAnimation.fillMode = .both
        keyAnimation.fillMode = .both
        //: keyAnimation.calculationMode = .cubicPaced
        keyAnimation.calculationMode = .cubicPaced
        //: btn.layer.add(keyAnimation, forKey: "animation")
        btn.layer.add(keyAnimation, forKey: (String(mainDocumentMsg) + String(showPresentWealthySameUrl)))
        //: bgImgView.addSubview(btn)
        bgImgView.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    // 免费通话图标
    //: private lazy var freeImg: UIImageView = {
    private lazy var freeImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.locationName(name: (String(appBeardTitle.suffix(6)) + "hat_fre" + dataAidMessage.replacingOccurrences(of: "part", with: "et")))
        //: img.isHidden = true
        img.isHidden = true
        //: bgImgView.addSubview(img)
        bgImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    // 通话控件
    //: private lazy var videoCallManager: TalkingCallMenuManager = {
    private lazy var videoCallManager: RedObjectProtocol = {
        //: let m = TalkingCallMenuManager()
        let m = RedObjectProtocol()
        //: return m
        return m
        //: }()
    }()
}

// MARK: - Load Data

//: extension MaleInviteCallView {
extension LeadThen {
    /// 加载视频匹配用户数据
    //: private func loadMatchData(needRefreshUI: Bool) {
    private func game(needRefreshUI: Bool) {
        //: TalkingQuickVideoManager.req_getMatchV4List(params: ["limit":20]) { succeed, result, errorModel in
        OfVideoManager.holderPortfolio(params: [String(bytes: userFadeName.map{decideFuture(pair: $0)}, encoding: .utf8)!: 20]) { succeed, result, _ in
            //: guard succeed == true, let result = result as? [[String: Any]], !result.isEmpty else {
            guard succeed == true, let result = result as? [[String: Any]], !result.isEmpty else {
                //: self.dismiss()
                self.notAttractiveDismiss()
                //: return
                return
            }
            // 随机选择一个字典
            //: guard let randomDict = result.randomElement() else {
            guard let randomDict = result.randomElement() else {
                //: self.dismiss()
                self.notAttractiveDismiss()
                //: return
                return
            }
            //: self.videoCallManager.uid = randomDict["uid"] as? String ?? ""
            self.videoCallManager.uid = randomDict[(user_rankId.replacingOccurrences(of: "written", with: "u"))] as? String ?? ""
            //: self.videoCallManager.source = "invitePop"
            self.videoCallManager.source = (dataToolMessage.replacingOccurrences(of: "re", with: "i") + String(dataGameFadeId))

            //: if needRefreshUI == true {
            if needRefreshUI == true { // 更新当前用户信息，刷新UI
                //: self.callHeadPic = randomDict["headPic"] as? String ?? ""
                self.callHeadPic = randomDict[(String(dataPingKey.suffix(7)))] as? String ?? ""
                //: self.myVideoUrl = randomDict["videoUrl"] as? String ?? ""
                self.myVideoUrl = randomDict[(String(appHumanUrl.suffix(8)))] as? String ?? ""
                //: self.refreshUI()
                self.terms()

                //: } else {
            } else { // 直接拨打
                //: self.callVideo()
                self.tiptoe()
            }
        }
    }
}

// MARK: - Event

//: extension MaleInviteCallView {
extension LeadThen {
    /// 展示弹窗
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - videoUrl: 视频封面
    ///   - headPic: 头像
    //: func show(uid: String, videoUrl: String, headPic: String) {
    func estimated(uid: String, videoUrl: String, headPic: String) {
        // 记录一次展示次数
        //: MaleInviteCallView.writeMaleInviteCallViewTimes()
        LeadThen.taPure()

        //: if !uid.isEmpty {
        if !uid.isEmpty { // 直接展示，没有再取匹配池
            //: videoCallManager.uid = uid
            videoCallManager.uid = uid
            //: videoCallManager.source = "videoPop"
            videoCallManager.source = (String(const_mouthValue) + showReportFormat.replacingOccurrences(of: "transmission", with: "p"))
            //: callHeadPic = headPic
            callHeadPic = headPic
            //: myVideoUrl = videoUrl
            myVideoUrl = videoUrl
            //: needCallAgain = true
            needCallAgain = true
            //: refreshUI()
            terms()

            //: } else {
        } else {
            // 直接取匹配池
            //: loadMatchData(needRefreshUI: true)
            game(needRefreshUI: true)
        }
    }

    /// 拨打视频通话
    //: private func callVideo() {
    private func tiptoe() {
        //: videoCallManager.checkAndCallVideo()
        videoCallManager.charm()
        //: videoCallManager.onReqestCallErrorBlock = { [weak self] errNo in
        videoCallManager.onReqestCallErrorBlock = { [weak self] errNo in
            //: guard let self = self, needCallAgain == true, errNo == 250822 else {
            guard let self = self, needCallAgain == true, errNo == 250_822 else {
                //: self?.dismiss()
                self?.notAttractiveDismiss()
                //: return
                return
            }
            //: self.needCallAgain = false
            self.needCallAgain = false
            //: self.loadMatchData(needRefreshUI: false)
            self.game(needRefreshUI: false)
        }
    }

    /// 取消通话按钮点击事件
    //: @objc private func hangupButtonClick() {
    @objc private func lockClick() {
        //: dismiss()
        notAttractiveDismiss()
    }

    /// 接听按钮点击事件
    //: @objc private func acceptButtonClick() {
    @objc private func tickMove() {
        //: self.callVideo()
        self.tiptoe()
    }

    //: @objc private func dismiss() {
    @objc private func notAttractiveDismiss() {
        //: dismissBlock?()
        dismissBlock?()
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
        //: timeoutTimer?.invalidate()
        timeoutTimer?.invalidate()
        //: timeoutTimer = nil
        timeoutTimer = nil
        //: stopBGM()
        inhereIn()
    }

    //: func closeView() {
    func inviteCurrent() {
        //: dismiss()
        notAttractiveDismiss()
    }
}

// MARK: - 控制每日展示的Key

//: extension MaleInviteCallView {
extension LeadThen {
    /// 检测是否可以展示邀请视频
    /// - Returns: 检测结果
    //: class func checkShowMaleInviteCallView() -> Bool {
    class func visualizer() -> Bool {
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.switchly(date: Date(), dateFormat: (show_mediumPath.replacingOccurrences(of: "resolution", with: "y") + String(userSoulCanValue.prefix(4)) + "MM-dd"))
        //: let dict = Defaults.dictionary(forKey: MaleInviteCallView.getMaleInviteCallViewKey())
        let dict = data_partyText.dictionary(forKey: LeadThen.original())
        //: let storedDate = dict?["today"] as? String
        let storedDate = dict?[(appShirtName.replacingOccurrences(of: "after", with: "d"))] as? String
        //: var times = dict?["times"] as? Int ?? 0
        var times = dict?[(notiFollowSeekText.replacingOccurrences(of: "team", with: "im"))] as? Int ?? 0
        //: if dict == nil || storedDate != today {
        if dict == nil || storedDate != today {
            //: times = 0
            times = 0
        }
        //: if times >= DismissReactiveCompatible.share.appUserConfigMode.inviteTimes {
        if times >= DismissReactiveCompatible.share.appUserConfigMode.inviteTimes {
            //: return false
            return false
        }
        //: return true
        return true
    }

    /// 消耗当日一次弹窗额度
    //: class private func writeMaleInviteCallViewTimes() {
    private class func taPure() {
        //: let key = MaleInviteCallView.getMaleInviteCallViewKey()
        let key = LeadThen.original()
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.switchly(date: Date(), dateFormat: (show_mediumPath.replacingOccurrences(of: "resolution", with: "y") + String(userSoulCanValue.prefix(4)) + "MM-dd"))
        //: var dict = Defaults.dictionary(forKey: key) ?? [:]
        var dict = data_partyText.dictionary(forKey: key) ?? [:]
        //: let storedDate = dict["today"] as? String
        let storedDate = dict[(appShirtName.replacingOccurrences(of: "after", with: "d"))] as? String
        //: var times = dict["times"] as? Int ?? 0
        var times = dict[(notiFollowSeekText.replacingOccurrences(of: "team", with: "im"))] as? Int ?? 0
        //: if storedDate != today {
        if storedDate != today {
            //: times = 0
            times = 0
        }
        //: dict["today"] = today
        dict[(appShirtName.replacingOccurrences(of: "after", with: "d"))] = today
        //: dict["times"] = times + 1
        dict[(notiFollowSeekText.replacingOccurrences(of: "team", with: "im"))] = times + 1
        //: Defaults.set(dict, forKey: key)
        data_partyText.set(dict, forKey: key)
    }

    /// 展示邀请视频弹窗的Key
    //: class private func getMaleInviteCallViewKey() -> String {
    private class func original() -> String {
        //: return "ShowMaleInviteCallViewDateKey_\(DismissReactiveCompatible.share.loginUserMode.userID)"
        return (String(const_includeFormat.suffix(4)) + "MaleI" + String(notiAllStr.prefix(7)) + kVersionTitle.replacingOccurrences(of: "visible", with: "l") + String(app_trailName.suffix(4)) + "DateKey_") + "\(DismissReactiveCompatible.share.loginUserMode.userID)"
    }
}

// MARK: - 通话音乐

//: extension MaleInviteCallView {
extension LeadThen {
    /// 初始化视频通话背景音乐
    //: private func setUpBGMAndStartPlayer() {
    private func job() {
        //: self.bgmPlayer = TalkingCallBGMPlayer.callBGMPlayer(type: .invitePop)
        self.bgmPlayer = ApplicationReactiveCompatible.limitedType(type: .invitePop)
        //: self.bgmPlayer?.play()
        self.bgmPlayer?.stage()
    }

    /// 停止播放背景音乐
    //: private func stopBGM() {
    private func inhereIn() {
        //: guard self.bgmPlayer != nil else { return }
        guard self.bgmPlayer != nil else { return }
        //: self.bgmPlayer?.stop()
        self.bgmPlayer?.belowAppropriate()
        //: self.bgmPlayer = nil
        self.bgmPlayer = nil
    }
}

// MARK: - BilliardPlayerThen【视频播放器】

//: extension MaleInviteCallView: TalkingVideoPlayerDelegate {
extension LeadThen: BilliardPlayerThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: if status == .Playing {
        if status == .Playing {
            //: self.videoPlayer.setRenderMode(renderMode: .FILL_SCREEN)
            self.videoPlayer.succeed(renderMode: .FILL_SCREEN)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {}
    func tillChannelTime(player _: PackagingPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {}
    func funcCompareProgress(player _: PackagingPlayListener, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension MaleInviteCallView {
extension LeadThen {
    /// 刷新UI
    //: private func refreshUI() {
    private func terms() {
        //: if self.popView == nil {
        if self.popView == nil {
            //: self.popView = TalkingPopView.init(frame: UIScreen.main.bounds)
            self.popView = TransferPopView(frame: UIScreen.main.bounds)
            //: self.popView?.initWithView(view: self)
            self.popView?.streetSmart(view: self)
            //: self.popView?.showInView(view: DepictionThen.getWindow())
            self.popView?.withoutView(view: DepictionThen.fossilization())
            //: self.popView?.isRemoveTapGes = true
            self.popView?.isRemoveTapGes = true
        }
        //: setupSubViewsConstraint()
        ping()
        //: if timeoutTimer == nil {
        if timeoutTimer == nil {
            //: var countdown = 30
            var countdown = 30
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.svgaNumLab.text = "\(countdown)"
                self.svgaNumLab.text = "\(countdown)"
                //: countdown -= 1
                countdown -= 1
                //: if countdown <= 0 {
                if countdown <= 0 {
                    //: self.dismiss()
                    self.notAttractiveDismiss()
                }
                //: })
            })
            //: timeoutTimer?.fire()
            timeoutTimer?.fire()
        }
        //: setUpBGMAndStartPlayer()
        job()
        //: bgImgView.setUrlImage(urlStr: callHeadPic)
        bgImgView.bolt(urlStr: callHeadPic)

        //: if !myVideoUrl.isEmpty {
        if !myVideoUrl.isEmpty {
            //: videoPlayer.delegate = self
            videoPlayer.delegate = self
            //: videoPlayer.playerWithUrlAndVideoView(url: self.myVideoUrl, view: self.bgImgView)
            videoPlayer.loseTrack(url: self.myVideoUrl, view: self.bgImgView)
            //: } else {
        } else {
            //: videoPlayer.stopPlay()
            videoPlayer.storageReward()
            //: videoPlayer.removeVideoWidget()
            videoPlayer.since()
        }

        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: acceptBtn.isHidden = false
        acceptBtn.isHidden = false
        //: freeImg.isHidden = !(DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0)
        freeImg.isHidden = !(DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func ping() {
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 279), height: actualWidth(w: 346)))
            make.size.equalTo(CGSize(width: actualWidth(w: 279), height: actualWidth(w: 346)))
        }

        //: maskTopImgV.snp.remakeConstraints { make in
        maskTopImgV.snp.remakeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 70))
            make.height.equalTo(actualWidth(w: 70))
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.top.equalTo(actualWidth(w: 20))
            make.leading.top.equalTo(actualWidth(w: 20))
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: svgaNumLab.snp.makeConstraints { make in
        svgaNumLab.snp.makeConstraints { make in
            //: make.center.width.height.equalTo(svgaPlayer)
            make.center.width.height.equalTo(svgaPlayer)
        }

        //: titleLab.snp.remakeConstraints { make in
        titleLab.snp.remakeConstraints { make in
            //: make.centerY.equalTo(svgaPlayer)
            make.centerY.equalTo(svgaPlayer)
            //: make.leading.equalTo(svgaPlayer.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(svgaPlayer.snp.trailing).offset(actualWidth(w: 10))
            //: make.trailing.equalTo(-actualWidth(w: 20))
            make.trailing.equalTo(-actualWidth(w: 20))
        }

        //: maskBottomImgV.snp.remakeConstraints { make in
        maskBottomImgV.snp.remakeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(maskTopImgV)
            make.height.equalTo(maskTopImgV)
        }

        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 20))
            make.leading.equalTo(actualWidth(w: 20))
            //: make.bottom.equalTo(-actualWidth(w: 40))
            make.bottom.equalTo(-actualWidth(w: 40))
            //: make.size.equalTo(actualWidth(w: 56))
            make.size.equalTo(actualWidth(w: 56))
        }

        //: acceptBtn.snp.remakeConstraints { make in
        acceptBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 20))
            make.trailing.equalTo(-actualWidth(w: 20))
            //: make.centerY.equalTo(hangupBtn)
            make.centerY.equalTo(hangupBtn)
            //: make.size.equalTo(actualWidth(w: 70))
            make.size.equalTo(actualWidth(w: 70))
        }

        //: freeImg.snp.makeConstraints { make in
        freeImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(acceptBtn).offset(actualWidth(w: 2))
            make.trailing.equalTo(acceptBtn).offset(actualWidth(w: 2))
            //: make.top.equalTo(acceptBtn).offset(actualWidth(w: -8))
            make.top.equalTo(acceptBtn).offset(actualWidth(w: -8))
            //: make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 28)))
            make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 28)))
        }
    }
}
