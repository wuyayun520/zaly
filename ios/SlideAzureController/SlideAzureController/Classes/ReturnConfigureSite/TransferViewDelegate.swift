
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_haveData:[UInt8] = [0x55,0x52,0x55,0x48,0x14,0x5f,0x53,0x58,0x59,0x4e,0x6,0x15,0x1c,0x54,0x5d,0x4f,0x1c,0x52,0x53,0x48,0x1c,0x5e,0x59,0x59,0x52,0x1c,0x55,0x51,0x4c,0x50,0x59,0x51,0x59,0x52,0x48,0x59,0x58]

private func drawFront(exclusive num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "Followers" :*/
fileprivate let app_remainTaskPath:String = "movement playerFollo"

/*: "Following" :*/
fileprivate let const_skipWantData:[Character] = ["F","o","l","l","o","w","i","n","g"]

/*: "#E6E6E6" :*/
fileprivate let show_peerFormat:[Character] = ["#","E","6","E","6","E","6"]

/*: "btn_message_more" :*/
fileprivate let data_acceptPath:String = "handle"
fileprivate let const_trendRateValue:String = "tn_meselectronic rounding state rating"
fileprivate let k_teamId:String = "_morescope there others turn match"

/*: "UID:  :*/
fileprivate let const_snakeMessage:[Character] = ["U","I","D",":"," "]

/*: "level_ :*/
fileprivate let k_cameraFormat:[Character] = ["l","e","v","e","l","_"]

/*: "Follow" :*/
fileprivate let kEvaluationData:String = "representative arrangement none acquireFollow"

/*: "Chat" :*/
fileprivate let user_allTitle:String = "master refer scan accelerateChat"

/*: "attentionUid" :*/
fileprivate let appAdministrativeUrl:[Character] = ["a","t","t","e","n","t"]
fileprivate let user_uniformUrl:[Character] = ["i","o","n","U","i","d"]

/*: "source" :*/
fileprivate let kBeamOkUrl:[Character] = ["s","o","u","r","c"]
fileprivate let noti_fragmentKey:[Character] = ["e"]

/*: "Report" :*/
fileprivate let appSpecTalkMsg:String = "honey"
fileprivate let appFollowPath:String = "epodayt"

/*: "Block" :*/
fileprivate let noti_confirmDetectPath:String = "Blockopportunity neck all may"

/*: "Muted" :*/
fileprivate let k_tellText:String = "invite contactMuted"

/*: "Mute" :*/
fileprivate let showShakeValue:[Character] = ["M","u","t","e"]

/*: "#F6F6F6" :*/
fileprivate let appSeekMatterId:String = "bring say#F6F6F6"

/*: "Cancel" :*/
fileprivate let show_airMessage:String = "resort biteCancel"

/*: "Kicked out of the live room" :*/
fileprivate let dataItUrl:String = "proximate user block mineKick"
fileprivate let showEnablecePath:String = "crystal clickt of t"
fileprivate let data_infoValue:[Character] = ["i","v","e"," ","r","o","o","m"]

/*: "uid" :*/
fileprivate let app_restoreDayGenerateMsg:[UInt8] = [0xd0,0xcc,0xc1]

private func browWarn(plat num: UInt8) -> UInt8 {
    return num ^ 165
}

/*: "Shielding Success" :*/
fileprivate let showFollowTitle:[Character] = ["S","h","i"]
fileprivate let data_springCutAccelerateFormat:[Character] = ["e","l","d","i","n","g"," ","S","u","c","c","e","s","s"]

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let mainFairUrl:[UInt8] = [0x66,0x55,0x42,0x7,0x5e,0x48,0x52,0x7,0x54,0x52,0x55,0x42,0x7,0x5e,0x48,0x52,0x7,0x50,0x46,0x49,0x53,0x7,0x53,0x48,0x7,0x44,0x46,0x49,0x44,0x42,0x4b,0x7,0x53,0x4f,0x42,0x7,0x4a,0x52,0x53,0x42,0x18]

/*: "Confirm" :*/
fileprivate let mainMomentFormat:[Character] = ["C"]
fileprivate let k_stumbleConfirmId:[Character] = ["o","n","f","i","r","m"]

/*: "The mute has been lifted~" :*/
fileprivate let app_creationUrl:String = "southwest accept instance effect patternThe mute"
fileprivate let k_analysisName:String = "size club has "
fileprivate let constSumPath:String = "limited key layerlifted~"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransferViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum LovelyRangePropertyProtocol: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol DelegateObjectProtocol: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func fashionNeedAppear(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class TransferViewDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: LovelyRangePropertyProtocol?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(ManagerPushListener.nowPanel().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = ManagerPushListener.nowPanel().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = DisableMeasurable()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: DelegateObjectProtocol?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == DismissReactiveCompatible.share.loginUserMode.userID {
        if uid == DismissReactiveCompatible.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        freshet()
        //: setupSubViewsConstraint()
        substitute()
        //: reqUserCardInfo()
        userPanel()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_haveData.map{drawFront(exclusive: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .bigGallery(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.saveInColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(languageClick), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 15)
        label.font = .bigGallery(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dialog()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 13)
        label.font = .bigGallery(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.saveInColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .saveInColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(app_remainTaskPath.suffix(5)) + "wers").localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.bigGallery(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.bigGallery(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .saveInColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(const_skipWantData)).localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.bigGallery(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.bigGallery(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (String(show_peerFormat)))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.locationName(name: (data_acceptPath.replacingOccurrences(of: "handle", with: "b") + String(const_trendRateValue.prefix(6)) + "sage" + String(k_teamId.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(narrow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: GuideReactiveCompatible = {
        //: let v = TalkingLiveRoomMuteView()
        let v = GuideReactiveCompatible()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension TransferViewDelegate {
    //: func reqUserCardInfo() {
    func userPanel() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        ManagerPushListener.meet(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<DisableMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.untilProperty()
            }
        }
    }

    //: func setUserCardData() {
    func untilProperty() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = (String(const_snakeMessage)) + "\(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.jawWithFinish(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.BundleImageNamed(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.locationName(name: (String(k_cameraFormat)) + "\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            shareInstance(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func shareInstance(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if DismissReactiveCompatible.share.loginUserMode.sex == sex {
        if DismissReactiveCompatible.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = [(String(kEvaluationData.suffix(6))), "@", (String(user_allTitle.suffix(4)))]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.attractiveIn(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
            btn.titleLabel?.font = UIFont.pingfang(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(backJudgeSenderFrom(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (String(show_peerFormat)))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func backJudgeSenderFrom(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if DismissReactiveCompatible.share.loginUserMode.sex == self.userModel.sex {
        if DismissReactiveCompatible.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.fashionNeedAppear(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.blackOnAd()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.fashionNeedAppear(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.blackOnAd()
                //: break
                //: case 1:
                case 1:
                    //: PushThen.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    PushThen.share.resolutionBegin(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.blackOnAd()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    partSender(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.fashionNeedAppear(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.blackOnAd()
                //: break
                //: case 2:
                case 2:
                    //: PushThen.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    PushThen.share.resolutionBegin(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.blackOnAd()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func partSender(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        duringUsufructuary(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func duringUsufructuary(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(String(appAdministrativeUrl) + String(user_uniformUrl))] = uid
        //: dict["source"] = "1"
        dict[(String(kBeamOkUrl) + String(noti_fragmentKey))] = "1"
        //: TalkingChatRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        TamperRequestTool.filing(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func languageClick() {
        //: PushThen.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        PushThen.share.sessionSomebody(uid: self.userModel.uid)
        //: self.dismiss()
        self.blackOnAd()
    }
}

//: extension TalkingLiveUserCardView {
extension TransferViewDelegate {
    //: @objc func moreBtnClick() {
    @objc func narrow() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = [(appSpecTalkMsg.replacingOccurrences(of: "honey", with: "R") + appFollowPath.replacingOccurrences(of: "day", with: "r")).localized, (String(noti_confirmDetectPath.prefix(5))).localized]
        /// 主播
        //: if liveUserId == DismissReactiveCompatible.share.loginUserMode.userID {
        if liveUserId == DismissReactiveCompatible.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append((String(k_tellText.suffix(5))).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append((String(showShakeValue)).localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.PhaseParaOf.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = WritingDataSource.toALesserExtentArray(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (String(appSeekMatterId.suffix(7))))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func lock() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? DepictionThen.getWindow())
        popView?.withoutView(view: self.exitSchedule()?.view ?? DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func blackOnAd() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension TransferViewDelegate: MoveViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func isSpan(index: Int, title _: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = PositionView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.priceBlack(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            AllowanceReactiveCompatible.maximal(title: nil, message: k_blockFailValue, leftBtnTitle: (String(show_airMessage.suffix(6))).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                ThresholdLevelRequestManager.burnMention(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: if self.liveUserId == DismissReactiveCompatible.share.loginUserMode.userID {
                        if self.liveUserId == DismissReactiveCompatible.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(dataItUrl.suffix(4)) + "ed ou" + String(showEnablecePath.suffix(6)) + "he l" + String(data_infoValue)).localized
                            //: ProgressHUD.toast(toastStr)
                            InsertProgressHUD.overDeadline(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: user_popValue,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: [String(bytes: app_restoreDayGenerateMsg.map{browWarn(plat: $0)}, encoding: .utf8)!: self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (String(showFollowTitle) + String(data_springCutAccelerateFormat)).localized
                            //: ProgressHUD.toast(toastStr)
                            InsertProgressHUD.overDeadline(toastStr)
                        }
                        //: self.dismiss()
                        self.blackOnAd()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                AllowanceReactiveCompatible.maximal(title: nil, message: String(bytes: mainFairUrl.map{$0^39}, encoding: .utf8)!.localized, leftBtnTitle: (String(show_airMessage.suffix(6))).localized, rightBtnTitle: (String(mainMomentFormat) + String(k_stumbleConfirmId)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()
                    //: ProgressHUD.show()
                    InsertProgressHUD.momentShow()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    BarrierReactiveCompatible().systemOfMacrophages(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        InsertProgressHUD.detectDismiss()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.showGuidanceName(showMsg: (String(app_creationUrl.suffix(8)) + String(k_analysisName.suffix(5)) + "been " + String(constSumPath.suffix(7))).localized)
                        }
                        //: self.dismiss()
                        self.blackOnAd()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.hiddenCap()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.blackOnAd()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension TransferViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func freshet() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func substitute() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(main_logStr / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-main_logStr / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(main_logStr / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.exitSchedule()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.exitSchedule()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.blackOnAd()
        }
    }
}
