
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userCarrierMoreId:[UInt8] = [0x85,0x82,0x85,0x98,0xc4,0x8f,0x83,0x88,0x89,0x9e,0xd6,0xc5,0xcc,0x84,0x8d,0x9f,0xcc,0x82,0x83,0x98,0xcc,0x8e,0x89,0x89,0x82,0xcc,0x85,0x81,0x9c,0x80,0x89,0x81,0x89,0x82,0x98,0x89,0x88]

private func markVehicle(running num: UInt8) -> UInt8 {
    return num ^ 236
}

/*: "btn_recording" :*/
fileprivate let showArrowText:String = "accommodate"
fileprivate let mainSeveralKey:[Character] = ["t","n","_","r","e","c","o","r","d","i","n","g"]

/*: "btn_marching" :*/
fileprivate let app_saleKey:String = "space"
fileprivate let app_universalId:String = "tn_mahowever resistance extent relief"

/*: "btn_upload" :*/
fileprivate let data_bringStr:[Character] = ["b","t","n","_","u","p","l","o"]
fileprivate let showFieldName:String = "avery"

/*: "btn_audition" :*/
fileprivate let userInfoKey:String = "btn_audad hood alive"
fileprivate let notiApplicationMsg:String = "ITION"

/*: "Click to listen" :*/
fileprivate let k_thingValue:String = "Clickremove fit visible father"
fileprivate let showAnnouncementUrl:[Character] = ["s","t","e","n"]

/*: "Click to start recording" :*/
fileprivate let showAutomaticData:[Character] = ["C","l","i","c","k"," ","t","o"," "]
fileprivate let app_aroundVisibleName:[Character] = ["s"]
fileprivate let main_livingTitle:[Character] = ["t","a","r","t"," ","r","e","c","o","r","d","i","n","g"]

/*: "00:00" :*/
fileprivate let data_agoKey:String = "termterm:termterm"

/*: "brn_cycle" :*/
fileprivate let kFingerTitle:String = "bean exclusive cleanbrn_c"
fileprivate let notiWriteValue:[Character] = ["y","c","l","e"]

/*: "Come back" :*/
fileprivate let appAllowName:String = "become log filterCome"

/*: "btn_submit" :*/
fileprivate let mainBankFormat:String = "btn_sureading elect"

/*: "Submit" :*/
fileprivate let data_trendText:String = "beautiful assign adjust var lastSubmit"

/*: "Click to finish recording" :*/
fileprivate let showBelowForwardMessage:[Character] = ["C","l","i","c","k"," ","t","o"," ","f","i","n","i","s","h"," ","r"]
fileprivate let noti_structureContent:[Character] = ["e","c","o","r","d","i","n","g"]

/*: "Under time" :*/
fileprivate let mainStarStr:[Character] = ["U","n","d","e","r"," ","t","i","m","e"]

/*: "Click to pause" :*/
fileprivate let mainObserveId:String = "Clickticket res"
fileprivate let const_rugPath:[Character] = [" ","t","o"," ","p","a","u","s","e"]

/*: "Click to play" :*/
fileprivate let app_demandKey:String = "Clicage spec select disable"
fileprivate let app_migrationValue:[Character] = ["k"," ","t","o"," ","p","l","a","y"]

/*: "filePath" :*/
fileprivate let noti_structureId:[UInt8] = [0x68,0x74,0x61,0x50,0x65,0x6c,0x69,0x66]

/*: "time" :*/
fileprivate let user_piMsg:[UInt8] = [0x65,0x6d,0x69,0x74]

/*: "Recording cancelled" :*/
fileprivate let dataLabMessage:[Character] = ["R","e","c"]
fileprivate let k_adPath:String = "huntingrding"
fileprivate let userLaunchKey:String = "electronicelectroniced"

/*: "get json error" :*/
fileprivate let notiJobMsg:[Character] = ["g","e","t"," ","j","s","o","n"]
fileprivate let user_giveStr:String = " "
fileprivate let notiPureTitle:String = "succeedror"

/*: "btn_delete" :*/
fileprivate let k_wholeTimingTitle:String = "btn_delcontact migration trunk status"
fileprivate let show_programMsg:String = "epriority"

/*: "Add voice message" :*/
fileprivate let main_rugShakeName:String = "certain empty exception center dimensionAdd vo"
fileprivate let data_dragMineKingdomStr:String = "ssmortale"

/*: "Record a voice for 3-10s" :*/
fileprivate let kDueKey:[Character] = ["R","e","c","o","r","d"," "]
fileprivate let noti_taMessage:String = "a voibackground status demand enhance satisfy"
fileprivate let main_orientationColdData:String = " 3-10swith problem"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MedalTickToolDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum EagerBinaryCount: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum TillMultiplierTarget: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class MedalTickToolDelegate: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: TillMultiplierTarget? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.scene()
        //: self.setupSubViewsConstraint()
        self.pathConstraint()
        //: self.bindInteraction()
        self.scan()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(suspend), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userCarrierMoreId.map{markVehicle(running: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.locationName(name: (showArrowText.replacingOccurrences(of: "accommodate", with: "b") + String(mainSeveralKey))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.locationName(name: (showArrowText.replacingOccurrences(of: "accommodate", with: "b") + String(mainSeveralKey))), for: .highlighted)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.locationName(name: (app_saleKey.replacingOccurrences(of: "space", with: "b") + String(app_universalId.prefix(5)) + "rching")), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = EagerBinaryCount.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(publicProsecutor(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_bringStr) + showFieldName.replacingOccurrences(of: "very", with: "d"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(userInfoKey.prefix(7)) + notiApplicationMsg.lowercased())), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = EagerBinaryCount.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(publicProsecutor(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.text = "Click to listen".localized
        lb.text = (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 17)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(showAutomaticData) + String(app_aroundVisibleName) + String(main_livingTitle)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 20)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.text = "00:00"
        lb.text = (data_agoKey.replacingOccurrences(of: "term", with: "0"))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(kFingerTitle.suffix(5)) + String(notiWriteValue))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = EagerBinaryCount.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(publicProsecutor(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.text = "Come back".localized
        lb.text = (String(appAllowName.suffix(4)) + " back").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainBankFormat.prefix(6)) + "bmit")), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = EagerBinaryCount.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(publicProsecutor(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.text = "Submit".localized
        lb.text = (String(data_trendText.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: TriggerAudioRecorderDelegate? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = TriggerAudioRecorderDelegate.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension MedalTickToolDelegate {
    //: func showUIViaState() {
    func steep() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func take() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.set()
        //: stopPlay()
        competeHistory()
        //: self.audioTool?.destroy()
        self.audioTool?.bright()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func bass() {
        //: leftRecordSVGAParser()
        provide()
        //: rightRecordSVGAParser()
        humanRight()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.balanceStub()
        //: stopPlay()
        competeHistory()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(showBelowForwardMessage) + String(noti_structureContent)).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func edit() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.set()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            steep()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(showAutomaticData) + String(app_aroundVisibleName) + String(main_livingTitle)).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (data_agoKey.replacingOccurrences(of: "term", with: "0"))
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.enablece(showMsg: (String(mainStarStr)).localized)
        }
    }

    //: func play() {
    func back() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.ready()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(mainObserveId.prefix(5)) + String(const_rugPath)).localized
            //: listenSVGAParser()
            need()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            previous()
        }
    }

    //: func stopPlay() {
    func competeHistory() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopWindow()
        //: var text = "Click to play".localized
        var text = (String(app_demandKey.prefix(4)) + String(app_migrationValue)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func markReset() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopWindow()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(showAutomaticData) + String(app_aroundVisibleName) + String(main_livingTitle)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (data_agoKey.replacingOccurrences(of: "term", with: "0"))

        //: showUIViaState()
        steep()
    }

    //: func finish() {
    func appearanceFinish() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.stopWindow()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: noti_structureId.reversed(), encoding: .utf8)!: self.filePath, String(bytes: user_piMsg.reversed(), encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func previous() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            enablece(showMsg: main_textStr)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(mainObserveId.prefix(5)) + String(const_rugPath)).localized
        //: listenSVGAParser()
        need()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func publicProsecutor(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case EagerBinaryCount.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            SpecialPermissionTool.visualAspect(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.enablece(showMsg: appMicUrl)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isInfo else {
                    guard !SantaLuciaFirSocketDelegate.shared.isInfo else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.enablece(showMsg: kLikeStr)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.bass()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.edit()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case EagerBinaryCount.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.back()
                //: }else {
            } else {
                //: self.stopPlay()
                self.competeHistory()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case EagerBinaryCount.Reset.rawValue:
            //: reset()
            markReset()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case EagerBinaryCount.Finish.rawValue:
            //: finish()
            appearanceFinish()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func darkPlayerAction() {
        //: stopPlay()
        competeHistory()
        //: dismiss()
        loadDismiss()
    }

    //: @objc func appDidEnterBack() {
    @objc func suspend() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.enablece(showMsg: (String(dataLabMessage) + k_adPath.replacingOccurrences(of: "hunting", with: "o") + " cance" + userLaunchKey.replacingOccurrences(of: "electronic", with: "l")))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.set()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(showAutomaticData) + String(app_aroundVisibleName) + String(main_livingTitle)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (data_agoKey.replacingOccurrences(of: "term", with: "0"))
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        steep()
    }

    //: func show() {
    func rootage() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
    }

    //: func dismiss() {
    func loadDismiss() {
        //: releaseSoundView()
        take()
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func need() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = BlackEffectTool.default.recordingRevenue(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(notiJobMsg) + user_giveStr.capitalized + notiPureTitle.replacingOccurrences(of: "succeed", with: "er")))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func provide() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = BlackEffectTool.default.recordingRevenue(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(notiJobMsg) + user_giveStr.capitalized + notiPureTitle.replacingOccurrences(of: "succeed", with: "er")))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func humanRight() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = BlackEffectTool.default.recordingRevenue(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(notiJobMsg) + user_giveStr.capitalized + notiPureTitle.replacingOccurrences(of: "succeed", with: "er")))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension MedalTickToolDelegate: ContractToolDelegate {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func phoneTime(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            edit()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func untilTime(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func begin(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        edit()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func buccula(status: DecideWidthMagnitude) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.have()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized : (String(app_demandKey.prefix(4)) + String(app_migrationValue)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(k_thingValue.prefix(5)) + " to li" + String(showAnnouncementUrl)).localized : (String(app_demandKey.prefix(4)) + String(app_migrationValue)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension MedalTickToolDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func scene() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func pathConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.BundleImageNamed(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.locationName(name: (String(k_wholeTimingTitle.prefix(7)) + show_programMsg.replacingOccurrences(of: "priority", with: "te"))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(darkPlayerAction), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.bigGallery(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .dialog()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(main_rugShakeName.suffix(6)) + "ice me" + data_dragMineKingdomStr.replacingOccurrences(of: "mortal", with: "ag")).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.pingfangFont(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.bigGallery(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .appValueDetailColor()
        explainLb.textColor = .saveInColor()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(kDueKey) + String(noti_taMessage.prefix(5)) + "ce for" + String(main_orientationColdData.prefix(6))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func scan() {
        //: showUIViaState()
        steep()
    }
}
