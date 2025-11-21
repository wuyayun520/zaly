
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_theaterKey:[UInt8] = [0x53,0x58,0x53,0x5e,0x12,0x4d,0x59,0x4e,0x4f,0x5c,0x24,0x13,0xa,0x52,0x4b,0x5d,0xa,0x58,0x59,0x5e,0xa,0x4c,0x4f,0x4f,0x58,0xa,0x53,0x57,0x5a,0x56,0x4f,0x57,0x4f,0x58,0x5e,0x4f,0x4e]

fileprivate func panOriginal(above num: UInt8) -> UInt8 {
    let value = Int(num) + 22
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_home_shadow_icon" :*/
fileprivate let mainPushFormat:[Character] = ["i","m","g","_","h","o","m","e","_","s","h","a","d","o","w","_"]
fileprivate let dataHolderFollowingStr:String = "icobuild"

/*: "icon_lounge" :*/
fileprivate let noti_platformTitle:String = "continue gesture mention from undericon_lou"
fileprivate let constWhiteMessage:String = "ngnumb"

/*: "icon_home_v" :*/
fileprivate let dataRobotTitle:String = "ICON"

/*: "icon_home_position" :*/
fileprivate let noti_seeText:String = "icon_homelate bite"
fileprivate let kApplicationHairContent:String = "_posbride schedule personal"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let mainHighlightMsg:String = "detect theater packbtn_dy"
fileprivate let const_holderMessage:String = "entry"
fileprivate let app_yesterdayFormat:String = "p_norad whether scan direct"

/*: "Block" :*/
fileprivate let user_recoverKingNaturalUrl:[Character] = ["B","l","o","c","k"]

/*: "btn_friends_block" :*/
fileprivate let constRecordId:String = "btn_fpermission bite final example discount"
fileprivate let user_eachMessage:[Character] = ["r","i","e","n","d","s"]
fileprivate let notiFinishKey:[Character] = ["_","b","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let mainSimultaneouslyStr:String = "Cancelfull house"

/*: "btn_friends_block_cancel" :*/
fileprivate let kNorMessage:String = "btn_fliquid limit fee structure"
fileprivate let const_waitUrl:String = "ds_blannouncement road star element"
fileprivate let app_exactlyMessage:String = "ock_cday stall long news"
fileprivate let noti_contrastName:String = "anccirclel"

/*: "iv_home_game" :*/
fileprivate let kNoteStr:[Character] = ["i","v","_","h","o","m","e","_","g","a"]
fileprivate let appHumanTitle:[Character] = ["m","e"]

/*: "transform.scale" :*/
fileprivate let dataCoreKey:String = "tlengthansf"
fileprivate let k_randomStr:String = "scavisual"
fileprivate let showHungValue:String = "scope"

/*: "zoom&shake" :*/
fileprivate let appLiquidYetUrl:String = "zcirclecirclem"
fileprivate let mainCompeteName:[Character] = ["e"]

/*: "get json error" :*/
fileprivate let noti_electronId:String = "gesquare"
fileprivate let show_funPath:[Character] = [" ","j","s","o","n"," ","e","r","r","o","r"]

/*: "icon_popularhome_chat" :*/
fileprivate let userBeastKey:String = "icbadn"
fileprivate let userInstanceName:String = "trunkarh"
fileprivate let const_intoValue:[Character] = ["o","m","e","_","c","h","a","t"]

/*: "Say hi successfully~" :*/
fileprivate let appSpendMsg:String = "always printSay hi "
fileprivate let userEntryValue:String = "sreadyc"
fileprivate let noti_statusKey:[Character] = ["c","e","s","s","f","u","l","l","y","~"]

/*: "#2DF2FF" :*/
fileprivate let constLineKey:String = "#2DF2FFtwo pair space together"

/*: "Live" :*/
fileprivate let show_differenceSessionUrl:[Character] = ["L","i","v","e"]

/*: "#48FF1E" :*/
fileprivate let showSweetUrl:String = "nobody"
fileprivate let app_inputTitle:[Character] = ["4","8","F","F","1","E"]

/*: "Online" :*/
fileprivate let user_presentationStr:String = "mouth secret why letOnline"

/*: "#FF4B7F" :*/
fileprivate let app_migrationFormat:[Character] = ["#","F","F","4","B","7","F"]

/*: "busy" :*/
fileprivate let data_platStr:[Character] = ["b","u","s","y"]

/*: "icon_popularhome_hi" :*/
fileprivate let app_lowerName:[Character] = ["i","c","o","n","_","p","o","p","u","l","a","r"]
fileprivate let kNearbyTitle:String = "explain option para do cleanhome_hi"

/*: "icon_popularhome_Call" :*/
fileprivate let showAdvancedValue:String = "ICON"
fileprivate let user_sufficientKey:String = "arhotap"

/*: "animation" :*/
fileprivate let mainMirrorId:[Character] = ["a","n","i","m","a"]
fileprivate let user_installCreateFormat:[Character] = ["t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EagerListCell.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import UIKit
import UIKit

//: protocol SocialPopularListCellDelegate: NSObject {
protocol CriminalRecordYaCellDelegate: NSObject {
    //: func cellPlayerEnd()
    func shade()
    //: func seleteShowBlock(model: SocialUserListModel)
    func swageBlock(model: EquityMeasurable)
    //: func seleteHideBlock()
    func squareBlockMargin()
    //: func seleteBlockTool(model: SocialUserListModel)
    func parentDelay(model: EquityMeasurable)
    /// 去私聊
    //: func chtToUser(model: SocialUserListModel)
    func bologram(model: EquityMeasurable)
}

//: class SocialPopularListCell: UICollectionViewCell {
class EagerListCell: UICollectionViewCell {
    //: var currentModel: SocialUserListModel?
    var currentModel: EquityMeasurable? // 记录当前模型
    //: open weak var delegate: SocialPopularListCellDelegate?
    open weak var delegate: CriminalRecordYaCellDelegate?

    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_theaterKey.map{panOriginal(above: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.cornerRadius = 5
        self.layer.cornerRadius = 5
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.setupSubviews()
        self.wantErr()
        //: self.setupSubViewsConstraint()
        self.setupThreadConfinement()
    }

    // MARK: - Lazy load

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.addGestureRecognizer(self.longGesture)
        img.addGestureRecognizer(self.longGesture)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var statusImgV: TalkingButton = {
    private lazy var statusImgV: RangeReactiveCompatible = {
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
        //: return img
        return img
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "img_home_shadow_icon")
        img.image = UIImage.locationName(name: (String(mainPushFormat) + dataHolderFollowingStr.replacingOccurrences(of: "build", with: "n")))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.locationName(name: (String(noti_platformTitle.suffix(8)) + constWhiteMessage.replacingOccurrences(of: "numb", with: "e")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var attestationImgV: UIImageView = {
    private lazy var attestationImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_home_v")
        img.image = UIImage.locationName(name: (dataRobotTitle.lowercased() + "_home_v"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var locationBtn: TalkingButton = {
    private lazy var locationBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_home_position"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(noti_seeText.prefix(9)) + String(kApplicationHairContent.prefix(4)) + "ition")), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.bonePlace(fontSize: 12)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = RatingReactiveCompatible.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: PackagingPlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: PackagingPlayListener
        //: player = TalkingVideoPlayerManager.init()
        player = PackagingPlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.scheduleColumn(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(mainHighlightMsg.suffix(6)) + "namic_st" + const_holderMessage.replacingOccurrences(of: "entry", with: "o") + String(app_yesterdayFormat.prefix(5)))))
        //: imag.isHidden = true
        imag.isHidden = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var longGesture: UILongPressGestureRecognizer = {
    private lazy var longGesture: UILongPressGestureRecognizer = {
        //: let long = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        let long = UILongPressGestureRecognizer(target: self, action: #selector(stillBroadcast(_:)))
        //: return long
        return long
        //: }()
    }()

    //: lazy var blockBackView: UIView = {
    lazy var blockBackView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)
        view.backgroundColor = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.6)
        //: view.isHidden = true
        view.isHidden = true
        //: let blockBtn = TalkingButton.init()
        let blockBtn = RangeReactiveCompatible()
        //: blockBtn.setTitle("Block".localized, for: .normal)
        blockBtn.setTitle((String(user_recoverKingNaturalUrl)).localized, for: .normal)
        //: blockBtn.setTitleColor(UIColor.white, for: .normal)
        blockBtn.setTitleColor(UIColor.white, for: .normal)
        //: blockBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        blockBtn.titleLabel?.font = UIFont.pingfang(fontSize: 17)
        //: blockBtn.setImage(UIImage.BundleImageNamed(name: "btn_friends_block"), for: .normal)
        blockBtn.setImage(UIImage.locationName(name: (String(constRecordId.prefix(5)) + String(user_eachMessage) + String(notiFinishKey))), for: .normal)
        //: blockBtn.spaceBetweenTitleAndImage = 4
        blockBtn.spaceBetweenTitleAndImage = 4
        //: blockBtn.addTarget(self, action: #selector(blockBtnClick), for: .touchUpInside)
        blockBtn.addTarget(self, action: #selector(isCharacter), for: .touchUpInside)
        //: view.addSubview(blockBtn)
        view.addSubview(blockBtn)
        //: blockBtn.snp.remakeConstraints { make in
        blockBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(view).offset(50)
            make.top.equalTo(view).offset(50)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: let cancelBtn = TalkingButton.init()
        let cancelBtn = RangeReactiveCompatible()
        //: cancelBtn.setTitle("Cancel".localized, for: .normal)
        cancelBtn.setTitle((String(mainSimultaneouslyStr.prefix(6))).localized, for: .normal)
        //: cancelBtn.setTitleColor(UIColor.white, for: .normal)
        cancelBtn.setTitleColor(UIColor.white, for: .normal)
        //: cancelBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        cancelBtn.titleLabel?.font = UIFont.pingfang(fontSize: 17)
        //: cancelBtn.setImage(UIImage.BundleImageNamed(name: "btn_friends_block_cancel"), for: .normal)
        cancelBtn.setImage(UIImage.locationName(name: (String(kNorMessage.prefix(5)) + "rien" + String(const_waitUrl.prefix(5)) + String(app_exactlyMessage.prefix(5)) + noti_contrastName.replacingOccurrences(of: "circle", with: "e"))), for: .normal)
        //: cancelBtn.spaceBetweenTitleAndImage = 4
        cancelBtn.spaceBetweenTitleAndImage = 4
        //: cancelBtn.addTarget(self, action: #selector(cancelBtnClick), for: .touchUpInside)
        cancelBtn.addTarget(self, action: #selector(buttonGame), for: .touchUpInside)
        //: view.addSubview(cancelBtn)
        view.addSubview(cancelBtn)
        //: cancelBtn.snp.remakeConstraints { make in
        cancelBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(blockBtn.snp.bottom).offset(28)
            make.top.equalTo(blockBtn.snp.bottom).offset(28)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gameImgV: UIImageView = {
    private lazy var gameImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "iv_home_game")
        img.image = UIImage.locationName(name: (String(kNoteStr) + String(appHumanTitle)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()

        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
            btn.addTarget(self, action: #selector(snapClick), for: .touchUpInside)
            //: } else {
        } else {
            //: btn.addTarget(self, action: #selector(callUserClick), for: .touchUpInside)
            btn.addTarget(self, action: #selector(pictureClick), for: .touchUpInside)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.isHidden = true
        player.isHidden = true
        //: player.delegate = self
        player.delegate = self

        //: return player
        return player
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = .init()
    private lazy var videoCallManager: RedObjectProtocol = .init()
}

// tages
//: extension SocialPopularListCell {
extension EagerListCell {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesBegan(touches, with: event)
        super.touchesBegan(touches, with: event)

        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (dataCoreKey.replacingOccurrences(of: "length", with: "r") + "orm." + k_randomStr.replacingOccurrences(of: "visual", with: "l") + showHungValue.replacingOccurrences(of: "scope", with: "e")))
        //: zoom.keyTimes = [(1.0)]
        zoom.keyTimes = [1.0]
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [ zoom]
        groupAnnimation.animations = [zoom]
        //: groupAnnimation.duration = 0.1
        groupAnnimation.duration = 0.1
        //: groupAnnimation.repeatCount = 1
        groupAnnimation.repeatCount = 1
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: zoom.values = [1.05]
        zoom.values = [1.05]
        //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
        self.layer.add(groupAnnimation, forKey: (appLiquidYetUrl.replacingOccurrences(of: "circle", with: "o") + "&shak" + String(mainCompeteName)))
    }

    //: override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesCancelled(touches, with: event)
        super.touchesCancelled(touches, with: event)
        //: endAnimation()
        topTo()
    }

    //: override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesEnded(touches, with: event)
        super.touchesEnded(touches, with: event)
        //: endAnimation()
        topTo()
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    func buttonWave(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith _: UIGestureRecognizer) -> Bool {
        //: return true
        return true
    }

    //: private func endAnimation() {
    private func topTo() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
            let zoom = CAKeyframeAnimation(keyPath: (dataCoreKey.replacingOccurrences(of: "length", with: "r") + "orm." + k_randomStr.replacingOccurrences(of: "visual", with: "l") + showHungValue.replacingOccurrences(of: "scope", with: "e")))
            //: zoom.keyTimes = [(1.0)]
            zoom.keyTimes = [1.0]
            //: let groupAnnimation = CAAnimationGroup.init()
            let groupAnnimation = CAAnimationGroup()
            //: groupAnnimation.autoreverses = false
            groupAnnimation.autoreverses = false
            //: groupAnnimation.animations = [ zoom]
            groupAnnimation.animations = [zoom]
            //: groupAnnimation.duration = 0.1
            groupAnnimation.duration = 0.1
            //: groupAnnimation.repeatCount = 1
            groupAnnimation.repeatCount = 1
            //: groupAnnimation.isRemovedOnCompletion = false
            groupAnnimation.isRemovedOnCompletion = false
            //: groupAnnimation.fillMode = .forwards
            groupAnnimation.fillMode = .forwards
            //: zoom.values = [(1.0)]
            zoom.values = [1.0]
            //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
            self.layer.add(groupAnnimation, forKey: (appLiquidYetUrl.replacingOccurrences(of: "circle", with: "o") + "&shak" + String(mainCompeteName)))
        }
    }

    /// 长按手势相应事件
    //: @objc private func handleLongPress(_ gesture: UILongPressGestureRecognizer) {
    @objc private func stillBroadcast(_ gesture: UILongPressGestureRecognizer) {
        //: switch gesture.state {
        switch gesture.state {
        //: case .began:
        case .began:
            //: blockBackView.isHidden = false
            blockBackView.isHidden = false
            //: if currentModel != nil {
            if currentModel != nil {
                //: self.delegate?.seleteShowBlock(model: currentModel!)
                self.delegate?.swageBlock(model: currentModel!)
            }
        //: break
        //: case.ended:
        case .ended:
            //: endAnimation()
            topTo()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc private func blockBtnClick() {
    @objc private func isCharacter() {
        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        AllowanceReactiveCompatible.maximal(title: nil, message: k_blockFailValue, leftBtnTitle: (String(mainSimultaneouslyStr.prefix(6))).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: if self.currentModel != nil {
            if self.currentModel != nil {
                //: self.delegate?.seleteBlockTool(model: self.currentModel!)
                self.delegate?.parentDelay(model: self.currentModel!)
            }
        }
    }

    //: @objc private func cancelBtnClick() {
    @objc private func buttonGame() {
        //: blockBackView.isHidden = true
        blockBackView.isHidden = true
        //: endAnimation()
        topTo()
        //: self.delegate?.seleteHideBlock()
        self.delegate?.squareBlockMargin()
    }

    //: @objc private func callBtnClick() {
    @objc private func snapClick() {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: if mdoel.sendQuickMsg == 0 {
            if mdoel.sendQuickMsg == 0 {
                //: palyHiSvga()
                ageNight()
                //: } else {
            } else {
                //: self.delegate?.chtToUser(model: mdoel)
                self.delegate?.bologram(model: mdoel)
            }
        }
    }

    //: @objc private func callUserClick() {
    @objc private func pictureClick() {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: if mdoel.isSendQuickMsg == 0 {
            if mdoel.isSendQuickMsg == 0 {
                //: palyHiSvga()
                ageNight()
                //: } else if mdoel.isSendQuickMsg == 1 {
            } else if mdoel.isSendQuickMsg == 1 {
                //: self.delegate?.chtToUser(model: mdoel)
                self.delegate?.bologram(model: mdoel)
                //: } else {
            } else {
                //: videoCallManager.checkAndCallVideo()
                videoCallManager.charm()
            }
        }
    }

    //: private func palyHiSvga() {
    private func ageNight() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Home_Chat_hi)
        let url = BlackEffectTool.default.recordingRevenue(type: .Home_Chat_hi)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.callBtn.isHidden = true
                self.callBtn.isHidden = true
                //: self.svgaPlayer.isHidden = false
                self.svgaPlayer.isHidden = false
                //: self.svgaPlayer.videoItem = videoItem
                self.svgaPlayer.videoItem = videoItem
                //: self.svgaPlayer.startAnimation()
                self.svgaPlayer.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (noti_electronId.replacingOccurrences(of: "square", with: "t") + String(show_funPath)))
        }
    }

    //: func changeGreeteStatus() {
    func greeteAcross() {
        //: self.callBtn.isHidden = false
        self.callBtn.isHidden = false
        //: self.callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_chat"), for: .normal)
        self.callBtn.setImage(UIImage.locationName(name: (userBeastKey.replacingOccurrences(of: "bad", with: "o") + "_popu" + userInstanceName.replacingOccurrences(of: "trunk", with: "l") + String(const_intoValue))), for: .normal)
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue {
            //: self.currentModel?.isSendQuickMsg = 1
            self.currentModel?.isSendQuickMsg = 1
        }
    }
}

//: extension SocialPopularListCell: SVGAPlayerDelegate {
extension EagerListCell: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: let vc = TalkingPrivateChatController(chatID: "\(mdoel.uid)")
            let vc = SmallControllerDelegate(chatID: "\(mdoel.uid)")
            //: vc.func_sendQuickGreetingMsg()
            vc.thumbGreeting()
            //: vc.QuickEndBlock = { [weak self] isSuccess, code in
            vc.QuickEndBlock = { [weak self] isSuccess, code in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.callBtn.isHidden = false
                self.callBtn.isHidden = false
                //: if !isSuccess {
                if !isSuccess {
                    /// 对方发过打招呼，这边首页会打招呼失败，更改最新状态
                    //: if code == 110742 {
                    if code == 110_742 {
                        //: self.callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_chat"), for: .normal)
                        self.callBtn.setImage(UIImage.locationName(name: (userBeastKey.replacingOccurrences(of: "bad", with: "o") + "_popu" + userInstanceName.replacingOccurrences(of: "trunk", with: "l") + String(const_intoValue))), for: .normal)
                        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
                        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
                            //: self.currentModel?.sendQuickMsg = 1
                            self.currentModel?.sendQuickMsg = 1
                            //: } else {
                        } else {
                            //: self.currentModel?.isSendQuickMsg = 1
                            self.currentModel?.isSendQuickMsg = 1
                        }
                    }
                    //: return
                    return
                }
                //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
                self.showGuidanceName(showMsg: (String(appSpendMsg.suffix(7)) + userEntryValue.replacingOccurrences(of: "ready", with: "u") + String(noti_statusKey)).localized)
                //: self.callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_chat"), for: .normal)
                self.callBtn.setImage(UIImage.locationName(name: (userBeastKey.replacingOccurrences(of: "bad", with: "o") + "_popu" + userInstanceName.replacingOccurrences(of: "trunk", with: "l") + String(const_intoValue))), for: .normal)
                //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
                if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
                    //: self.currentModel?.sendQuickMsg = 1
                    self.currentModel?.sendQuickMsg = 1
                    //: } else {
                } else {
                    //: self.currentModel?.isSendQuickMsg = 1
                    self.currentModel?.isSendQuickMsg = 1
                }
            }
        }
    }
}

// MARK: - Event

//: extension SocialPopularListCell {
extension EagerListCell {
    // MARK: - Refresh

    //: func refreshCell(_ model: SocialUserListModel?) {
    func elementOp(_ model: EquityMeasurable?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: currentModel = model
        currentModel = model
        //: videoCallManager.uid = ("\(model.uid)")
        videoCallManager.uid = "\(model.uid)"
        //: headPicImgV.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeImgSquare())
        headPicImgV.loadPoiseFinishParkImageEye(urlStr: model.headPic, placeImg: UIImage.regularPolygon())
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: attestationImgV.isHidden = !model.isTPAuth
        attestationImgV.isHidden = !model.isTPAuth
        //: var right_offset = loungeImgV.isHidden == true ? -46 : -71
        var right_offset = loungeImgV.isHidden == true ? -46 : -71
        //: right_offset = attestationImgV.isHidden == true ? right_offset:right_offset-24
        right_offset = attestationImgV.isHidden == true ? right_offset : right_offset - 24
        //: nameLab.snp.updateConstraints { make in
        nameLab.snp.updateConstraints { make in
            //: make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
            make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
        }
        //: if loungeImgV.isHidden {
        if loungeImgV.isHidden {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
                make.leading.equalTo(nameLab.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
            //: } else {
        } else {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
        }
        //: gameImgV.isHidden = !(model.game && DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue)
        gameImgV.isHidden = !(model.game && DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue && DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue)
        //: if model.liveStatus {
        if model.liveStatus {
            //: statusImgV.isHidden = false
            statusImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.littleness(color: UIColor(hex: (String(constLineKey.prefix(7))))!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.fasten(), for: .normal)
            statusImgV.setImage(image.fasten(), for: .normal)
            //: statusImgV.setTitle("Live".localized, for: .normal)
            statusImgV.setTitle((String(show_differenceSessionUrl)).localized, for: .normal)
            //: } else {
        } else {
            //: statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            //: if model.status == 1 {
            if model.status == 1 { // 在线
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.littleness(color: UIColor(hex: (showSweetUrl.replacingOccurrences(of: "nobody", with: "#") + String(app_inputTitle)))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.fasten(), for: .normal)
                statusImgV.setImage(image.fasten(), for: .normal)
                //: statusImgV.setTitle("Online".localized, for: .normal)
                statusImgV.setTitle((String(user_presentationStr.suffix(6))).localized, for: .normal)
                //: } else if model.status == 2 {
            } else if model.status == 2 { // busy
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#FF4B7F")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.littleness(color: UIColor(hex: (String(app_migrationFormat)))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.fasten(), for: .normal)
                statusImgV.setImage(image.fasten(), for: .normal)
                //: statusImgV.setTitle("busy".localized, for: .normal)
                statusImgV.setTitle((String(data_platStr)).localized, for: .normal)
            }
        }
        //: let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfang(fontSize: 12)], context: nil)
        //: statusImgV.snp.remakeConstraints { make in
        statusImgV.snp.remakeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }
        //: locationBtn.isHidden = model.location.count <= 0
        locationBtn.isHidden = model.location.count <= 0
        //: locationBtn.setTitle(" \(model.location) ", for: .normal)
        locationBtn.setTitle(" \(model.location) ", for: .normal)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: if model.sendQuickMsg == 0 {
            if model.sendQuickMsg == 0 {
                //: callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_hi"), for: .normal)
                callBtn.setImage(UIImage.locationName(name: (String(app_lowerName) + String(kNearbyTitle.suffix(7)))), for: .normal)
                //: } else {
            } else {
                //: callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_chat"), for: .normal)
                callBtn.setImage(UIImage.locationName(name: (userBeastKey.replacingOccurrences(of: "bad", with: "o") + "_popu" + userInstanceName.replacingOccurrences(of: "trunk", with: "l") + String(const_intoValue))), for: .normal)
            }
            //: } else {
        } else {
            //: if model.isSendQuickMsg == 0 {
            if model.isSendQuickMsg == 0 {
                //: callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_hi"), for: .normal)
                callBtn.setImage(UIImage.locationName(name: (String(app_lowerName) + String(kNearbyTitle.suffix(7)))), for: .normal)
                //: } else if model.isSendQuickMsg == 1 {
            } else if model.isSendQuickMsg == 1 {
                //: callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_chat"), for: .normal)
                callBtn.setImage(UIImage.locationName(name: (userBeastKey.replacingOccurrences(of: "bad", with: "o") + "_popu" + userInstanceName.replacingOccurrences(of: "trunk", with: "l") + String(const_intoValue))), for: .normal)
                //: } else {
            } else {
                //: setVideoCallBtn()
                phoneWith()
            }
        }
    }

    //: private func setVideoCallBtn() {
    private func phoneWith() {
        //: callBtn.setImage(UIImage.BundleImageNamed(name: "icon_popularhome_Call"), for: .normal)
        callBtn.setImage(UIImage.locationName(name: (showAdvancedValue.lowercased() + "_popul" + user_sufficientKey.replacingOccurrences(of: "tap", with: "m") + "e_Call")), for: .normal)
        // 添加关键帧动画
        //: let keyAnimation = CAKeyframeAnimation()
        let keyAnimation = CAKeyframeAnimation()
        //: keyAnimation.keyPath = "transform.scale"
        keyAnimation.keyPath = (dataCoreKey.replacingOccurrences(of: "length", with: "r") + "orm." + k_randomStr.replacingOccurrences(of: "visual", with: "l") + showHungValue.replacingOccurrences(of: "scope", with: "e"))
        //: keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
        keyAnimation.values = [NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1, y: 1)),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1.12, y: 1.12)),
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: 1.12, y: 1.12)),
                               //: NSValue(cgAffineTransform: CGAffineTransform(scaleX: 0.95, y: 0.95))]
                               NSValue(cgAffineTransform: CGAffineTransform(scaleX: 0.95, y: 0.95))]
        //: keyAnimation.duration = 1.3
        keyAnimation.duration = 1.3
        //: keyAnimation.repeatCount = MAXFLOAT
        keyAnimation.repeatCount = MAXFLOAT
        //: keyAnimation.isRemovedOnCompletion = false
        keyAnimation.isRemovedOnCompletion = false
        //: keyAnimation.fillMode = .both
        keyAnimation.fillMode = .both
        //: keyAnimation.calculationMode = .cubicPaced
        keyAnimation.calculationMode = .cubicPaced
        //: callBtn.layer.add(keyAnimation, forKey: "animation")
        callBtn.layer.add(keyAnimation, forKey: (String(mainMirrorId) + String(user_installCreateFormat)))
    }
}

//: extension SocialPopularListCell {
extension EagerListCell {
    //: @objc private func enterBackgroundNotification() {
    @objc private func sessionByNotification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.isWait()
        }
    }

    //: @objc private func enterForegroundNotification() {
    @objc private func spatialArrangementSmall() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.exitSchedule()!.isKind(of: RegularityViewController.self) {
            //: self.player.resume()
            self.player.tillWarning()
        }
    }

    //: func configModel(videoUrl: String, imgUrl: String ) {
    func thinStack(videoUrl: String, imgUrl _: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
//        self.headPicImgV.setUrlImage(urlStr: imgUrl)
    }

    //: func setupPlayer() {
    func physicsLab() {
        //: self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        //: UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            //: self.headPicImgV.alpha = 0.2
            self.headPicImgV.alpha = 0.2
            //: }) { _ in
        }) { _ in
            //: self.headPicImgV.alpha = 1.0
            self.headPicImgV.alpha = 1.0
            //: self.contentView.backgroundColor = .white
            self.contentView.backgroundColor = .white
            //: self.player.playerWithUrlAndVideoView(url: self.videoUrl, view: self.headPicImgV)
            self.player.loseTrack(url: self.videoUrl, view: self.headPicImgV)
            //: self.player.setMute(bEnable: true)
            self.player.scheduleColumn(bEnable: true)
            //: self.isPlaying = true
            self.isPlaying = true
            //: self.player.delegate = self
            self.player.delegate = self
            //: if self.player.width() > self.player.height() {
            if self.player.chore() > self.player.gold() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.succeed(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.succeed(renderMode: .FILL_SCREEN)
            }
        }
    }

    //: func stopPlay() {
    func playStand() {
        //: self.player.stopPlay()
        self.player.storageReward()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
    }

    //: func pausePlay() {
    func pauseTargetMeet() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.isWait()
        }
    }

    //: func resume() {
    func sendItem() {
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
        //: self.player.resume()
        self.player.tillWarning()
    }
}

//: extension SocialPopularListCell: TalkingVideoPlayerDelegate {
extension EagerListCell: BilliardPlayerThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.scheduleColumn(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: if self.player.width() > self.player.height() {
            if self.player.chore() > self.player.gold() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.succeed(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.succeed(renderMode: .FILL_SCREEN)
            }

            //: } else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.shade()
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func tillChannelTime(player _: PackagingPlayListener, duration _: Int, currentTime: Int) {
        //: if currentTime > 5 {
        if currentTime > 5 {
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.stopPlay()
            self.playStand()
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.shade()
        }
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func funcCompareProgress(player _: PackagingPlayListener, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension SocialPopularListCell {
extension EagerListCell {
    // 添加视图
    //: private func setupSubviews() {
    private func wantErr() {
        //: self.contentView .addSubview(headPicImgV)
        self.contentView.addSubview(headPicImgV)
        //: self.contentView.addSubview(statusImgV)
        self.contentView.addSubview(statusImgV)
        //: self.contentView.addSubview(shadowImg)
        self.contentView.addSubview(shadowImg)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(attestationImgV)
        self.contentView.addSubview(attestationImgV)
        //: self.contentView.addSubview(gameImgV)
        self.contentView.addSubview(gameImgV)
        //: self.contentView.addSubview(callBtn)
        self.contentView.addSubview(callBtn)
        //: self.contentView.addSubview(locationBtn)
        self.contentView.addSubview(locationBtn)
        //: headPicImgV.addSubview(playimageView)
        headPicImgV.addSubview(playimageView)
        //: self.contentView.addSubview(blockBackView)
        self.contentView.addSubview(blockBackView)
        //: self.contentView.addSubview(svgaPlayer)
        self.contentView.addSubview(svgaPlayer)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(sessionByNotification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(spatialArrangementSmall), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupThreadConfinement() {
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: statusImgV.snp.makeConstraints { make in
        statusImgV.snp.makeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
        }
        //: shadowImg.snp.makeConstraints { make in
        shadowImg.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            //: make.height.equalTo(46)
            make.height.equalTo(46)
        }
        //: locationBtn.snp.makeConstraints { make in
        locationBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            //: make.bottom.equalToSuperview().offset(-8)
            make.bottom.equalToSuperview().offset(-8)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-70)
            make.trailing.lessThanOrEqualToSuperview().offset(-70)
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(nameLab.snp.trailing).offset(3)
            make.leading.equalTo(nameLab.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: attestationImgV.snp.makeConstraints { make in
        attestationImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(-6)
            make.trailing.bottom.equalTo(-6)
            //: make.size.equalTo(38)
            make.size.equalTo(38)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(callBtn)
            make.edges.equalTo(callBtn)
        }
        //: gameImgV.snp.makeConstraints { make in
        gameImgV.snp.makeConstraints { make in
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }
        //: blockBackView.snp.remakeConstraints { make in
        blockBackView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
