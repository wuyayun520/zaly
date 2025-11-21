
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_liteInstallStr:[UInt8] = [0x4c,0x4b,0x4c,0x51,0xd,0x46,0x4a,0x41,0x40,0x57,0x1f,0xc,0x5,0x4d,0x44,0x56,0x5,0x4b,0x4a,0x51,0x5,0x47,0x40,0x40,0x4b,0x5,0x4c,0x48,0x55,0x49,0x40,0x48,0x40,0x4b,0x51,0x40,0x41]

private func betterVerticalSeed(bean num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "Video Cover" :*/
fileprivate let main_clearlyData:[Character] = ["V","i","d","e","o"," ","C"]
fileprivate let dataLocationReOpMsg:[Character] = ["o","v","e","r"]

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let noti_jobFormat:[UInt8] = [0x59,0x7c,0x7c,0x81,0x86,0x7f,0x38,0x79,0x38,0x8e,0x81,0x7c,0x7d,0x87,0x38,0x7b,0x87,0x8e,0x7d,0x8a,0x38,0x8c,0x87,0x38,0x8b,0x80,0x87,0x8f,0x38,0x8c,0x80,0x7d,0x38,0x7b,0x80,0x79,0x8a,0x85,0x38,0x7b,0x79,0x86,0x38,0x7f,0x7d,0x8c,0x38,0x85,0x87,0x8a,0x7d,0x38,0x7f,0x87,0x87,0x7c,0x38,0x7e,0x7d,0x7d,0x84,0x81,0x86,0x7f,0x8b,0x46]

fileprivate func personShot(domain num: UInt8) -> UInt8 {
    let value = Int(num) - 24
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_me_edit_video_default" :*/
fileprivate let data_blockMessage:[Character] = ["i","m","g","_","m","e","_","e","d","i","t","_","v","i","d","e","o","_","d","e","f","a","u"]
fileprivate let showAimMessage:String = "lwould"

/*: "btn_me_edit_photo_change" :*/
fileprivate let main_dotKey:[Character] = ["b","t","n","_","m","e","_","e","d","i"]
fileprivate let mainColdUsedTitle:[Character] = ["t","_","p","h"]
fileprivate let data_athleticEnterMsg:String = "frame charm attribute groupoto_c"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let appSampleValue:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s","t"]
fileprivate let constRemStr:String = "world snake big single proximateop_nor"

/*: "#FF506D" :*/
fileprivate let dataFormerFormat:[Character] = ["#"]
fileprivate let constDepthSegmentShortValue:String = "FFrip06D"

/*: "Reviewing" :*/
fileprivate let kSortFormat:String = "replace gesture error assistant withdrawReviewin"
fileprivate let data_vehicleHereCharacterFormat:String = "G"

/*: "icon_edit_Sample_videocover" :*/
fileprivate let app_localStr:String = "icrefern"
fileprivate let mainMemoryMessage:String = "pop paraSampl"
fileprivate let noti_betweenName:[Character] = ["e","_","v","i","d","e","o","c","o","v","e","r"]

/*: "Sample" :*/
fileprivate let app_subAgainMessage:String = "layer net innerSample"

/*: "edit_Sample_cover" :*/
fileprivate let noti_assignTitle:[Character] = ["e","d","i","t","_","S","a","m","p","l","e","_"]
fileprivate let appResearchFormat:String = "coveparticle"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let dataEnableingMsg:String = "scope angle canShoot "
fileprivate let data_innerReplyName:[Character] = ["l","e","a","s","t"," ","5"," ","s","e"]
fileprivate let app_expectedData:String = "CONDS"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpriggerVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class SpriggerVideoCell: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        commit()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_liteInstallStr.map{betterVerticalSeed(bean: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        resumeChin()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.text = "Video Cover".localized
        lb.text = (String(main_clearlyData) + String(dataLocationReOpMsg)).localized
        //: if DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue {
            //: let str  = "* \(lb.text ?? "")"
            let str = "* \(lb.text ?? "")"
            //: let attrString = NSMutableAttributedString(string: str)
            let attrString = NSMutableAttributedString(string: str)
            //: let attributes = [.foregroundColor: UIColor.red, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 18)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.red, .font: UIFont.bigGallery(type: .Semibold, fontSize: 18)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: 1))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: 1))
            //: lb.attributedText = attrString
            lb.attributedText = attrString
        }
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.saveInColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: noti_jobFormat.map{personShot(domain: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.BundleImageNamed(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_blockMessage) + showAimMessage.replacingOccurrences(of: "would", with: "t"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(domain), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(main_dotKey) + String(mainColdUsedTitle) + String(data_athleticEnterMsg.suffix(5)) + "hange")), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(disparity), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.locationName(name: (String(appSampleValue) + String(constRemStr.suffix(6))))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
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
        lb.backgroundColor = UIColor(hex: (String(dataFormerFormat) + constDepthSegmentShortValue.replacingOccurrences(of: "rip", with: "5")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(kSortFormat.suffix(8)) + data_vehicleHereCharacterFormat.lowercased()).localized
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

    //: lazy var sampleBtn: UIButton = {
    lazy var sampleBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_edit_Sample_videocover"), for: .normal)
        btn.setImage(UIImage.locationName(name: (app_localStr.replacingOccurrences(of: "refer", with: "o") + "_edit_" + String(mainMemoryMessage.suffix(5)) + String(noti_betweenName))), for: .normal)
        //: btn.addTarget(self, action: #selector(sampleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sampleClickFlow), for: .touchUpInside)
        //: btn.layer.cornerRadius = 8
        btn.layer.cornerRadius = 8
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .black.withAlphaComponent(0.5)
        view.backgroundColor = .black.withAlphaComponent(0.5)
        //: btn.addSubview(view)
        btn.addSubview(view)
        //: view.snp.makeConstraints { make in
        view.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.text = "Sample".localized
        lb.text = (String(app_subAgainMessage.suffix(6))).localized
        //: view.addSubview(lb)
        view.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension SpriggerVideoCell {
    //: func upDateCellView(videoPlayPath: String) {
    func chooseFlag(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func rushMiss(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.jawWithFinish(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func format(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension SpriggerVideoCell {
    //: @objc private func sampleBtnClick() {
    @objc private func sampleClickFlow() {
        //: let filePath = SVGAEffectTool.default.getVideoPath(name: "edit_Sample_cover")
        let filePath = BlackEffectTool.default.weightConvert(name: (String(noti_assignTitle) + appResearchFormat.replacingOccurrences(of: "particle", with: "r")))
        //: let vc = TalkingMomentVideoVC.init(videoPath: filePath)
        let vc = NightRecognizerDelegate(videoPath: filePath)
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
    }

    //: @objc private func changeBtnClick() {
    @objc private func disparity() {
        //: seleteVideoTool()
        eyeMuscle()
    }

    //: @objc private func iconbtnclick() {
    @objc private func domain() {
        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            eyeMuscle()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = NightRecognizerDelegate(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.exitSchedule()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func eyeMuscle() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        SpecialPermissionTool.burst(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = MedalPickTool.sameMember(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.exitSchedule()?.present(vc, animated: true)
                //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
                vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                                //: assets: PHAsset?)  in
                                                                assets: PHAsset?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                        MedalPickTool.thanCompletion(asset: assets) { filePath in

                            //: guard filePath != nil else { return }
                            guard filePath != nil else { return }
                            //: let asset = AVURLAsset.init(url: filePath!)
                            let asset = AVURLAsset(url: filePath!)
                            //: let time = asset.duration
                            let time = asset.duration
                            //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.reply(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.enablece(showMsg: (String(dataEnableingMsg.suffix(6)) + "video at " + String(data_innerReplyName) + app_expectedData.lowercased()).localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func reply(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = ResolveWallReactiveCompatible(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        InsertProgressHUD.detectDismiss()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.exitSchedule()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func multiWait() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension SpriggerVideoCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func commit() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
        //: backView.addSubview(sampleBtn)
        backView.addSubview(sampleBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func resumeChin() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: sampleBtn.snp.makeConstraints { make in
        sampleBtn.snp.makeConstraints { make in
            //: make.top.size.equalTo(iconBtn)
            make.top.size.equalTo(iconBtn)
            //: make.trailing.equalTo(iconBtn.snp.leading).offset(-14)
            make.trailing.equalTo(iconBtn.snp.leading).offset(-14)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
