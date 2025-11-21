
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_highlightPath:[UInt8] = [0xc7,0xc0,0xc7,0xda,0x86,0xcd,0xc1,0xca,0xcb,0xdc,0x94,0x87,0x8e,0xc6,0xcf,0xdd,0x8e,0xc0,0xc1,0xda,0x8e,0xcc,0xcb,0xcb,0xc0,0x8e,0xc7,0xc3,0xde,0xc2,0xcb,0xc3,0xcb,0xc0,0xda,0xcb,0xca]

private func decideCeaseQualify(key num: UInt8) -> UInt8 {
    return num ^ 174
}

/*: "bg_others_shadow_up" :*/
fileprivate let kTemporaryKey:String = "leave kit something address lowerbg_oth"
fileprivate let constMobileId:String = "shadoply"
fileprivate let const_reliefId:String = "_upabsolute sample sign"

/*: "nav_back_black_nor" :*/
fileprivate let user_warmTitle:String = "nav_blower delay fee eyebrow last"
fileprivate let data_fadeName:[Character] = ["l","a","c","k","_","n","o","r"]

/*: "btn_detail_more" :*/
fileprivate let appQuestionMsg:String = "violation we birthdaybtn_de"
fileprivate let appWelcomeInvolvementValue:String = "mobean"

/*: "Shielding Success" :*/
fileprivate let app_approvalWillFalseId:String = "kit discount added becomeShie"
fileprivate let appDitId:[Character] = ["c","c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let k_togetherAgoData:String = "Unmassend conduct server notice security"
fileprivate let const_thanReportTitle:String = "uaccountingeeded"

/*: "Report" :*/
fileprivate let const_cleanStr:[Character] = ["R","e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let showMomentData:String = "Remvoe send firm abs local"
fileprivate let kSecurityName:String = "Blockhere not assist act"

/*: "Block" :*/
fileprivate let notiFileValue:String = "Blocksomewhere water fence false"

/*: "Cancel" :*/
fileprivate let data_electPlanPanStr:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DetailView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class DetailView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = DisableMeasurable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        isPlus()
        //: setupSubViewsConstraint()
        map()
        //: bindInteraction()
        drag()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_highlightPath.map{decideCeaseQualify(key: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "bg_others_shadow_up")
        imgV.image = UIImage.locationName(name: (String(kTemporaryKey.suffix(6)) + "ers_" + constMobileId.replacingOccurrences(of: "ply", with: "w") + String(const_reliefId.prefix(3))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .dialog()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.locationName(name: (String(user_warmTitle.prefix(5)) + "ack_b" + String(data_fadeName))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rangeAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.locationName(name: (String(appQuestionMsg.suffix(6)) + "tail_" + appWelcomeInvolvementValue.replacingOccurrences(of: "bean", with: "re"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension DetailView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func demandPlay() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        ThresholdLevelRequestManager.burnMention(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(app_approvalWillFalseId.suffix(4)) + "lding Su" + String(appDitId)).localized : (String(k_togetherAgoData.prefix(5)) + "king S" + const_thanReportTitle.replacingOccurrences(of: "accounting", with: "cc")).localized
                //: ProgressHUD.toast(toastStr)
                InsertProgressHUD.overDeadline(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension DetailView {
    //: @objc private func clickBackButtonAction() {
    @objc private func rangeAction() {
        //: PushThen.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        PushThen.share.doingGoing()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func circleSpace() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = DoingcePopView(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(const_cleanStr)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(showMomentData.prefix(7)) + String(kSecurityName.prefix(5))).localized : (String(notiFileValue.prefix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.reasonPostList(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.sectionEnable()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.startDeedThan()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func sectionEnable() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = PositionView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.priceBlack(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func startDeedThan() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            demandPlay()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        AllowanceReactiveCompatible.maximal(title: nil, message: k_blockFailValue, leftBtnTitle: (String(data_electPlanPanStr)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: self.req_pullBlackRequest()
            self.demandPlay()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension DetailView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func termsView(_ userModel: DisableMeasurable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == DismissReactiveCompatible.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == DismissReactiveCompatible.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func isPlus() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func map() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(userCellCurrencyPath)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(userCellCurrencyPath)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: userCellCurrencyPath))
        }
    }

    //: private func bindInteraction() {
    private func drag() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.circleSpace()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
