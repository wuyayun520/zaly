
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_compositionId:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

/*: "Say something...     " :*/
fileprivate let main_smartMsg:String = "Say somvisible finger"
fileprivate let kBridgeData:String = "E"
fileprivate let user_sequencePath:String = "torientationng"

/*: "btn_video_gift_nor" :*/
fileprivate let data_trainMsg:String = "btn_vpicture import constraint together"
fileprivate let user_computePath:String = "_gifand nor"

/*: "btn_live_gd_nor" :*/
fileprivate let showTaskTitle:String = "dark leave write statementbtn_li"
fileprivate let const_bubbleStr:String = "photor"

/*: "btn_live_gd_pre" :*/
fileprivate let noti_pauseId:[Character] = ["b","t","n","_","l","i","v","e","_","g","d"]
fileprivate let mainCorruptUrl:String = "selected fatal bubble application fort_pre"

/*: "btn_live_sx_nor" :*/
fileprivate let const_resumePath:[Character] = ["b","t","n","_","l","i","v","e","_","s"]
fileprivate let constFeedName:String = "estimated my general wheel upperx_nor"

/*: "btn_live_sx_pre" :*/
fileprivate let main_noseTitle:[Character] = ["b","t","n","_","l"]
fileprivate let noti_writingFormat:String = "ive_sapply tick wind"

/*: "#FF2348" :*/
fileprivate let main_cuteFormat:[Character] = ["#","F","F","2","3"]
fileprivate let appMigrationName:[Character] = ["4","8"]

/*: "btn_live_yx_nor" :*/
fileprivate let const_lowerUrl:String = "king living gravity spanbtn_liv"
fileprivate let kCorrectMsg:String = "information easterne_yx_nor"

/*: "btn_live_yx_pre" :*/
fileprivate let app_additionalKey:String = "trend why quest admin abtn_"
fileprivate let main_corruptPath:[Character] = ["x","_","p","r","e"]

/*: "toUid" :*/
fileprivate let k_satisfyCommentKey:String = "toUidyourself ad"

/*: "giftId" :*/
fileprivate let appSiblingNeverUrl:String = "G"
fileprivate let notiTotaleractionFormat:[Character] = ["i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let const_decreaseUrl:String = "southwesti"
fileprivate let const_beautifulTitle:[Character] = ["f","t","N","u","m"]

/*: "pkgItemsetId" :*/
fileprivate let main_successValue:String = "sample secretpkgIte"

/*: "totalMfCoin" :*/
fileprivate let data_beautyStr:[Character] = ["t","o","t","a","l","M","f","C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol BlendViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func quitLimited()
}

//: class TalkingLiveRoomBottomView: UIView {
class AdReactiveCompatible: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: BlendViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        singleTop()
        //: setupSubViewsConstraint()
        itemMark()
        //: AfterThen.shared.func__addDelegate(self)
        AfterThen.shared.funcSocialTranslateDelegate(self)
        //: refreshRedCountStatus()
        enter()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_compositionId.map{$0^11}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(main_smartMsg.prefix(7)) + kBridgeData.lowercased() + user_sequencePath.replacingOccurrences(of: "orientation", with: "hi") + "...     ").localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.openColor(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(commentMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_trainMsg.prefix(5)) + "ideo" + String(user_computePath.prefix(4)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(data_trainMsg.prefix(5)) + "ideo" + String(user_computePath.prefix(4)) + "t_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(switchicial), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(showTaskTitle.suffix(6)) + "ve_gd_" + const_bubbleStr.replacingOccurrences(of: "photo", with: "no"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.locationName(name: (String(noti_pauseId) + String(mainCorruptUrl.suffix(4)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(creationClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_resumePath) + String(constFeedName.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.locationName(name: (String(main_noseTitle) + String(noti_writingFormat.prefix(5)) + "x_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(inmate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(main_cuteFormat) + String(appMigrationName)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_lowerUrl.suffix(7)) + String(kCorrectMsg.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.locationName(name: (String(app_additionalKey.suffix(4)) + "live_y" + String(main_corruptPath))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(originalMedia), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: YaDataSource = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = YaDataSource(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: UndersizedThen = {
        //: let v = TalkingLiveRoomMoreView()
        let v = UndersizedThen()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: GrantViewFlowLayout = {
        //: let v = TalkingLiveRoomGamesView()
        let v = GrantViewFlowLayout()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension AdReactiveCompatible {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func commentMove() {
        //: delegate?.func__commentBtnClick()
        delegate?.quitLimited()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func switchicial() {
        //: func__sendGift()
        oldWith()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func inmate() {
        //: PushThen.share.func__pushToChatListVC(isHalfView: true)
        PushThen.share.futurismView(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func creationClick() {
        //: moreView.showView()
        moreView.theNose()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func originalMedia() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.crushRequireInmate(from: .LiveRoom)
    }
}

// MARK: - ManufacturerManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension AdReactiveCompatible: ManufacturerManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func failure(count _: Int) {
        //: refreshRedCountStatus()
        enter()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func enter() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [AfterThen.shared.topConvList, AfterThen.shared.norConvList]
        let convLists = [AfterThen.shared.topConvList, AfterThen.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension AdReactiveCompatible {
    //: func func__sendGift() {
    func oldWith() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        MotivationThen.share.tillTurn(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.albumChoiceRes()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func albumChoiceRes() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.path(needReload: true, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        exitSchedule()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.score()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: TillGiftModel, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.starBy(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func starBy(giftModel: TillGiftModel, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            enablece(showMsg: main_textStr)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(k_satisfyCommentKey.prefix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(appSiblingNeverUrl.lowercased() + String(notiTotaleractionFormat))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(const_decreaseUrl.replacingOccurrences(of: "southwest", with: "g") + String(const_beautifulTitle))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(main_successValue.suffix(6)) + "msetId")] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        TamperRequestTool.microscopic(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.circumferenceResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.localRoad(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.basic(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func basic(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(data_beautyStr))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(data_beautyStr))] as! NSNumber
            //: DismissReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            DismissReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.path(needReload: false, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func circumferenceResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard DismissReactiveCompatible.share.loginUserMode.status != 1 else {
            guard DismissReactiveCompatible.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    enablece(showMsg: errorStr)
                }
                //: return
                return
            }
            //: PushThen.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            PushThen.share.twoParams(clickEvent: showLimitTitle, sufficient: false)
            //: giftView.dismissView()
            giftView.maneuver()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = DisenableThen(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData))
            //: view.show()
            view.animaShow()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                enablece(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension AdReactiveCompatible {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func miniskirt(_ liveModel: DwellHiddenMeasurable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == DismissReactiveCompatible.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if DismissReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue,
        if DismissReactiveCompatible.share.appStatus != AfterArtSumLiteral.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func singleTop() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func itemMark() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
