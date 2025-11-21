
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_controlTitle:[UInt8] = [0xf5,0xfa,0xf5,0x0,0xb4,0xef,0xfb,0xf0,0xf1,0xfe,0xc6,0xb5,0xac,0xf4,0xed,0xff,0xac,0xfa,0xfb,0x0,0xac,0xee,0xf1,0xf1,0xfa,0xac,0xf5,0xf9,0xfc,0xf8,0xf1,0xf9,0xf1,0xfa,0x0,0xf1,0xf0]

fileprivate func tuneFile(even num: UInt8) -> UInt8 {
    let value = Int(num) + 116
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let constBoardTitle:String = "nature hi reduce same requiredbg_me"
fileprivate let show_lowId:[Character] = ["s","s","a"]
fileprivate let k_goldThatPath:String = "detail you dit see actge_top"

/*: "img_me_edit_photo_default" :*/
fileprivate let user_aboveId:[Character] = ["i","m","g","_","m","e","_","e","d","i","t","_","p","h","o","t","o","_"]
fileprivate let data_streamDesignPath:[Character] = ["d","e"]
fileprivate let k_methodRequireData:String = "guideult"

/*: "icon_lounge" :*/
fileprivate let app_rowKey:[Character] = ["i","c","o","n","_","l","o","u","n","g"]
fileprivate let main_sName:String = "picture"

/*: "#777777" :*/
fileprivate let mainSquareExclusiveUrl:String = "#7"
fileprivate let noti_oppositionTitle:[Character] = ["7","7","7","7","7"]

/*: "btn_me_copy" :*/
fileprivate let data_hoodRoadValue:String = "tender longbtn_me_"
fileprivate let const_yourDiscName:String = "codesigny"

/*: "btn_me_verify" :*/
fileprivate let kHandData:[Character] = ["b","t"]
fileprivate let show_frameFormat:String = "audience table stat enhancen_me_"

/*: "btn_me_new_edit" :*/
fileprivate let data_processPath:[Character] = ["b","t","n","_","m","e"]
fileprivate let showCompetePath:[Character] = ["_","n","e"]
fileprivate let user_possibleTitle:[Character] = ["w","_","e","d","i","t"]

/*: "Followers" :*/
fileprivate let k_capStr:[Character] = ["F","o","l","l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let app_removeNetworkFormat:[Character] = ["F","o","l","l","o","w"]
fileprivate let notiAdditionKey:String = "ING"

/*: "#D8D8D8" :*/
fileprivate let data_eachStr:String = "#D8D8D8below course nap resent strike"

/*: "#FF506D" :*/
fileprivate let kPhaseData:String = "#"
fileprivate let constAttractiveValue:String = "subjectsubject506D"

/*: "Reviewing" :*/
fileprivate let show_toUrl:String = "weekly view player sendRevie"

/*: "headPic" :*/
fileprivate let main_injuryFormat:String = "headPictun problem seed mate image"

/*: "Modify the success" :*/
fileprivate let show_hopApprovalName:String = "Modifyquick some"
fileprivate let noti_faceMsg:String = "crushcrushess"

/*: "UID:" :*/
fileprivate let kMuscleData:String = "oral pass isolate array lowerUID:"

/*: "btn_me_verifed" :*/
fileprivate let noti_sourceMsg:String = "every favorite opportunitybtn_me_"
fileprivate let kWhetherStr:[Character] = ["v","e","r","i","f","e","d"]

/*: "UID Copied" :*/
fileprivate let k_bearFromUrl:String = "scan"
fileprivate let main_stumbleId:String = "ID Cdocument resistance disappear"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class CoverViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        setupContent()
        //: setupSubViewsConstraint()
        lade()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_controlTitle.map{tuneFile(even: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(constBoardTitle.suffix(5)) + String(show_lowId) + String(k_goldThatPath.suffix(6)))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(user_aboveId) + String(data_streamDesignPath) + k_methodRequireData.replacingOccurrences(of: "guide", with: "fa"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickCut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = UIFont.bigGallery(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.locationName(name: (String(app_rowKey) + main_sName.replacingOccurrences(of: "picture", with: "e")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = RangeReactiveCompatible()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (mainSquareExclusiveUrl.capitalized + String(noti_oppositionTitle))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_hoodRoadValue.suffix(7)) + const_yourDiscName.replacingOccurrences(of: "design", with: "p"))), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(vital), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(kHandData) + String(show_frameFormat.suffix(5)) + "verify")), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(quantity), for: .touchUpInside)
        //: btn.isHidden = DismissReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue
        btn.isHidden = DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.male.rawValue
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(data_processPath) + String(showCompetePath) + String(user_possibleTitle))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(descriptionMerge), for: .touchUpInside)
        //: return btn
        return btn
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
        lab.text = (String(k_capStr)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.bonePlace(fontSize: 14)
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
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.pingfang(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(telephoneMessage), for: .touchUpInside)
        //: return btn
        return btn
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
        lab.text = (String(app_removeNetworkFormat) + notiAdditionKey.lowercased()).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.bonePlace(fontSize: 14)
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
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.pingfang(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(data_eachStr.prefix(7))))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 12)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (kPhaseData.capitalized + constAttractiveValue.replacingOccurrences(of: "subject", with: "F")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(show_toUrl.suffix(5)) + "wing").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension CoverViewCell {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func discPrompt(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.cellByCan()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(main_injuryFormat.prefix(7))): resultData]
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FlyerThen.parent(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
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
            self.showGuidanceName(showMsg: (String(show_hopApprovalName.prefix(6)) + " the su" + noti_faceMsg.replacingOccurrences(of: "crush", with: "c")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: DismissReactiveCompatible.share.loginUserMode.headPic = data["headPic"] as? String
            DismissReactiveCompatible.share.loginUserMode.headPic = data[(String(main_injuryFormat.prefix(7)))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: DismissReactiveCompatible.share.loginUserMode.headPicStatus = 0
            DismissReactiveCompatible.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: DismissReactiveCompatible.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.jawWithFinish(urlStr: DismissReactiveCompatible.share.loginUserMode.headPic ?? (String(user_aboveId) + String(data_streamDesignPath) + k_methodRequireData.replacingOccurrences(of: "guide", with: "fa")))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension CoverViewCell {
    /// 更新数据
    //: func setViewData() {
    func tingData() {
        //: iconImag.setUrlImage(urlStr: DismissReactiveCompatible.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.jawWithFinish(urlStr: DismissReactiveCompatible.share.loginUserMode.headPic ?? (String(user_aboveId) + String(data_streamDesignPath) + k_methodRequireData.replacingOccurrences(of: "guide", with: "fa")))
        //: iconBorder.setHeadFrameUrlImage(urlStr: DismissReactiveCompatible.share.loginUserMode.headPicFrame)
        iconBorder.visualImageOf(urlStr: DismissReactiveCompatible.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = DismissReactiveCompatible.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = DismissReactiveCompatible.share.loginUserMode.loungePlus ? .thanMortal() : .dialog()
        //: nameLB.text = DismissReactiveCompatible.share.loginUserMode.nickname
        nameLB.text = DismissReactiveCompatible.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !DismissReactiveCompatible.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !DismissReactiveCompatible.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + DismissReactiveCompatible.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(kMuscleData.suffix(4))) + DismissReactiveCompatible.share.loginUserMode.userID, for: .normal)
        //: if DismissReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.isTPAuth == MovementBasicType.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.BundleImageNamed(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.locationName(name: (String(noti_sourceMsg.suffix(7)) + String(kWhetherStr))), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.BundleImageNamed(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.locationName(name: (String(kHandData) + String(show_frameFormat.suffix(5)) + "verify")), for: .normal)
        }
        //: statusLB.isHidden = (DismissReactiveCompatible.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (DismissReactiveCompatible.share.loginUserMode.headPicStatus != InvisibleTransformable.isOnGoing.rawValue)
        //: followersNum.text = DismissReactiveCompatible.share.loginUserMode.fansNum ?? "0"
        followersNum.text = DismissReactiveCompatible.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = DismissReactiveCompatible.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = DismissReactiveCompatible.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func vital() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = DismissReactiveCompatible.share.loginUserMode.userID
        paste.string = DismissReactiveCompatible.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.showGuidanceName(showMsg: (k_bearFromUrl.replacingOccurrences(of: "scan", with: "U") + String(main_stumbleId.prefix(4)) + "opied").localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func clickCut() {
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
                            self.discPrompt(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func quantity() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if DismissReactiveCompatible.share.loginUserMode.headPicStatus == InvisibleTransformable.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if DismissReactiveCompatible.share.loginUserMode.headPicStatus == InvisibleTransformable.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        appropriateHi()
    }

    //: private func isTPAuthTool() {
    private func appropriateHi() {
        //: PushThen.share.func__pushUserVerifyController(toast: nil)
        PushThen.share.undercoverOperation(toast: nil)
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func snap() {
        //: PushThen.share.func__pushToUserDetailVC(uid: DismissReactiveCompatible.share.loginUid)
        PushThen.share.sessionSomebody(uid: DismissReactiveCompatible.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func descriptionMerge() {
        //: let vc = TalkingFavouriteViewController()
        let vc = RegularThen()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func telephoneMessage() {
        //: let vc = TalkingFavouriteViewController()
        let vc = RegularThen()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension CoverViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupContent() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func lade() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(dataPointTitle + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(dataPointTitle + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(main_logStr / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
