
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainSlipName:[UInt8] = [0x29,0x2e,0x29,0x34,0x68,0x23,0x2f,0x24,0x25,0x32,0x7a,0x69,0x60,0x28,0x21,0x33,0x60,0x2e,0x2f,0x34,0x60,0x22,0x25,0x25,0x2e,0x60,0x29,0x2d,0x30,0x2c,0x25,0x2d,0x25,0x2e,0x34,0x25,0x24]

private func whyVertical(lite num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "icon_livetc_warn" :*/
fileprivate let mainSufficientVanishContent:String = "female sunicon_l"
fileprivate let show_futureId:String = "wscreenrn"

/*: "System notification" :*/
fileprivate let dataControlId:String = "addition tone underSyste"
fileprivate let noti_forwardKey:String = "IFICATI"
fileprivate let userStandPostMsg:[Character] = ["o","n"]

/*: "Upload Now" :*/
fileprivate let app_likeStr:String = "shade giving minimum sickUpload "
fileprivate let k_qualifyContent:[Character] = ["N","o","w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let noti_emptyContent:String = "btn_meremaining library sound"
fileprivate let userToneTitle:String = "am_phhistory mention relation"
fileprivate let notiScaleAnswerFormat:String = "dsumete"

/*: "content" :*/
fileprivate let kKingName:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let userMovePath:String = "expense createjumpKey"

/*: "uploadUserHeaderPic" :*/
fileprivate let const_againValue:[Character] = ["u","p","l","o","a","d","U","s","e"]
fileprivate let appForceCoordinateUrl:[Character] = ["r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let userBeginName:[Character] = ["t","r","u","e","P","e","r"]
fileprivate let main_electData:[Character] = ["s","o","n","A","u","t","h"]

/*: "headPic" :*/
fileprivate let kTwoMessage:[Character] = ["h","e"]
fileprivate let main_descriptionFormat:[Character] = ["a","d","P","i","c"]

/*: "Modify the success" :*/
fileprivate let notiReadingId:String = "Modifsoon simultaneously search with"
fileprivate let appRecordNagValue:String = "ucctransportss"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GuideView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class GuideView: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.photoDisable()
        //: self.setupSubViewsConstraint()
        self.seekBy()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainSlipName.map{whyVertical(lite: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        imag.image = UIImage.locationName(name: (String(mainSufficientVanishContent.suffix(6)) + "ivetc_" + show_futureId.replacingOccurrences(of: "screen", with: "a")))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(dataControlId.suffix(5)) + "m not" + noti_forwardKey.lowercased() + String(userStandPostMsg)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(app_likeStr.suffix(7)) + String(k_qualifyContent)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(highlight), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(noti_emptyContent.prefix(6)) + "_progr" + String(userToneTitle.prefix(5)) + "oto_" + notiScaleAnswerFormat.replacingOccurrences(of: "sum", with: "el"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(offMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension GuideView {
    //: func setViewData(dit: [String: String]) {
    func storageBone(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(String(kKingName))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(userMovePath.suffix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func highlight() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(const_againValue) + String(appForceCoordinateUrl)) {
            //: updatePhotoButtonClick()
            evaluateCustom()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(userBeginName) + String(main_electData)) {
            //: DismissReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            DismissReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            //: PushThen.share.func__pushUserVerifyController(toast: nil)
            PushThen.share.undercoverOperation(toast: nil)
            //: dismiss()
            noCharacter()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func offMove() {
        //: dismiss()
        noCharacter()
    }

    //: func show() {
    func generateer() {
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
    @objc func noCharacter() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func evaluateCustom() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        SpecialPermissionTool.burst(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MedalPickTool.sameMember(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.exitSchedule()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.far(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.noCharacter()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.noCharacter()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func far(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.cellByCan()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(kTwoMessage) + String(main_descriptionFormat)): resultData]
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FlyerThen.parent(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.noCharacter()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.enablece(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.showGuidanceName(showMsg: (String(notiReadingId.prefix(5)) + "y the s" + appRecordNagValue.replacingOccurrences(of: "transport", with: "e")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: DismissReactiveCompatible.share.loginUserMode.headPic = data["headPic"] as? String
            DismissReactiveCompatible.share.loginUserMode.headPic = data[(String(kTwoMessage) + String(main_descriptionFormat))] as? String
            //: DismissReactiveCompatible.share.loginUserMode.headPicStatus = 0
            DismissReactiveCompatible.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension GuideView {
    // 添加视图
    //: private func setupSubviews() {
    private func photoDisable() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func seekBy() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
