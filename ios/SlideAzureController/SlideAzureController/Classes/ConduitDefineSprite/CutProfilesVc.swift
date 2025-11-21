
//: Declare String Begin

/*: "nil" :*/
fileprivate let user_questCookieId:String = "flowil"

/*: "Edit profiles" :*/
fileprivate let show_locationContent:String = "answer ratingEdit "
fileprivate let notiActiveLiteralValue:String = "iladvertisings"

/*: "Done" :*/
fileprivate let notiAdditionalStr:[Character] = ["D","o","n","e"]

/*: "#999999" :*/
fileprivate let k_videoDonUrl:[Character] = ["#","9"]
fileprivate let kDeviceStr:[Character] = ["9","9","9","9","9"]

/*: "uid" :*/
fileprivate let kUpperFormat:[Character] = ["u","i","d"]

/*: "Save the change?" :*/
fileprivate let showBodyFrontStr:String = "Save tsee lower exactly trunk"
fileprivate let app_matterKey:String = "unless progress line resourcege?"

/*: "Cancel" :*/
fileprivate let const_exclusiveValue:[Character] = ["C","a","n","c","e","l"]

/*: "Save" :*/
fileprivate let userAroundId:[Character] = ["S","a","v","e"]

/*: "There is content missing" :*/
fileprivate let notiDepthPath:String = "character weak peerThere "
fileprivate let notiHearPath:String = "op bride coordinatorontent m"
fileprivate let dataRankMessage:String = "ibraceing"

/*: "nickname" :*/
fileprivate let const_searchKey:[Character] = ["n","i","c","k","n"]
fileprivate let dataBoltStr:String = "AME"

/*: "birthday" :*/
fileprivate let const_betweenWhyId:[Character] = ["b","i","r"]
fileprivate let k_cropValue:[Character] = ["t","h","d","a","y"]

/*: "desc" :*/
fileprivate let k_highlightFlagFormat:String = "dbluesc"

/*: "headPic" :*/
fileprivate let show_imageStr:[Character] = ["h","e","a","d","P","i","c"]

/*: "Modify the success" :*/
fileprivate let dataAnalysisId:String = "Modiover perceive tune"
fileprivate let userInvolvementKey:String = "elite calculation want see wheele su"

/*: "pic" :*/
fileprivate let dataPostId:String = "PIC"

/*: "pids" :*/
fileprivate let userEntityMsg:[Character] = ["p","i","d","s"]

/*: "aboutMe" :*/
fileprivate let noti_middleBothId:String = "aboutMmay replace heart"
fileprivate let user_sideText:String = "sweep"

/*: "interest" :*/
fileprivate let notiRequireBrushMidKey:String = "intclean"

/*: "tagIds" :*/
fileprivate let const_absoluteName:String = "deadline"
fileprivate let user_pleaseContent:String = "each tail stem serve drownagIds"

/*: "category" :*/
fileprivate let const_anglePath:String = "attentionate"

/*: "An error occurred, please try again" :*/
fileprivate let showSinceVehicleName:[UInt8] = [0x1f,0x30,0x7e,0x3b,0x2c,0x2c,0x31,0x2c,0x7e,0x31,0x3d,0x3d,0x2b,0x2c,0x2c,0x3b,0x3a,0x72,0x7e,0x2e,0x32,0x3b,0x3f,0x2d,0x3b,0x7e,0x2a,0x2c,0x27,0x7e,0x3f,0x39,0x3f,0x37,0x30]

private func justiceVehicle(quantity num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "imgUrl" :*/
fileprivate let notiHoodAssignName:String = "imgUrlex s parent finish average"

/*: "videoUrl" :*/
fileprivate let kRecentUrl:[Character] = ["v","i","d","e","o","U","r","l"]

/*: "Video cover submitted successfully" :*/
fileprivate let k_nagKey:[UInt8] = [0x69,0x56,0x5b,0x5a,0x50,0x1f,0x5c,0x50,0x49,0x5a,0x4d,0x1f,0x4c,0x4a,0x5d,0x52,0x56,0x4b,0x4b,0x5a,0x5b,0x1f,0x4c,0x4a,0x5c,0x5c,0x5a,0x4c,0x4c,0x59,0x4a,0x53,0x53,0x46]

private func timingHeavy(detect num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "video_url" :*/
fileprivate let mainHuntingTurnSignatureFormat:[Character] = ["v","i","d","e","o"]
fileprivate let mainStoneRemindId:[Character] = ["_","u","r","l"]

/*: "img_url" :*/
fileprivate let const_kingdomData:String = "job"
fileprivate let kCapableMsg:String = "remote airmg_url"

/*: "status" :*/
fileprivate let notiBurstUrl:[Character] = ["s","t","a","t","u","s"]

/*: "headPicStatus" :*/
fileprivate let app_expressionKey:String = "headPabove operate somebody salt ice"

/*: "Unknown" :*/
fileprivate let main_lessName:String = "writing"
fileprivate let kCityUrl:[Character] = ["n","k","n","o","w","n"]

/*: "Unkonw" :*/
fileprivate let main_noticeFormat:String = "Unkonriver news common ex rich"
fileprivate let main_beamUrl:String = "us"

/*: "UITableViewCell" :*/
fileprivate let show_countStr:String = "medal maybeUITa"
fileprivate let constAdditionArrayReferText:[Character] = ["i","e","w","C","e","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CutProfilesVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingEditProfilesVC: TalkingBaseViewController {
class CutProfilesVc: WeddingLovelyRecognizerDelegate {
    //: var seleteAboutme: [UserSeleteTagModel] = []
    var seleteAboutme: [TapHandyJSON] = []
    //: var seleteInters: [UserSeleteTagModel] = []
    var seleteInters: [TapHandyJSON] = []

    //: var seleteCountry: String = ""
    var seleteCountry: String = ""

    //: var isdeleteAboutme = false
    var isdeleteAboutme = false
    //: var isdeleteInters = false
    var isdeleteInters = false

    //: var isTips = false
    var isTips = false
    //: var userAvatarImag: UIImage?
    var userAvatarImag: UIImage?
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [TillGrantMeasurable] = []
    //: var seletePhotoArray: [UIImage] = []
    var seletePhotoArray: [UIImage] = []
    //: var DeletePhotoArray: [String] = []
    var DeletePhotoArray: [String] = []

    //: var nameStr: String = ""
    var nameStr: String = ""
    //: var birthday: String = ""
    var birthday: String = ""
    //: var signStr: String = "nil"
    var signStr: String = (user_questCookieId.replacingOccurrences(of: "flow", with: "n"))

    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private var videoStatus = -3
    private var videoStatus = -3 // 视频审核状态：0待审核 1审核通过 -1审核拒绝 -3未上传
    //: private var headPicStatus = -1
    private var headPicStatus = -1 // 视频审核状态：0审核中
    //: private var headPic = ""
    private var headPic = ""
    //: private var isChangeVideo = false
    private var isChangeVideo = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = false
        self.hideNavi = false
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.doingTo()
        //: self.title = "Edit profiles".localized
        self.title = (String(show_locationContent.suffix(5)) + "prof" + notiActiveLiteralValue.replacingOccurrences(of: "advertising", with: "e")).localized

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(notiAdditionalStr)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#999999"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(k_videoDonUrl) + String(kDeviceStr))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(number), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: seleteAboutme = DismissReactiveCompatible.share.loginUserMode.aboutMe!
        seleteAboutme = DismissReactiveCompatible.share.loginUserMode.aboutMe!
        //: seleteInters = DismissReactiveCompatible.share.loginUserMode.interest!
        seleteInters = DismissReactiveCompatible.share.loginUserMode.interest!
        //: seleteCountry = DismissReactiveCompatible.share.loginUserMode.customCountry ?? ""
        seleteCountry = DismissReactiveCompatible.share.loginUserMode.customCountry ?? ""
        //: designView()
        untilVanguard()
        //: GetGallery()
        from()
        //: getVideoInfo()
        border()

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(foreground(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: deinit {
    deinit {
        //: ProgressHUD.dismiss()
        InsertProgressHUD.detectDismiss()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Laod data

//: extension TalkingEditProfilesVC {
extension CutProfilesVc {
    //: func GetGallery() {
    func from() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = DismissReactiveCompatible.share.loginUserMode.userID
        dict[(String(kUpperFormat))] = DismissReactiveCompatible.share.loginUserMode.userID
        //: TalkingMeRequestTool.req_GalleryByUid(params: dict) { succeed, result, errorModel in
        FlyerThen.by(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count>0 {
                if array.count > 0 {
                    //: self.PhotoArray.removeAll()
                    self.PhotoArray.removeAll()
                }
                //: if let datas = Array<TalkingUserInfoGalleryModel>.deserialize(from: array as? Array) {
                if let datas = Array<TillGrantMeasurable>.deserialize(from: array as? Array) {
                    //: self.PhotoArray.append(contentsOf: (datas as? [TalkingUserInfoGalleryModel])!)
                    self.PhotoArray.append(contentsOf: (datas as? [TillGrantMeasurable])!)
                }
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: override func naviPopback() {
    override func popbackResult() {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == MovementTextCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: MovementTextCell = i as! MovementTextCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == BetterView.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: BetterView = i as! BetterView
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }
        //: if (nameStr.count > 0&&DismissReactiveCompatible.share.loginUserMode.nickname != nameStr)||( birthday.count > 0&&DismissReactiveCompatible.share.loginUserMode.birthday != self.birthday)||(signStr != "nil" && DismissReactiveCompatible.share.loginUserMode.signature != signStr)||self.seletePhotoArray.count>0||self.DeletePhotoArray.count>0||isdeleteAboutme||isdeleteInters || isChangeVideo || self.userAvatarImag != nil {
        if (nameStr.count > 0 && DismissReactiveCompatible.share.loginUserMode.nickname != nameStr) || (birthday.count > 0 && DismissReactiveCompatible.share.loginUserMode.birthday != self.birthday) || (signStr != (user_questCookieId.replacingOccurrences(of: "flow", with: "n")) && DismissReactiveCompatible.share.loginUserMode.signature != signStr) || self.seletePhotoArray.count > 0 || self.DeletePhotoArray.count > 0 || isdeleteAboutme || isdeleteInters || isChangeVideo || self.userAvatarImag != nil {
            //: let config = ShowAlertConfig()
            let config = PortraitAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
            AllowanceReactiveCompatible.dateConfig(message: (String(showBodyFrontStr.prefix(6)) + "he chan" + String(app_matterKey.suffix(3))).localized, leftBtnTitle: (String(const_exclusiveValue)).localized, rightBtnTitle: (String(userAroundId)).localized, leftBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: self.navigationController?.popToRootViewController(animated: true)
                self.navigationController?.popToRootViewController(animated: true)

                //: }, rightBlock: { [weak self] in
            }, rightBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: self.uploadTool(isBack: true)
                self.bar(isBack: true)
                //: }, config: config)
            }, config: config)
            //: } else {
        } else {
            //: self.navigationController?.popToRootViewController(animated: true)
            self.navigationController?.popToRootViewController(animated: true)
        }
    }

    //: @objc func doneBtnClick() {
    @objc func number() {
        //: uploadTool(isBack: true)
        bar(isBack: true)
    }

    //: func uploadTool(isBack: Bool) {
    func bar(isBack: Bool) {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == MovementTextCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: MovementTextCell = i as! MovementTextCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == BetterView.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: BetterView = i as! BetterView
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }

        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: if (nameStr.count > 0 || DismissReactiveCompatible.share.loginUserMode.nickname?.count ?? 0 > 0) && (self.headPic.count > 0 || self.userAvatarImag != nil) && ( PhotoArray.count > 0 || self.seletePhotoArray.count > 0 ) && (isChangeVideo || self.videoPath.count > 0) {
            if nameStr.count > 0 || DismissReactiveCompatible.share.loginUserMode.nickname?.count ?? 0 > 0, self.headPic.count > 0 || self.userAvatarImag != nil, PhotoArray.count > 0 || self.seletePhotoArray.count > 0, isChangeVideo || self.videoPath.count > 0 {
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: "There is content missing".localized)
                self.enablece(showMsg: (String(notiDepthPath.suffix(6)) + "is c" + String(notiHearPath.suffix(8)) + dataRankMessage.replacingOccurrences(of: "brace", with: "ss")).localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()

        //: if nameStr.count > 0 && DismissReactiveCompatible.share.loginUserMode.nickname != nameStr {
        if nameStr.count > 0, DismissReactiveCompatible.share.loginUserMode.nickname != nameStr {
            //: dict["nickname"] = nameStr
            dict[(String(const_searchKey) + dataBoltStr.lowercased())] = nameStr
        }
        //: if birthday.count > 0 && DismissReactiveCompatible.share.loginUserMode.birthday != birthday {
        if birthday.count > 0, DismissReactiveCompatible.share.loginUserMode.birthday != birthday {
            //: dict["birthday"] = birthday
            dict[(String(const_betweenWhyId) + String(k_cropValue))] = birthday
        }
        //: if signStr != "nil" && DismissReactiveCompatible.share.loginUserMode.signature != signStr {
        if signStr != (user_questCookieId.replacingOccurrences(of: "flow", with: "n")), DismissReactiveCompatible.share.loginUserMode.signature != signStr {
            //: dict["desc"] = signStr
            dict[(k_highlightFlagFormat.replacingOccurrences(of: "blue", with: "e"))] = signStr
        }

        //: if self.userAvatarImag != nil {
        if self.userAvatarImag != nil {
            //: let resultData: NSData = self.userAvatarImag!.compressedImageData()! as NSData
            let resultData: NSData = self.userAvatarImag!.cellByCan()! as NSData
            //: dict = ["headPic": resultData]
            dict = [(String(show_imageStr)): resultData]
        }

        //: photoAndTagTool(BackT: isBack, isTips: dict.count == 0)
        revenue(BackT: isBack, isTips: dict.count == 0)

        //: if VideoIconPath.count>1 && videoPath.count>1 && isChangeVideo == true && DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if VideoIconPath.count > 1, videoPath.count > 1, isChangeVideo == true, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: uploadVideo()
            withoutUpload()
        }

        //: if dict.count == 0 {
        if dict.count == 0 {
            //: return
            return
        }

        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()

        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FlyerThen.parent(params: dict) { [weak self] succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                self.showGuidanceName(showMsg: (String(dataAnalysisId.prefix(4)) + "fy th" + String(userInvolvementKey.suffix(4)) + "ccess").localized)

                //: self.userAvatarImag = nil
                self.userAvatarImag = nil

                //: if self.nameStr.count > 0 {
                if self.nameStr.count > 0 {
                    //: DismissReactiveCompatible.share.loginUserMode.nickname = self.nameStr
                    DismissReactiveCompatible.share.loginUserMode.nickname = self.nameStr
                }
                //: if self.birthday.count > 0 {
                if self.birthday.count > 0 {
                    //: DismissReactiveCompatible.share.loginUserMode.birthday = self.birthday
                    DismissReactiveCompatible.share.loginUserMode.birthday = self.birthday
                }
                //: DismissReactiveCompatible.share.loginUserMode.signature = self.signStr
                DismissReactiveCompatible.share.loginUserMode.signature = self.signStr

                //: if isBack {
                if isBack {
                    //: self.navigationController?.popToRootViewController(animated: true)
                    self.navigationController?.popToRootViewController(animated: true)
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                    self.enablece(showMsg: errorModel!.errorMsg)
                }
            }
        }
    }

    //: func photoAndTagTool(BackT: Bool, isTips: Bool) {
    func revenue(BackT: Bool, isTips: Bool) {
        //: self.isTips = isTips
        self.isTips = isTips
        //: if self.DeletePhotoArray.count>0 {
        if self.DeletePhotoArray.count > 0 {
            // 先删再加
            //: deletePhoto()
            yearSingle()
            //: } else {
        } else {
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: uploadPhoto()
                tickTitlePhoto()
            }
        }

        //: if isdeleteAboutme {
        if isdeleteAboutme {
            //: deleteTag(type: 1)
            buildBroad(type: 1)
        }
        //: if isdeleteInters {
        if isdeleteInters {
            //: deleteTag(type: 2)
            buildBroad(type: 2)
        }
        //: if BackT {
        if BackT {
            //: self.navigationController?.popToRootViewController(animated: true)
            self.navigationController?.popToRootViewController(animated: true)
        }
    }

    /// 上传相册
    //: func uploadPhoto() {
    func tickTitlePhoto() {
        //: for i in 0..<seletePhotoArray.count {
        for i in 0 ..< seletePhotoArray.count {
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: let resultData: NSData = seletePhotoArray[i].compressedImageData()! as NSData
            let resultData: NSData = seletePhotoArray[i].cellByCan()! as NSData
            //: dict["pic"] = resultData
            dict[(dataPostId.lowercased())] = resultData
            //: ProgressHUD.show()
            InsertProgressHUD.momentShow()
            //: TalkingMeRequestTool.req_UploadPic(params: dict) { [weak self] succeed, result, errorModel in
            FlyerThen.screenThrough(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if succeed {
                if succeed {
                    //: if  self.isTips {
                    if self.isTips {
                        //: self.isTips = false
                        self.isTips = false
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                        self.showGuidanceName(showMsg: (String(dataAnalysisId.prefix(4)) + "fy th" + String(userInvolvementKey.suffix(4)) + "ccess").localized)
                    }
                    //: self.seletePhotoArray.removeAll()
                    self.seletePhotoArray.removeAll()
                    //: self.GetGallery()
                    self.from()
                }
            }
        }
    }

    /// 删除相册
    //: func deletePhoto() {
    func yearSingle() {
        //: var str = DeletePhotoArray.joined(separator: ",")
        var str = DeletePhotoArray.joined(separator: ",")
        //: str = "[\(str)]"
        str = "[\(str)]"
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["pids"] = str
        dict[(String(userEntityMsg))] = str
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_DeletePic(params: dict) { [weak self] succeed, result, errorModel in
        FlyerThen.model(params: dict) { [weak self] succeed, _, _ in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: self.uploadPhoto()
                self.tickTitlePhoto()
                //: } else {
            } else {
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
            }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.showGuidanceName(showMsg: (String(dataAnalysisId.prefix(4)) + "fy th" + String(userInvolvementKey.suffix(4)) + "ccess").localized)
                }

                //: self.DeletePhotoArray.removeAll()
                self.DeletePhotoArray.removeAll()
                //: self.GetGallery()
                self.from()
            }
        }
    }

    /// 修改tag
    //: func deleteTag(type: Int) {
    func buildBroad(type: Int) {
        //: var array: [UserSeleteTagModel] = []
        var array: [TapHandyJSON] = []
        //: var category = ""
        var category = ""
        //: if type==1 {
        if type == 1 {
            //: array=seleteAboutme
            array = seleteAboutme
            //: category="aboutMe"
            category = (String(noti_middleBothId.prefix(6)) + user_sideText.replacingOccurrences(of: "sweep", with: "e"))
            //: } else {
        } else {
            //: array=seleteInters
            array = seleteInters
            //: category="interest"
            category = (notiRequireBrushMidKey.replacingOccurrences(of: "clean", with: "e") + "rest")
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<array.count {
        for i in 0 ..< array.count {
            //: let model = array[i]
            let model = array[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<array.count-1 {
            if i < array.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(const_absoluteName.replacingOccurrences(of: "deadline", with: "t") + String(user_pleaseContent.suffix(5)))] = str
        //: dict["category"] = category
        dict[(const_anglePath.replacingOccurrences(of: "attention", with: "c") + "gory")] = category
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [weak self] succeed, result, errorModel in
        FlyerThen.combine(params: dict) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.showGuidanceName(showMsg: (String(dataAnalysisId.prefix(4)) + "fy th" + String(userInvolvementKey.suffix(4)) + "ccess").localized)
                }
                //: if type==1 {
                if type == 1 {
                    //: self.isdeleteAboutme = false
                    self.isdeleteAboutme = false
                    //: DismissReactiveCompatible.share.loginUserMode.aboutMe = self.seleteAboutme
                    DismissReactiveCompatible.share.loginUserMode.aboutMe = self.seleteAboutme
                    //: } else {
                } else {
                    //: self.isdeleteInters = false
                    self.isdeleteInters = false
                    //: DismissReactiveCompatible.share.loginUserMode.interest = self.seleteInters
                    DismissReactiveCompatible.share.loginUserMode.interest = self.seleteInters
                }
            }
        }
    }

    /// 上传视频
    //: func uploadVideo() {
    func withoutUpload() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        SpillVideoManager.shared.commitButtonCompletion(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                self.enablece(showMsg: String(bytes: showSinceVehicleName.map{justiceVehicle(quantity: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(notiHoodAssignName.prefix(6)))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(String(kRecentUrl))] = videoUrl

            //: TalkingMeRequestTool.uploadVideoUserEdit(params: dict) { [weak self] succeed, result, errorModel in
            FlyerThen.numbererrupt(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: guard succeed else {
                guard succeed else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                    self.enablece(showMsg: String(bytes: showSinceVehicleName.map{justiceVehicle(quantity: $0)}, encoding: .utf8)!.localized)
                    //: return
                    return
                }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
                //: self.videoStatus = 0
                self.videoStatus = 0
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video cover submitted successfully".localized)
                self.showGuidanceName(showMsg: String(bytes: k_nagKey.map{timingHeavy(detect: $0)}, encoding: .utf8)!.localized)
                //: for i in self.MainTable.visibleCells {
                for i in self.MainTable.visibleCells {
                    //: if i.reuseIdentifier == TalkingEditVideoCell.className() {
                    if i.reuseIdentifier == SpriggerVideoCell.className() {
                        //: let videocell: TalkingEditVideoCell = i as! TalkingEditVideoCell
                        let videocell: SpriggerVideoCell = i as! SpriggerVideoCell
                        //: videocell.upDateCellView(videoPlayPath: dict["videoUrl"] as! String)
                        videocell.chooseFlag(videoPlayPath: dict[(String(kRecentUrl))] as! String)
                        //: videocell.setVideoStatusLB(status: self.videoStatus)
                        videocell.format(status: self.videoStatus)
                    }
                }
            }
        }
    }

    //: func getVideoInfo() {
    func border() {
        //: TalkingMeRequestTool.getUploadVideoInfo { [weak self] succeed, result, errorModel in
        FlyerThen.ownerCompletion { [weak self] succeed, result, _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {return}
                guard let dict = result as? [String: Any] else { return }
                //: self.videoPath = dict["video_url"] as! String
                self.videoPath = dict[(String(mainHuntingTurnSignatureFormat) + String(mainStoneRemindId))] as! String
                //: self.VideoIconPath = dict["img_url"] as! String
                self.VideoIconPath = dict[(const_kingdomData.replacingOccurrences(of: "job", with: "i") + String(kCapableMsg.suffix(6)))] as! String
                //: self.videoStatus = dict["status"] as? Int ?? -3
                self.videoStatus = dict[(String(notiBurstUrl))] as? Int ?? -3
                //: self.headPicStatus = dict["headPicStatus"] as? Int ?? -1
                self.headPicStatus = dict[(String(app_expressionKey.prefix(5)) + "icStatus")] as? Int ?? -1
                //: self.headPic = dict["headPic"] as? String ?? ""
                self.headPic = dict[(String(show_imageStr))] as? String ?? ""
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditProfilesVC {
extension CutProfilesVc {
    //: @objc func keyboardShowBeHidden(notification: NSNotification) {
    @objc func foreground(notification: NSNotification) {
        //: let info = notification.userInfo
        let info = notification.userInfo
        //: let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height

        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == MovementTextCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: MovementTextCell = i as! MovementTextCell
                //: if namecell.nameTF.isFirstResponder {
                if namecell.nameTF.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == BetterView.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: BetterView = i as! BetterView
                //: if namecell.textView.isFirstResponder {
                if namecell.textView.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingEditProfilesVC: UITableViewDelegate, UITableViewDataSource {
extension CutProfilesVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 10
        return 10
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
                //: return 170
                return 170
            }
            //: return 0
            return 0
        }
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
                //: return 226
                return 226
            }
            //: return 0
            return 0

            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((main_logStr - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12+26+15
            let cellheiht = Y + 12 + 26 + 15
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: return 107+15
            return 107 + 15
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: return 64
            return 64
            //: } else if indexPath.section == 5 {
        } else if indexPath.section == 5 {
            //: return 176
            return 176
            //: } else if indexPath.section == 6 || indexPath.section == 7 || indexPath.section == 8 || indexPath.section == 9 {
        } else if indexPath.section == 6 || indexPath.section == 7 || indexPath.section == 8 || indexPath.section == 9 {
            //: if indexPath.section == 6 && seleteAboutme.count>0 {
            if indexPath.section == 6 && seleteAboutme.count > 0 {
                //: return self.computeCellheight(type: 1)+64
                return self.skip(type: 1) + 64
                //: } else if indexPath.section == 7 && seleteInters.count>0 {
            } else if indexPath.section == 7 && seleteInters.count > 0 {
                //: return self.computeCellheight(type: 2)+64
                return self.skip(type: 2) + 64
                //: } else if indexPath.section == 8  {
            } else if indexPath.section == 8 {
                //: let seleteSecondLang = DismissReactiveCompatible.share.loginUserMode.customSecondLang!
                let seleteSecondLang = DismissReactiveCompatible.share.loginUserMode.customSecondLang!
                //: let seleteFirstLang = DismissReactiveCompatible.share.loginUserMode.customFirstLang!
                let seleteFirstLang = DismissReactiveCompatible.share.loginUserMode.customFirstLang!
                //: var heigt = 64.0
                var heigt = 64.0
                //: if seleteFirstLang.count > 0 && seleteFirstLang != "Unknown" {
                if seleteFirstLang.count > 0 && seleteFirstLang != (main_lessName.replacingOccurrences(of: "writing", with: "U") + String(kCityUrl)) {
                    //: heigt += 40
                    heigt += 40
                }
                //: let firstStr = seleteSecondLang.first
                let firstStr = seleteSecondLang.first
                //: if firstStr?.count ?? 0 > 0 && firstStr != "Unknown" {
                if firstStr?.count ?? 0 > 0 && firstStr != (main_lessName.replacingOccurrences(of: "writing", with: "U") + String(kCityUrl)) {
                    //: if heigt > 64 && seleteSecondLang.count >= 3 {
                    if heigt > 64 && seleteSecondLang.count >= 3 {
                        //: heigt += 40
                        heigt += 40
                    }
                    //: if seleteFirstLang == "Unknown" {
                    if seleteFirstLang == (main_lessName.replacingOccurrences(of: "writing", with: "U") + String(kCityUrl)) {
                        //: heigt += 40
                        heigt += 40
                    }
                }
                //: return heigt
                return heigt
                //: } else if indexPath.section == 9  {
            } else if indexPath.section == 9 {
                //: return (seleteCountry != "Unkonw" && seleteCountry.count > 0) ?  64+40 : 64
                return (seleteCountry != (String(main_noticeFormat.prefix(5)) + main_beamUrl.replacingOccurrences(of: "us", with: "w")) && seleteCountry.count > 0) ? 64 + 40 : 64
            }

            //: return 64
            return 64
        }
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = TalkingEditAvatarCell.className()
            let identifier = PeriodReactiveCompatible.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditAvatarCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PeriodReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditAvatarCell(style: .default, reuseIdentifier: identifier)
                cell = PeriodReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: if self.headPic.count>1 {
            if self.headPic.count > 1 {
                //: cell?.setCellView(iconPath: self.headPic,status: self.headPicStatus)
                cell?.pathStatus(iconPath: self.headPic, status: self.headPicStatus)
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let identifier = TalkingEditVideoCell.className()
            let identifier = SpriggerVideoCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditVideoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SpriggerVideoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditVideoCell(style: .default, reuseIdentifier: identifier)
                cell = SpriggerVideoCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setVideoStatusLB(status: self.videoStatus)
            cell?.format(status: self.videoStatus)
            //: if VideoIconPath.count>1 && videoPath.count>1 {
            if VideoIconPath.count > 1 && videoPath.count > 1 {
                //: cell?.setCellView(iconPath: VideoIconPath)
                cell?.rushMiss(iconPath: VideoIconPath)
                //: cell?.upDateCellView(videoPlayPath: videoPath)
                cell?.chooseFlag(videoPlayPath: videoPath)
            }
            //: cell?.seleteBlock = { [weak self] imagPath, VideoPath in
            cell?.seleteBlock = { [weak self] imagPath, VideoPath in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = imagPath
                self.VideoIconPath = imagPath
                //: self.videoPath = VideoPath
                self.videoPath = VideoPath
                //: self.isChangeVideo = true
                self.isChangeVideo = true
            }
            //: cell?.deleteBlock = { [weak self] in
            cell?.deleteBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
            }
            //: return cell!
            return cell!

            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let identifier = TalkingEditPhotoCell.className()
            let identifier = SightThen.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SightThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = SightThen(style: .default, reuseIdentifier: identifier)
            }
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.silky(selete: PhotoArray)
                //: } else {
            } else {
                //: cell?.resetPhoto()
                cell?.theBlindPhoto()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: let identifier = TalkingEditNameCell.className()
            let identifier = MovementTextCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditNameCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? MovementTextCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditNameCell(style: .default, reuseIdentifier: identifier)
                cell = MovementTextCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.nameBlock = { [weak self] name in
            cell?.nameBlock = { [weak self] name in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.nameStr = name
                self.nameStr = name
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: let identifier = TalkingEditBirthdayCell.className()
            let identifier = RangeObjectProtocol.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditBirthdayCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? RangeObjectProtocol
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditBirthdayCell(style: .default, reuseIdentifier: identifier)
                cell = RangeObjectProtocol(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.birthdayBlock = { [weak self] day in
            cell?.birthdayBlock = { [weak self] day in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.birthday = day
                self.birthday = day
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 5 {
        } else if indexPath.section == 5 {
            //: let identifier = TalkingEditSignCell.className()
            let identifier = BetterView.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditSignCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BetterView
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditSignCell(style: .default, reuseIdentifier: identifier)
                cell = BetterView(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.signBlock = { [weak self] sign in
            cell?.signBlock = { [weak self] sign in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.signStr = sign
                self.signStr = sign
            }

            //: return cell!
            return cell!
            //: } else if indexPath.section == 6 || indexPath.section == 7 || indexPath.section == 8 || indexPath.section == 9 {
        } else if indexPath.section == 6 || indexPath.section == 7 || indexPath.section == 8 || indexPath.section == 9 {
            //: let identifier = TalkingEditAboutMeCell.className()
            let identifier = RegularTermsViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditAboutMeCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? RegularTermsViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditAboutMeCell(style: .default, reuseIdentifier: identifier)
                cell = RegularTermsViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: if indexPath.section == 6 {
            if indexPath.section == 6 {
                //: cell!.tagtype = .AboutMe
                cell!.tagtype = .AboutMe
                //: } else if indexPath.section == 7 {
            } else if indexPath.section == 7 {
                //: cell!.tagtype = .Interests
                cell!.tagtype = .Interests
                //: } else if indexPath.section == 8 {
            } else if indexPath.section == 8 {
                //: cell!.tagtype = .Language
                cell!.tagtype = .Language
                //: } else {
            } else {
                //: cell!.tagtype = .Country
                cell!.tagtype = .Country
            }
            //: cell?.setTitle()
            cell?.setByMinute()
            //: if seleteAboutme.count>0 && indexPath.section == 6 {
            if seleteAboutme.count > 0 && indexPath.section == 6 {
                //: cell?.setMessage(seleteAboutme)
                cell?.afterPicReceive(seleteAboutme)
            }
            //: if seleteInters.count>0 && indexPath.section == 7 {
            if seleteInters.count > 0 && indexPath.section == 7 {
                //: cell?.setMessage(seleteInters)
                cell?.afterPicReceive(seleteInters)
            }
            //: if indexPath.section == 8 {
            if indexPath.section == 8 {
                //: let seleteFirstLang = DismissReactiveCompatible.share.loginUserMode.customFirstLang!
                let seleteFirstLang = DismissReactiveCompatible.share.loginUserMode.customFirstLang!
                //: let seleteSecondLang = DismissReactiveCompatible.share.loginUserMode.customSecondLang!
                let seleteSecondLang = DismissReactiveCompatible.share.loginUserMode.customSecondLang!
                //: var arrModel =  [UserSeleteTagModel]()
                var arrModel = [TapHandyJSON]()
                //: if seleteFirstLang.count > 0 && seleteFirstLang != "Unknown" {
                if seleteFirstLang.count > 0 && seleteFirstLang != (main_lessName.replacingOccurrences(of: "writing", with: "U") + String(kCityUrl)) {
                    //: var model = UserSeleteTagModel.init()
                    var model = TapHandyJSON()
                    //: model.tag_name = seleteFirstLang
                    model.tag_name = seleteFirstLang
                    //: arrModel.append(model)
                    arrModel.append(model)
                }
                //: for str in seleteSecondLang {
                for str in seleteSecondLang {
                    //: if str.count > 0 && str != "Unknown" {
                    if str.count > 0 && str != (main_lessName.replacingOccurrences(of: "writing", with: "U") + String(kCityUrl)) {
                        //: var model = UserSeleteTagModel.init()
                        var model = TapHandyJSON()
                        //: model.tag_name = str
                        model.tag_name = str
                        //: arrModel.append(model)
                        arrModel.append(model)
                    }
                }
                //: cell?.setMessage(arrModel)
                cell?.afterPicReceive(arrModel)
            }
            //: if indexPath.section == 9 {
            if indexPath.section == 9 {
                //: var model = UserSeleteTagModel.init()
                var model = TapHandyJSON()
                //: model.tag_name = self.seleteCountry
                model.tag_name = self.seleteCountry
                //: cell?.setMessage([model])
                cell?.afterPicReceive([model])
            }
            //: cell?.editBtnBlock = { [weak self] in
            cell?.editBtnBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: let vc = TalkingEditTagVC.init()
                let vc = WritingThen()
                //: vc.delegate = self
                vc.delegate = self
                //: if indexPath.section == 6 {
                if indexPath.section == 6 {
                    //: vc.tagtype = .AboutMe
                    vc.tagtype = .AboutMe
                    //: self.navigationController!.pushViewController(vc, animated: true)
                    self.navigationController!.pushViewController(vc, animated: true)
                    //: } else if indexPath.section == 7 {
                } else if indexPath.section == 7 {
                    //: vc.tagtype = .Interests
                    vc.tagtype = .Interests
                    //: self.navigationController!.pushViewController(vc, animated: true)
                    self.navigationController!.pushViewController(vc, animated: true)
                    //: } else if indexPath.section == 8 {
                } else if indexPath.section == 8 {
                    //: let vc = EditLanguageChoiceVC()
                    let vc = BetterReactiveCompatible()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                    //: vc.backChangelang = {[weak self] in
                    vc.backChangelang = { [weak self] in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: self.MainTable.reloadData()
                        self.MainTable.reloadData()
                    }
                    //: } else {
                } else {
                    //: let vc = EditAreaCodeChoiceVC()
                    let vc = SpillRecognizerDelegate()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                    //: vc.backCountryCode = { [weak self]  in
                    vc.backCountryCode = { [weak self] in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: self.seleteCountry = DismissReactiveCompatible.share.loginUserMode.customCountry ?? ""
                        self.seleteCountry = DismissReactiveCompatible.share.loginUserMode.customCountry ?? ""
                        //: self.MainTable.reloadData()
                        self.MainTable.reloadData()
                    }
                }
            }
            //: cell?.deleteBlock = { [weak self] tag in
            cell?.deleteBlock = { [weak self] tag in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if indexPath.section == 6 {
                if indexPath.section == 6 {
                    //: if  self.seleteAboutme.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteAboutme.contains(where: { $0.animaActive(compareTo: tag) }) {
                        //: self.seleteAboutme.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteAboutme.removeAll(where: { $0.animaActive(compareTo: tag) })
                        //: self.isdeleteAboutme = true
                        self.isdeleteAboutme = true
                    }
                    //: } else {
                } else {
                    //: if  self.seleteInters.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteInters.contains(where: { $0.animaActive(compareTo: tag) }) {
                        //: self.seleteInters.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteInters.removeAll(where: { $0.animaActive(compareTo: tag) })
                        //: self.isdeleteInters = true
                        self.isdeleteInters = true
                    }
                }
            }
            //: return cell!
            return cell!
            //: } else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(show_countStr.suffix(4)) + "bleV" + String(constAdditionArrayReferText))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
                cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func computeCellheight(type: Int) -> CGFloat {
    func skip(type: Int) -> CGFloat {
        //: let itemSpacing = CGFloat(8)
        let itemSpacing = CGFloat(8)
        //: var contentWidthInRow = CGFloat(0)
        var contentWidthInRow = CGFloat(0)
        //: var array = Array<UserSeleteTagModel>()
        var array = [TapHandyJSON]()
        //: if type == 1 {
        if type == 1 {
            //: array = self.seleteAboutme
            array = self.seleteAboutme
            //: } else {
        } else {
            //: array = self.seleteInters
            array = self.seleteInters
        }
        //: var contentHeightInRow = CGFloat(30)
        var contentHeightInRow = CGFloat(30)

        //: for item in array {
        for item in array {
            //: var tag_name = ""
            var tag_name = ""
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
                //: tag_name = item.tag_name_ar
                tag_name = item.tag_name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
                //: tag_name = item.tag_name_es
                tag_name = item.tag_name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
                //: tag_name = item.tag_name_pt
                tag_name = item.tag_name_pt
            }
            //: if tag_name.count <= 0 {
            if tag_name.count <= 0 {
                //: tag_name = item.tag_name
                tag_name = item.tag_name
            }
            //: let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangFont(type: .Regular, fontSize: 15)], context: nil)
            let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.bigGallery(type: .Regular, fontSize: 15)], context: nil)
            //: let tagWidth = rect.width + 30
            let tagWidth = rect.width + 30
            //: if contentWidthInRow + tagWidth + itemSpacing > ScreenWidth-54 {
            if contentWidthInRow + tagWidth + itemSpacing > main_logStr - 54 {
                // 需要换行
                //: contentHeightInRow += (10 + 30)
                contentHeightInRow += (10 + 30)
                //: contentWidthInRow = itemSpacing
                contentWidthInRow = itemSpacing
                //: } else {
            } else {
                //: contentWidthInRow += (tagWidth+itemSpacing)
                contentWidthInRow += (tagWidth + itemSpacing)
            }
        }
        //: if array.count == 10 {
        if array.count == 10 {
            //: contentHeightInRow += 40
            contentHeightInRow += 40
        }
        //: return contentHeightInRow + 12
        return contentHeightInRow + 12
    }
}

// MARK: - CoverThen

//: extension TalkingEditProfilesVC: EditTagDelegate {
extension CutProfilesVc: CoverThen {
    //: func freshSeleteTag() {
    func averageOut() {
        //: seleteAboutme =  DismissReactiveCompatible.share.loginUserMode.aboutMe!
        seleteAboutme = DismissReactiveCompatible.share.loginUserMode.aboutMe!
        //: seleteInters =  DismissReactiveCompatible.share.loginUserMode.interest!
        seleteInters = DismissReactiveCompatible.share.loginUserMode.interest!
        //: self.MainTable .reloadData()
        self.MainTable.reloadData()
    }
}

// MARK: - BlackThen

//: extension TalkingEditProfilesVC: EditAvatarDelegate {
extension CutProfilesVc: BlackThen {
    //: func deleteAvatarPhoto() {
    func shrinkCity() {
        //: self.userAvatarImag = nil
        self.userAvatarImag = nil
    }

    /// 添加头像图片
    //: func addAvatarPhoto(_ icon: UIImage) {
    func section(_ icon: UIImage) {
        //: self.userAvatarImag = icon
        self.userAvatarImag = icon
    }
}

// MARK: - TriggerThen

//: extension TalkingEditProfilesVC: EditPhotoDelegate {
extension CutProfilesVc: TriggerThen {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func notePhoto(_ icon: [UIImage]) {
        //: for i in icon {
        for i in icon {
            //: self.seletePhotoArray.append(i)
            self.seletePhotoArray.append(i)
            //: var model = TalkingUserInfoGalleryModel.init()
            var model = TillGrantMeasurable()
            //: model.imagePic = i
            model.imagePic = i
            //: model.isLocal = true
            model.isLocal = true
            //: PhotoArray.append(model)
            PhotoArray.append(model)
        }
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func expense(_ icon: UIImage) {
        //: if  seletePhotoArray.contains(where: {$0 == icon}) {
        if seletePhotoArray.contains(where: { $0 == icon }) {
            //: seletePhotoArray.removeAll(where: {$0 == icon})
            seletePhotoArray.removeAll(where: { $0 == icon })
        }
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if icon == PhotoArray[i].imagePic {
            if icon == PhotoArray[i].imagePic {
                //: seleteIndex =  i
                seleteIndex = i
                //: break
                break
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func nearbyMaximum(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
                //: self.DeletePhotoArray.append(iconUid)
                self.DeletePhotoArray.append(iconUid)
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }
}

// MARK: - UI

//: extension TalkingEditProfilesVC {
extension CutProfilesVc {
    //: private func designView() {
    private func untilVanguard() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingEditAvatarCell.self, forCellReuseIdentifier: TalkingEditAvatarCell.className())
        MainTable.register(PeriodReactiveCompatible.self, forCellReuseIdentifier: PeriodReactiveCompatible.className())
        //: MainTable.register(TalkingEditVideoCell.self, forCellReuseIdentifier: TalkingEditVideoCell.className())
        MainTable.register(SpriggerVideoCell.self, forCellReuseIdentifier: SpriggerVideoCell.className())
        //: MainTable.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: TalkingEditPhotoCell.className())
        MainTable.register(SightThen.self, forCellReuseIdentifier: SightThen.className())
        //: MainTable.register(TalkingEditNameCell.self, forCellReuseIdentifier: TalkingEditNameCell.className())
        MainTable.register(MovementTextCell.self, forCellReuseIdentifier: MovementTextCell.className())
        //: MainTable.register(TalkingEditBirthdayCell.self, forCellReuseIdentifier: TalkingEditBirthdayCell.className())
        MainTable.register(RangeObjectProtocol.self, forCellReuseIdentifier: RangeObjectProtocol.className())
        //: MainTable.register(TalkingEditSignCell.self, forCellReuseIdentifier: TalkingEditSignCell.className())
        MainTable.register(BetterView.self, forCellReuseIdentifier: BetterView.className())
        //: MainTable.register(TalkingEditAboutMeCell.self, forCellReuseIdentifier: TalkingEditAboutMeCell.className())
        MainTable.register(RegularTermsViewCell.self, forCellReuseIdentifier: RegularTermsViewCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
            //: make.top.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(20)
        }
    }
}
