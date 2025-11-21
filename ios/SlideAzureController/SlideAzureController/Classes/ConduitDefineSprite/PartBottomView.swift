
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_centerWellMessage:[UInt8] = [0x46,0x41,0x46,0x5b,0x7,0x4c,0x40,0x4b,0x4a,0x5d,0x15,0x6,0xf,0x47,0x4e,0x5c,0xf,0x41,0x40,0x5b,0xf,0x4d,0x4a,0x4a,0x41,0xf,0x46,0x42,0x5f,0x43,0x4a,0x42,0x4a,0x41,0x5b,0x4a,0x4b]

private func snapAutomatically(control num: UInt8) -> UInt8 {
    return num ^ 47
}

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let appMateName:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","d","i","a","n","z","a","n","_","n","o"]
fileprivate let app_oppositeFormat:[Character] = ["r"]

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let main_viewCrushMsg:[Character] = ["b","t","n","_","d","o","n","g"]
fileprivate let userRatingWarningOptionMsg:[Character] = ["t","a","i","_"]
fileprivate let app_voiceText:String = "DIANZA"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let userInstanceReadName:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","p","i","n","g","l"]
fileprivate let k_systemEnrollMessage:[Character] = ["u","n","_","n","o","r"]

/*: "btn_dynamic_chat_nor" :*/
fileprivate let show_sheKey:String = "sure missingbtn_"
fileprivate let showLargePath:[Character] = ["m","i","c","_","c","h","a","t","_","n","o","r"]

/*: "icon_dynamic_heart_default" :*/
fileprivate let userBirthdaySubjectValue:[Character] = ["i","c","o","n","_","d","y","n","a","m"]
fileprivate let noti_lowerStr:String = "ic_hhandle healthy"
fileprivate let constAdditionUrl:[Character] = ["e","a","r","t","_","d","e","f","a","u","l","t"]

/*: "Chat" :*/
fileprivate let kRevenueUrl:[Character] = ["C","h","a","t"]

/*: "#752FE9" :*/
fileprivate let const_albumMValue:[Character] = ["#","7","5","2","F"]
fileprivate let const_guidanceVeryHuntingMsg:String = "cut"

/*: "Comment" :*/
fileprivate let const_speedShowValue:[Character] = ["C"]
fileprivate let user_successfulEntryUrl:[Character] = ["o","m","m","e","n","t"]

/*: "momentId" :*/
fileprivate let k_tradeSearchId:String = "mpermissionent"
fileprivate let appPersonMsg:[Character] = ["I","d"]

/*: "type" :*/
fileprivate let k_ofMessage:[Character] = ["t","y","p","e"]

/*: "like" :*/
fileprivate let notiHoweverKey:String = "lacceptke"

/*: "model" :*/
fileprivate let noti_normalPath:[UInt8] = [0xe1,0xe3,0xe8,0xe9,0xe0]

private func meanSolarDay(related num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "get json error" :*/
fileprivate let userCompeteName:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r"]
fileprivate let app_coatTitle:String = "ROR"

/*: "comment" :*/
fileprivate let const_poseTitle:String = "peopleo"
fileprivate let showBurstUrl:String = "displayent"

/*: "number" :*/
fileprivate let mainMarkRewardWedKey:[Character] = ["n"]
fileprivate let noti_bothShadeFormat:[Character] = ["u","m","b","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PartBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class PartBottomView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = IceModelType()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsAdvertising()
        //: setupSubViewsConstraint()
        doing()
        //: bindInteraction()
        box()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_centerWellMessage.map{snapAutomatically(control: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 14)
        label.font = .bigGallery(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
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
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(appMateName) + String(app_oppositeFormat))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(main_viewCrushMsg) + String(userRatingWarningOptionMsg) + app_voiceText.lowercased() + "n_nor1")), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .bigGallery(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userInstanceReadName) + String(k_systemEnrollMessage))), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .bigGallery(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .saveInColor()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = RangeReactiveCompatible()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(show_sheKey.suffix(4)) + "dyna" + String(showLargePath))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userBirthdaySubjectValue) + String(noti_lowerStr.prefix(4)) + String(constAdditionUrl))), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(kRevenueUrl)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension PartBottomView {
    //: func configModel(model: TalkingMomentModel) {
    func springtime(model: IceModelType) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = DismissReactiveCompatible.share.loginUserMode.sex == model.sex ||  DismissReactiveCompatible.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = DismissReactiveCompatible.share.loginUserMode.sex == model.sex || DismissReactiveCompatible.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(const_albumMValue) + const_guidanceVeryHuntingMsg.replacingOccurrences(of: "cut", with: "E9"))) : .saveInColor()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(const_speedShowValue) + String(user_successfulEntryUrl)).localized
    }

    //: func likeBtnClik() {
    func on() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.languageLocation(type: 1)
            //: self.likeplayer()
            self.brandish()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            languageLocation(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func languageLocation(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(k_tradeSearchId.replacingOccurrences(of: "permission", with: "om") + String(appPersonMsg))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(String(k_ofMessage))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        BlendThen.eleventhHour(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(const_albumMValue) + const_guidanceVeryHuntingMsg.replacingOccurrences(of: "cut", with: "E9"))) : .saveInColor()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: dataOkTitle, object: self, userInfo: [(String(k_ofMessage)): (notiHoweverKey.replacingOccurrences(of: "accept", with: "i")), String(bytes: noti_normalPath.map{meanSolarDay(related: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.enablece(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func date() {
        //: PushThen.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        PushThen.share.resolutionBegin(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func brandish() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = BlackEffectTool.default.recordingRevenue(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = BlackEffectTool.default.recordingRevenue(type: .Moment_likeRight)
        }
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
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(userCompeteName) + app_coatTitle.lowercased()))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func barNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(k_tradeSearchId.replacingOccurrences(of: "permission", with: "om") + String(appPersonMsg))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(String(k_ofMessage))] as! String == (const_poseTitle.replacingOccurrences(of: "people", with: "c") + showBurstUrl.replacingOccurrences(of: "display", with: "mm")).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(String(mainMarkRewardWedKey) + String(noti_bothShadeFormat))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension PartBottomView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension PartBottomView {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsAdvertising() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func doing() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfangMediumFont(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfang(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func box() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(barNotification(notification:)), name: noti_currencyMessage, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.on()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.date()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
