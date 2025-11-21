
//: Declare String Begin

/*: "/TXCache" :*/
fileprivate let showUnderLovelyTitle:String = "wheel given/TXCa"
fileprivate let data_peopleUrl:String = "CHE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PackagingPlayListener.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

/// 播放器状态
//: enum VideoPlayerStatus {
enum RatingPlayerStatus {
    //: case Unknown
    case Unknown // 未知
    //: case ReadyToPlay
    case ReadyToPlay // 准备播放
    //: case Playing
    case Playing // 播放中
    //: case FirstFrame
    case FirstFrame // 播放第一帧
    //: case BeginLoading
    case BeginLoading // 开始加载
    //: case EndLoading
    case EndLoading // 停止加载
    //: case Pausing
    case Pausing // 暂停中
    //: case Failed
    case Failed // 播放失败
    //: case Finished
    case Finished // 播放完成
}

///  画面填充模式
//: enum EnumTypeRenderMode {
enum DisableRenderMode {
    //: case FILL_SCREEN
    case FILL_SCREEN // 图像铺满屏幕，不留黑边，如果图像宽高比不同于屏幕宽高比，部分画面内容会被裁剪掉。
    //: case FILL_EDGE
    case FILL_EDGE // 图像适应屏幕，保持画面完整，但如果图像宽高比不同于屏幕宽高比，会有黑边的存在。
}

//: protocol TalkingVideoPlayerDelegate: NSObject {
protocol BilliardPlayerThen: NSObject {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus)
    func yesterday(player: PackagingPlayListener, status: RatingPlayerStatus)

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int)
    func tillChannelTime(player: PackagingPlayListener, duration: Int, currentTime: Int)

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat)
    func funcCompareProgress(player: PackagingPlayListener, progress: CGFloat)
}

//: class TalkingVideoPlayerManager: NSObject {
class PackagingPlayListener: NSObject {
    //: var isPlaying = false
    var isPlaying = false
    //: var isMute = false
    var isMute = false
    //: var videoUrl = ""
    var videoUrl = ""

    //: open weak var delegate: TalkingVideoPlayerDelegate?
    open weak var delegate: BilliardPlayerThen?
    //: var playStatus: VideoPlayerStatus?
    var playStatus: RatingPlayerStatus?
    //: static let shared = TalkingVideoPlayerManager()
    static let shared = PackagingPlayListener()
    //: public override init() { super.init() }
    override public init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy Load

    //: lazy var player: TXVodPlayer = {
    lazy var player: TXVodPlayer = {
        // 缓存策略
        //: TXPlayerGlobalSetting.setMaxCacheSize(100)
        TXPlayerGlobalSetting.setMaxCacheSize(100)
        //: let cachePath = NSString(format: "%@%@", NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!, "/TXCache") as String
        let cachePath = NSString(format: "%@%@", NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!, (String(showUnderLovelyTitle.suffix(5)) + data_peopleUrl.lowercased())) as String
        //: TXPlayerGlobalSetting.setCacheFolderPath(cachePath)
        TXPlayerGlobalSetting.setCacheFolderPath(cachePath)

        //: let player = TXVodPlayer()
        let player = TXVodPlayer()
        //: let config = TXVodPlayConfig()
        let config = TXVodPlayConfig()
        //: config.playerType = TX_Enum_PlayerType.PLAYER_THUMB_PLAYER.rawValue
        config.playerType = TX_Enum_PlayerType.PLAYER_THUMB_PLAYER.rawValue
        //: config.maxBufferSize = 10
        config.maxBufferSize = 10 // 播放时最大缓冲大小。单位：MB
        //: player.setRenderRotation(TX_Enum_Type_HomeOrientation.HOME_ORIENTATION_DOWN)
        player.setRenderRotation(TX_Enum_Type_HomeOrientation.HOME_ORIENTATION_DOWN)
        //: player.config = config
        player.config = config
        //: player.setMute(true)
        player.setMute(true)
        //: player.enableHWAcceleration = true
        player.enableHWAcceleration = true
        //: player.vodDelegate = self
        player.vodDelegate = self
        //: player.loop = true
        player.loop = true
        //: return player
        return player
        //: }()
    }()

    //: lazy var timer: Timer = {
    lazy var timer: Timer = {
        //: let timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(timerRun), userInfo: nil, repeats: true)
        let timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(skitter), userInfo: nil, repeats: true)
        //: RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
        RunLoop.current.add(timer, forMode: RunLoop.Mode.common)
        //: return timer
        return timer
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoPlayerManager {
extension PackagingPlayListener {
    //: func playerWithUrlAndVideoView(url: String, view: UIView) {
    func loseTrack(url: String, view: UIView) {
        //: let newUrl = url.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
        let newUrl = url.replacingOccurrences(of: userValueTitle.until6decrypt(), with: showReasonContent)
        //: self.player.removeVideoWidget()
        self.player.removeVideoWidget()

        //: if self.player.isPlaying() && self.videoUrl == newUrl {
        if self.player.isPlaying(), self.videoUrl == newUrl {
            //: self.player.setupVideoWidget(view, insert: 0)
            self.player.setupVideoWidget(view, insert: 0)
            //: self.player.resume()
            self.player.resume()
            //: return
            return
        }
        //: if self.isPlaying {
        if self.isPlaying {
            //: self.stopPlay()
            self.storageReward()
        }
        //: self.videoUrl = newUrl
        self.videoUrl = newUrl
        //: self.player.setupVideoWidget(view, insert: 0)
        self.player.setupVideoWidget(view, insert: 0)
        //: self.player.startVodPlay(newUrl)
        self.player.startVodPlay(newUrl)
    }

    //: @objc func timerRun() {
    @objc func skitter() {
        //: let duration = self.player.duration
        let duration = self.player.duration
        //: let currentTime = self.player.currentPlaybackTime
        let currentTime = self.player.currentPlaybackTime
        //: if duration() > 0 {
        if duration() > 0 {
            //: self.delegate?.func__playerProgress(player: self, progress: CGFloat(currentTime()/duration()))
            self.delegate?.funcCompareProgress(player: self, progress: CGFloat(currentTime() / duration()))
        }
    }

    //: func setRenderMode(renderMode: EnumTypeRenderMode) {
    func succeed(renderMode: DisableRenderMode) {
        //: if renderMode == .FILL_SCREEN {
        if renderMode == .FILL_SCREEN {
            //: self.player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
            self.player.setRenderMode(.RENDER_MODE_FILL_SCREEN)

            //: } else {
        } else {
            //: self.player.setRenderMode(.RENDER_MODE_FILL_EDGE)
            self.player.setRenderMode(.RENDER_MODE_FILL_EDGE)
        }
    }

    /**
     * 播放跳转到音视频流某个时间
     * @param time 流时间，单位为秒
     */
    //: func seek(time: Float) {
    func first(time: Float) {
        //: self.player.seek(time)
        self.player.seek(time)
    }

    //: func height() ->Int {
    func gold() -> Int {
        //: return Int(self.player.height())
        return Int(self.player.height())
    }

    //: func width() ->Int {
    func chore() -> Int {
        //: return Int(self.player.width())
        return Int(self.player.width())
    }

    /**
     * 设置静音
     */
    //: func setMute(bEnable: Bool) {
    func scheduleColumn(bEnable: Bool) {
        //: var isMute = bEnable
        var isMute = bEnable
        //: if TalkingSocketManager.shared.isInfo == true {
        if SantaLuciaFirSocketDelegate.shared.isInfo == true { // 音视频通话时静音
            //: isMute = true
            isMute = true
        }

        //: self.isMute = isMute
        self.isMute = isMute
        //: self.player.setMute(isMute)
        self.player.setMute(isMute)
    }

    /**
     * 继续播放
     */
    //: func resume() {
    func tillWarning() {
        //: if !self.player.isPlaying() {
        if !self.player.isPlaying() {
            //: self.player.resume()
            self.player.resume()
        }
    }

    /**
     * 暂停播放
     */
    //: func pause() {
    func isWait() {
        //: self.player.pause()
        self.player.pause()
        //: if self.playStatus != .Pausing {
        if self.playStatus != .Pausing {
            //: self.playStatus = .Pausing
            self.playStatus = .Pausing
            //: self.delegate?.func__playerStatus(player: self, status: self.playStatus!)
            self.delegate?.yesterday(player: self, status: self.playStatus!)
        }
    }

    //: func isPlayings() -> Bool {
    func alongNose() -> Bool {
        //: return self.player.isPlaying()
        return self.player.isPlaying()
    }

    //: func removeVideoWidget() {
    func since() {
        //: self.player.removeVideoWidget()
        self.player.removeVideoWidget()
    }

    //: func stopPlay() {
    func storageReward() {
        //: self.player.stopPlay()
        self.player.stopPlay()
        //: removeVideoWidget()
        since()
        //: if self.playStatus != .Finished {
        if self.playStatus != .Finished {
            //: self.playStatus = .Finished
            self.playStatus = .Finished
            //: self.delegate?.func__playerStatus(player: self, status: self.playStatus!)
            self.delegate?.yesterday(player: self, status: self.playStatus!)
        }
    }
}

//: extension TalkingVideoPlayerManager: TXVodPlayListener {
extension PackagingPlayListener: TXVodPlayListener {
    //: func onPlayEvent(_ player: TXVodPlayer!, event EvtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_: TXVodPlayer!, event EvtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: switch EvtID {
        switch EvtID {
        //: case PLAY_EVT_RCV_FIRST_I_FRAME.rawValue:
        case PLAY_EVT_RCV_FIRST_I_FRAME.rawValue:
            //: self.playStatus = .FirstFrame
            self.playStatus = .FirstFrame
            //: self.timer.fire()
            self.timer.fire()

        //: break
        //: case PLAY_EVT_PLAY_BEGIN.rawValue:
        case PLAY_EVT_PLAY_BEGIN.rawValue:
            //: self.playStatus = .Playing
            self.playStatus = .Playing
        //: break
        //: case PLAY_EVT_PLAY_PROGRESS.rawValue:
        case PLAY_EVT_PLAY_PROGRESS.rawValue:
            //: self.playStatus = .Playing
            self.playStatus = .Playing
            //: let duration = roundf(self.player.duration())
            let duration = roundf(self.player.duration())
            //: let currentTime = roundf(self.player.currentPlaybackTime())
            let currentTime = roundf(self.player.currentPlaybackTime())
            //: self.delegate?.func__playerDuration(player: self, duration: Int(duration), currentTime: Int(currentTime))
            self.delegate?.tillChannelTime(player: self, duration: Int(duration), currentTime: Int(currentTime))
            //: if (currentTime > duration) {
            if currentTime > duration {
                //: self.player.seek(0)
                self.player.seek(0)
            }
        //: break
        //: case PLAY_EVT_PLAY_END.rawValue:
        case PLAY_EVT_PLAY_END.rawValue:
            //: self.playStatus = .Finished
            self.playStatus = .Finished
        //: break
        //: case PLAY_EVT_PLAY_LOADING.rawValue:
        case PLAY_EVT_PLAY_LOADING.rawValue:
            //: self.playStatus = .BeginLoading
            self.playStatus = .BeginLoading
        //: break
        //: case PLAY_EVT_VOD_LOADING_END.rawValue:
        case PLAY_EVT_VOD_LOADING_END.rawValue:
            //: self.playStatus = .EndLoading
            self.playStatus = .EndLoading
        //: break
        //: case PLAY_ERR_NET_DISCONNECT.rawValue, PLAY_ERR_HEVC_DECODE_FAIL.rawValue, PLAY_ERR_FILE_NOT_FOUND.rawValue, PLAY_ERR_HLS_KEY.rawValue, PLAY_ERR_GET_PLAYINFO_FAIL.rawValue:
        case PLAY_ERR_NET_DISCONNECT.rawValue, PLAY_ERR_HEVC_DECODE_FAIL.rawValue, PLAY_ERR_FILE_NOT_FOUND.rawValue, PLAY_ERR_HLS_KEY.rawValue, PLAY_ERR_GET_PLAYINFO_FAIL.rawValue:
            //: self.playStatus = .Failed
            self.playStatus = .Failed
        //: break
        //: default:
        default:
            //: self.playStatus = .Unknown
            self.playStatus = .Unknown
            //: break
        }
        //: self.delegate?.func__playerStatus(player: self, status: self.playStatus!)
        self.delegate?.yesterday(player: self, status: self.playStatus!)
    }

    //: func onNetStatus(_ player: TXVodPlayer!, withParam param: [AnyHashable: Any]!) {
    func onNetStatus(_: TXVodPlayer!, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, airPlayStateDidChange airPlayState: TX_VOD_PLAYER_AIRPLAY_STATE, withParam param: [AnyHashable: Any]!) {
    func onPlayer(_: TXVodPlayer!, airPlayStateDidChange _: TX_VOD_PLAYER_AIRPLAY_STATE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, airPlayErrorDidOccur errorType: TX_VOD_PLAYER_AIRPLAY_ERROR_TYPE, withParam param: [AnyHashable: Any]!) {
    func onPlayer(_: TXVodPlayer!, airPlayErrorDidOccur _: TX_VOD_PLAYER_AIRPLAY_ERROR_TYPE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, pictureInPictureStateDidChange pipState: TX_VOD_PLAYER_PIP_STATE, withParam param: [AnyHashable: Any]!) {
    func onPlayer(_: TXVodPlayer!, pictureInPictureStateDidChange _: TX_VOD_PLAYER_PIP_STATE, withParam _: [AnyHashable: Any]!) {}

    //: func onPlayer(_ player: TXVodPlayer!, pictureInPictureErrorDidOccur errorType: TX_VOD_PLAYER_PIP_ERROR_TYPE, withParam param: [AnyHashable: Any]!) {
    func onPlayer(_: TXVodPlayer!, pictureInPictureErrorDidOccur _: TX_VOD_PLAYER_PIP_ERROR_TYPE, withParam _: [AnyHashable: Any]!) {}
}
