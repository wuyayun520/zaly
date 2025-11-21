
//: Declare String Begin

/*: "#932DFF" :*/
fileprivate let const_boundMsg:String = "#932DFFchance channel"

/*: "#E6CFFF" :*/
fileprivate let constNightTitle:[Character] = ["#","E","6","C","F"]
fileprivate let showBeforeDraftMsg:String = "him"

/*: "icon_randow_match" :*/
fileprivate let kAbsoluteValue:String = "icobserven"
fileprivate let app_installationStr:String = "ow_mstate problem"

/*: "icon_coin_pre" :*/
fileprivate let const_componentValue:[Character] = ["i","c","o","n","_","c","o"]
fileprivate let userEventData:String = "in_preroute stretch screen advertising highlight"

/*: "icon_randow_chating" :*/
fileprivate let userShadeData:[Character] = ["i","c","o","n","_","r","a","n","d","o","w"]
fileprivate let user_resortVisitorId:String = "time demand net invisible_chating"

/*: "#F97AE8" :*/
fileprivate let main_fingerFormat:String = "#F97AE8quality charm"

/*: "#AD32FF" :*/
fileprivate let constShowKitBackgroundKey:[Character] = ["#","A"]
fileprivate let userOnText:String = "calendar2FF"

/*: "Random  Match" :*/
fileprivate let appReplaceName:[Character] = ["R","a","n","d","o","m"," "," ","M"]
fileprivate let userCompoundTitle:[Character] = ["a","t","c","h"]

/*: "icon_Chat_freetimes" :*/
fileprivate let user_femaleName:String = "wealthy remind behindicon_"
fileprivate let dataFiscalId:String = "ad bind_freet"

/*: "fee" :*/
fileprivate let noti_intoName:String = "mysteryee"

/*: "VIPFee" :*/
fileprivate let data_ourTitle:String = "VIPFeecalculation satisfy opposite change shine"

/*: "chattingNum" :*/
fileprivate let mainTellMsg:String = "chattiask"
fileprivate let appConText:[Character] = ["g","N","u","m"]

/*: "users" :*/
fileprivate let constEnhanceHideMsg:String = "spliters"

/*: "robotVideoNum" :*/
fileprivate let show_relateSufficientKey:String = "robotVidblock media surgery plat shoulder"
fileprivate let app_correctTitle:[Character] = ["e","o","N","u","m"]

/*: "freeCallTimes" :*/
fileprivate let kShrinkTitle:[Character] = ["f","r","e","e","C","a","l","l","T"]
fileprivate let kSocialMatterStandUrl:[Character] = ["i","m","e","s"]

/*: "coin" :*/
fileprivate let constHoneyKey:String = "coiclose"

/*: "Chatting" :*/
fileprivate let main_favoriteTitle:String = "Chattingmanager platform may temp interrupt"

/*: "%@ coins / min " :*/
fileprivate let dataTopFormat:[Character] = ["%","@"," ","c","o","i","n","s"," ","/"," ","m"]
fileprivate let app_answerData:String = "bone former creation keep hostin "

/*: "%@ coins/min  Get Discount >" :*/
fileprivate let user_elementData:[Character] = ["%","@"," ","c","o","i","n","s","/"]
fileprivate let userHalfStr:String = "several which professional collection hiddenmin  "
fileprivate let notiApprovalMessage:[Character] = ["G","e","t"," ","D","i","s","c","o","u","n","t"," ",">"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvertizingReactiveCompatible.swift
//  Pods
//
//  Created by Charlotte on 2025/9/11.
//

//: import UIKit
import UIKit

//: class RandomMatchVC: TalkingBaseViewController {
class AdvertizingReactiveCompatible: WeddingLovelyRecognizerDelegate {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数
    //: var usrIcon = [String]()
    var usrIcon = [String]() // 当前这批用户头像
    //: var usrcoin = 0
    var usrcoin = 0 // 当前用户余额

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.reqvideoMatchCheck()
        self.parallel()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        spotSub()
        //: setupSubViewsConstraint()
        magnitudeerchange()
        //: bindInteraction()
        meCounteraction()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moreBy), for: .touchUpInside)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        // 渐变
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth+1, height: ScreenHeight+1)
        layer.frame = CGRect(x: 0, y: 0, width: main_logStr + 1, height: main_nameData + 1)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(hex: "#932DFF")!.cgColor, UIColor(hex: "#E6CFFF")!.cgColor]
        layer.colors = [UIColor(hex: (String(const_boundMsg.prefix(7))))!.cgColor, UIColor(hex: (String(constNightTitle) + showBeforeDraftMsg.replacingOccurrences(of: "him", with: "FF")))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: btn.layer.addSublayer(layer)
        btn.layer.addSublayer(layer)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var userView: RandomMatchUserView = {
    private lazy var userView: SpecialReactiveCompatible = {
        //: let v = RandomMatchUserView.init()
        let v = SpecialReactiveCompatible()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLB : UIImageView = {
    private lazy var titleLB: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_randow_match")
        img.image = UIImage.locationName(name: (kAbsoluteValue.replacingOccurrences(of: "observe", with: "o") + "_rand" + String(app_installationStr.prefix(4)) + "atch"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    /// 余额
    //: private lazy var balanceBtn: TalkingButton = {
    private lazy var balanceBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
        img.image = UIImage.locationName(name: (String(const_componentValue) + String(userEventData.prefix(6))))
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: btn.addSubview(img)
        btn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.leading.top.bottom.equalToSuperview()
            make.leading.top.bottom.equalToSuperview()
            //: make.width.equalTo(24)
            make.width.equalTo(24)
        }
        //: btn.addTarget(self, action: #selector(balanceBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(balanceSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var balanceLB: UILabel = {
    private lazy var balanceLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: balanceBtn.addSubview(lb)
        balanceBtn.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.top.equalTo(4)
            make.top.equalTo(4)
            //: make.bottom.equalTo(-4)
            make.bottom.equalTo(-4)
            //: make.leading.equalTo(29)
            make.leading.equalTo(29)
        }
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var numberBtn: TalkingButton = {
    private lazy var numberBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_randow_chating"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userShadeData) + String(user_resortVisitorId.suffix(8)))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.bonePlace(fontSize: 14)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var randomBtn: UIButton = {
    private lazy var randomBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#F97AE8")!.cgColor, UIColor.init(hex: "#AD32FF")!.cgColor], size: CGSize(width: 200, height: 56)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: [UIColor(hex: (String(main_fingerFormat.prefix(7))))!.cgColor, UIColor(hex: (String(constShowKitBackgroundKey) + userOnText.replacingOccurrences(of: "calendar", with: "D3")))!.cgColor], size: CGSize(width: 200, height: 56)), for: .normal)
        //: btn.setTitle("Random  Match".localized, for: .normal)
        btn.setTitle((String(appReplaceName) + String(userCompoundTitle)).localized, for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.lineBreakMode = .byCharWrapping
        btn.titleLabel?.lineBreakMode = .byCharWrapping
        //: btn.sizeToFit()
        btn.sizeToFit()
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var randowFreeIcon : UIImageView = {
    private lazy var randowFreeIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_Chat_freetimes")
        img.image = UIImage.locationName(name: (String(user_femaleName.suffix(5)) + "Chat" + String(dataFiscalId.suffix(6)) + "imes"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dicountBtn: UIButton = {
    private lazy var dicountBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.dialog(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.bonePlace(fontSize: 14)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(dicountBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dicount), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension RandomMatchVC {
extension AdvertizingReactiveCompatible {
    //: @objc private func reqvideoMatchCheck() {
    @objc private func parallel() {
        //: TalkingQuickVideoManager.req_videoMatchCheck(enterType: 1) { [self] succeed, result, errorModel in
        OfVideoManager.aAdvanced(enterType: 1) { [self] succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.fee = json["fee"].intValue
            self.fee = json[(noti_intoName.replacingOccurrences(of: "mystery", with: "f"))].intValue
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(data_ourTitle.prefix(6)))].intValue
            //: self.chattingNum = json["chattingNum"].intValue
            self.chattingNum = json[(mainTellMsg.replacingOccurrences(of: "ask", with: "n") + String(appConText))].intValue
            //: let arr = json["users"].rawValue as! [String]
            let arr = json[(constEnhanceHideMsg.replacingOccurrences(of: "split", with: "us"))].rawValue as! [String]
            //: DismissReactiveCompatible.share.loginUserMode.robotVideoNum = json["robotVideoNum"].intValue
            DismissReactiveCompatible.share.loginUserMode.robotVideoNum = json[(String(show_relateSufficientKey.prefix(8)) + String(app_correctTitle))].intValue
            //: DismissReactiveCompatible.share.loginUserMode.freeCallTimes = json["freeCallTimes"].intValue
            DismissReactiveCompatible.share.loginUserMode.freeCallTimes = json[(String(kShrinkTitle) + String(kSocialMatterStandUrl))].intValue
            /// 比较前3张，不一致才刷新
            //: var isfresh = true
            var isfresh = true
            //: if self.usrIcon.count > 0 && self.usrIcon.count >= 3 {
            if self.usrIcon.count > 0, self.usrIcon.count >= 3 {
                //: for (i,str) in arr.enumerated() {
                for (i, str) in arr.enumerated() {
                    //: let tstr = self.usrIcon[i]
                    let tstr = self.usrIcon[i]
                    //: if str == tstr {
                    if str == tstr {
                        //: isfresh = false
                        isfresh = false
                        //: } else {
                    } else {
                        //: isfresh = true
                        isfresh = true
                        //: break
                        break
                    }
                    //: if i>=2 {
                    if i >= 2 {
                        //: break
                        break
                    }
                }
            }
            //: self.usrIcon = arr
            self.usrIcon = arr
            //: if isfresh {
            if isfresh {
                //: self.userView.configure(avatars: self.usrIcon)
                self.userView.universalAvatars(avatars: self.usrIcon)
            }
            //: self.usrcoin = json["coin"].intValue
            self.usrcoin = json[(constHoneyKey.replacingOccurrences(of: "close", with: "n"))].intValue

            //: self.balanceLB.text = "\(self.usrcoin)"
            self.balanceLB.text = "\(self.usrcoin)"
            //: let size = self.balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.balanceLB.font!], context: nil)
            let size = self.balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.balanceLB.font!], context: nil)
            //: self.balanceBtn.snp.updateConstraints { make in
            self.balanceBtn.snp.updateConstraints { make in
                //: make.width.equalTo(40+(size?.width ?? 10))
                make.width.equalTo(40 + (size?.width ?? 10))
            }
            //: self.numberBtn.setTitle(" \(self.chattingNum) "+"Chatting".localized, for: .normal)
            self.numberBtn.setTitle(" \(self.chattingNum) " + (String(main_favoriteTitle.prefix(8))).localized, for: .normal)
            //: setFreeView()
            settle()
        }
    }
}

// MARK: - Event

//: extension RandomMatchVC  {
extension AdvertizingReactiveCompatible {
    //: @objc func balanceBtnClick() {
    @objc func balanceSnap() {
        //: PushThen.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        PushThen.share.obligatoEvent(webViewType: .RechargeHalfPage)
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func moreBy() {
        //: gradientBtn.isUserInteractionEnabled = false
        gradientBtn.isUserInteractionEnabled = false
        //: PushThen.share.func__pushToRandomVideoVC(isBeginRand: true)
        PushThen.share.popOutClose(isBeginRand: true)
        //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //: self.gradientBtn.isUserInteractionEnabled = true
            self.gradientBtn.isUserInteractionEnabled = true
        }
    }

    //: func isShowFree() -> Bool{
    func periodOfTimeTag() -> Bool {
        //: let index = EnableFreeCallType.randow
        let index = PrimaryBasicType.randow
        //: print("--%@--%@--%@---",DismissReactiveCompatible.share.loginUserMode.freeCallTimes,DismissReactiveCompatible.share.loginUserMode.robotVideoNum,DismissReactiveCompatible.share.loginUserMode.jumpType)
        //: return ((DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue) || DismissReactiveCompatible.share.loginUserMode.robotVideoNum > 0) && DismissReactiveCompatible.share.loginUserMode.jumpType != 2
        return ((DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue) || DismissReactiveCompatible.share.loginUserMode.robotVideoNum > 0) && DismissReactiveCompatible.share.loginUserMode.jumpType != 2
    }

    //: @objc func setFreeView() {
    @objc func settle() {
        //: if isShowFree() {
        if periodOfTimeTag() {
            //: view.addSubview(randowFreeIcon)
            view.addSubview(randowFreeIcon)
            //: randowFreeIcon.snp.makeConstraints { make in
            randowFreeIcon.snp.makeConstraints { make in
                //: make.trailing.equalTo(randomBtn.snp.trailing).offset(-2)
                make.trailing.equalTo(randomBtn.snp.trailing).offset(-2)
                //: make.top.equalTo(randomBtn.snp.top).offset(-20)
                make.top.equalTo(randomBtn.snp.top).offset(-20)
                //: make.size.equalTo(CGSize(width: 41, height: 28))
                make.size.equalTo(CGSize(width: 41, height: 28))
            }
            //: randowFreeIcon.isHidden = false
            randowFreeIcon.isHidden = false
            //: randomBtn.setTitle("Random  Match".localized, for: .normal)
            randomBtn.setTitle((String(appReplaceName) + String(userCompoundTitle)).localized, for: .normal)
            //: randomBtn.setAttributedTitle(NSAttributedString.init(string: "Random  Match".localized), for: .normal)
            randomBtn.setAttributedTitle(NSAttributedString(string: (String(appReplaceName) + String(userCompoundTitle)).localized), for: .normal)
            //: dicountBtn.isHidden = true
            dicountBtn.isHidden = true
            //: }else {
        } else {
            //: randowFreeIcon.isHidden = true
            randowFreeIcon.isHidden = true
            //: let matchstr = "Random  Match".localized
            let matchstr = (String(appReplaceName) + String(userCompoundTitle)).localized
            //: let price = DismissReactiveCompatible.share.loginUserMode.loungePlus ? vipFee:fee
            let price = DismissReactiveCompatible.share.loginUserMode.loungePlus ? vipFee : fee
            //: let priceStr = "%@ coins / min ".localizedArguments(price)
            let priceStr = (String(dataTopFormat) + String(app_answerData.suffix(3))).unitedStates(price)
            //: let attrString = NSMutableAttributedString(string: matchstr + "\n" + "   " + priceStr)
            let attrString = NSMutableAttributedString(string: matchstr + "\n" + "   " + priceStr)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: matchstr.count, length: attrString.length-matchstr.count))
            attrString.addAttributes(attributes2, range: NSRange(location: matchstr.count, length: attrString.length - matchstr.count))
            //: randomBtn.setAttributedTitle(attrString, for: .normal)
            randomBtn.setAttributedTitle(attrString, for: .normal)

            //: dicountBtn.isHidden =  DismissReactiveCompatible.share.loginUserMode.loungePlus
            dicountBtn.isHidden = DismissReactiveCompatible.share.loginUserMode.loungePlus
            //: dicountBtn.setTitle("%@ coins/min  Get Discount >".localizedArguments(vipFee), for: .normal)
            dicountBtn.setTitle((String(user_elementData) + String(userHalfStr.suffix(5)) + String(notiApprovalMessage)).unitedStates(vipFee), for: .normal)
        }
    }

    //: @objc func dicountBtnClick() {
    @objc func dicount() {
        //: PushThen.share.func__pushToSubscribeAlert()
        PushThen.share.enablelyKey()
    }
}

// MARK: - Layout

//: extension RandomMatchVC {
extension AdvertizingReactiveCompatible {
    //: private func setupSubviews() {
    private func spotSub() {
        //: view.addSubview(gradientBtn)
        view.addSubview(gradientBtn)
        //: view.addSubview(userView)
        view.addSubview(userView)
        //: view.addSubview(titleLB)
        view.addSubview(titleLB)
        //: view.addSubview(balanceBtn)
        view.addSubview(balanceBtn)
        //: view.addSubview(numberBtn)
        view.addSubview(numberBtn)
        //: view.addSubview(randomBtn)
        view.addSubview(randomBtn)
        //: view.addSubview(dicountBtn)
        view.addSubview(dicountBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func magnitudeerchange() {
        //: gradientBtn.snp.makeConstraints { make in
        gradientBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.top.equalTo(NavigationBarHeight+10)
            make.top.equalTo(userCellCurrencyPath + 10)
            //: make.height.equalTo(55)
            make.height.equalTo(55)
        }
        //: balanceBtn.snp.makeConstraints { make in
        balanceBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(actualWidth(w: 24))
            make.height.equalTo(actualWidth(w: 24))
        }
        //: userView.snp.makeConstraints { make in
        userView.snp.makeConstraints { make in
            //: make.top.equalTo(balanceBtn.snp.bottom).offset(80)
            make.top.equalTo(balanceBtn.snp.bottom).offset(80)
            //: make.trailing.leading.equalToSuperview()
            make.trailing.leading.equalToSuperview()
            //: make.height.equalTo(354)
            make.height.equalTo(354)
        }
        //: numberBtn.snp.makeConstraints { make in
        numberBtn.snp.makeConstraints { make in
            //: make.top.equalTo(userView.snp.bottom).offset(17)
            make.top.equalTo(userView.snp.bottom).offset(17)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: randomBtn.snp.makeConstraints { make in
        randomBtn.snp.makeConstraints { make in
            //: make.top.equalTo(numberBtn.snp.bottom).offset(41)
            make.top.equalTo(numberBtn.snp.bottom).offset(41)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSizeMake(200, 56))
            make.size.equalTo(CGSizeMake(200, 56))
        }
        //: dicountBtn.snp.makeConstraints { make in
        dicountBtn.snp.makeConstraints { make in
            //: make.top.equalTo(randomBtn.snp.bottom).offset(10)
            make.top.equalTo(randomBtn.snp.bottom).offset(10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    //: private func bindInteraction() {
    private func meCounteraction() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setFreeView),
                                               selector: #selector(settle),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: mainReplaceTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reqvideoMatchCheck),
                                               selector: #selector(parallel),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: mainWorkFormat,
                                               //: object: nil)
                                               object: nil)
    }
}
