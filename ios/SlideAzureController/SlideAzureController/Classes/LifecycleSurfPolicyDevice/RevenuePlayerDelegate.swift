
//: Declare String Begin

/*: ".wav" :*/
fileprivate let noti_serviceUrl:String = "bench line play.wav"

/*: "Documents/User/voice/" :*/
fileprivate let showTheaterText:[Character] = ["D","o","c","u"]
fileprivate let kAfterHoodUrl:String = "MENT"
fileprivate let show_cellStr:String = "er/videntify precedent grade next"

/*: "Documents/User/record/" :*/
fileprivate let show_goValue:[Character] = ["D","o","c","u","m","e","n","t","s","/","U","s","e","r","/","r","e","c","o"]
fileprivate let const_followMessage:[Character] = ["r","d","/"]

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let data_tipKey:String = "voice dwait shift"
fileprivate let app_overKey:String = "ataTastrade feedback scope"
fileprivate let user_addContent:String = "entry combine part anyloadF"

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let notiTitleureValue:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D"]
fileprivate let constBrightUrl:String = "goldnlo"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let main_mediaSeeMsg:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a","d","E","x","p","i","r"]
fileprivate let data_sessionValue:String = "eping"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let main_lowConnectionName:String = "hop sense skip formervoice "
fileprivate let data_targetMsg:[Character] = ["T","a","s","k","D","o","w","n","l","o","a","d","E","r","r","o"]

/*: "Play Error,File does not exist" :*/
fileprivate let constSweepDisplayKey:[Character] = ["P","l","a","y"," "]
fileprivate let noti_showFilePath:String = "Errothat brace include party"
fileprivate let k_physicsMessage:String = "e doesoutlet comply enable third"
fileprivate let noti_perceiveFunFormat:String = "schedule hand cord old exist"

/*: "Play Error,File expired" :*/
fileprivate let dataClearRejectMsg:String = "Playweight fragment forward"
fileprivate let app_attributeId:[Character] = ["o","r"]
fileprivate let data_feeUrl:String = ",Filstate log"

/*: "Play Error，Net error" :*/
fileprivate let kOurMessage:[Character] = ["P","l","a","y"," ","E","r","r","o","r","，","N","e","t"," ","e","r","r","o","r"]

/*: "Currently in mute mode" :*/
fileprivate let dataChinTitle:String = "stack arc onceCurre"
fileprivate let user_northContent:String = " "
fileprivate let noti_buttonSourcePath:[Character] = ["i","n"," ","m","u","t","e"," ","m","o","d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RevenuePlayerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum ProgPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum InjuryDefaultsSerializable: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class RevenuePlayerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = RevenuePlayerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [FourReactiveCompatible] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: FourReactiveCompatible] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: ProgPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        domainInitialization()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func domainInitialization() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension RevenuePlayerDelegate {
    //: func stopAudioPlayer() {
    func visitor() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func materialBridge(playModel: FourReactiveCompatible) {
        //: stopAudioPlayer()
        visitor()
        //: initialization()
        domainInitialization()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == SampleExecuteSendable.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(noti_serviceUrl.suffix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            sample(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = SolarYaThen.successfully(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            SampleTaskDelegate.shared.output([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func thinStar(msgArr: [FourReactiveCompatible]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        visitor()
        //: initialization()
        domainInitialization()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [SolarYaThen] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: FourReactiveCompatible?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = RedMsgTable.unitedNationsAgency(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == DismissReactiveCompatible.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == DismissReactiveCompatible.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == SampleExecuteSendable.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != SampleExecuteSendable.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != SampleExecuteSendable.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = SolarYaThen.successfully(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            sample(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        SampleTaskDelegate.shared.output(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func sample(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(showTheaterText) + kAfterHoodUrl.lowercased() + "s/Us" + String(show_cellStr.prefix(4)) + "oice/")) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = const_voiceMsg + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(show_goValue) + String(const_followMessage))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = app_searchContent + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            toastStatus(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        RedMsgTable.afterSecond(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        halfNative()
    }

    //: func addDaskManagerDelegate() {
    func said() {
        //: stopAudioPlayer()
        visitor()
        //: VoiceDownloadTaskManager.shared.delegate = self
        SampleTaskDelegate.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func dryWall() {
        //: stopAudioPlayer()
        visitor()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        SampleTaskDelegate.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension RevenuePlayerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = RedMsgTable.unitedNationsAgency(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == SampleExecuteSendable.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    sample(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == SampleExecuteSendable.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.toastStatus(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == SampleExecuteSendable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.toastStatus(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == SampleExecuteSendable.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                visitor()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - MovementManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension RevenuePlayerDelegate: MovementManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func phonationHeat(model: SolarYaThen) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(data_tipKey.prefix(7)) + String(app_overKey.prefix(6)) + "kDown" + String(user_addContent.suffix(5)) + "inish"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        inputModel(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func voiceThroughFloppy(model: SolarYaThen) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(notiTitleureValue) + constBrightUrl.replacingOccurrences(of: "gold", with: "ow") + "adCancel"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        inputModel(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func otherGender(model: SolarYaThen) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(main_mediaSeeMsg) + data_sessionValue.replacingOccurrences(of: "ping", with: "d")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        inputModel(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func list(model _: SolarYaThen) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func rewriteMan(model: SolarYaThen) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(main_lowConnectionName.suffix(6)) + "data" + String(data_targetMsg)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        inputModel(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func inputModel(taskModel: SolarYaThen) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = RedMsgTable.unitedNationsAgency(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == SampleExecuteSendable.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                sample(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == SampleExecuteSendable.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == SampleExecuteSendable.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == SampleExecuteSendable.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == SampleExecuteSendable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.toastStatus(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.toastStatus(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = RedMsgTable.unitedNationsAgency(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func toastStatus(status: InjuryDefaultsSerializable) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(constSweepDisplayKey) + String(noti_showFilePath.prefix(4)) + "r,Fil" + String(k_physicsMessage.prefix(6)) + " not" + String(noti_perceiveFunFormat.suffix(6))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(dataClearRejectMsg.prefix(4)) + " Err" + String(app_attributeId) + String(data_feeUrl.prefix(4)) + "e expired").localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(kOurMessage)).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(dataChinTitle.suffix(5)) + "ntly" + user_northContent.capitalized + String(noti_buttonSourcePath)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.enablece(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            visitor()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension RevenuePlayerDelegate {
    //: func setMutedDetection() {
    func halfNative() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        IceThen.shared.taproot()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        IceThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.toastStatus(status: .FirstMuteTip)
            }
        }
    }
}
