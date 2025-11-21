
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showSomethingData:[UInt8] = [0xe2,0xe7,0xe2,0xed,0xa1,0xdc,0xe8,0xdd,0xde,0xeb,0xb3,0xa2,0x99,0xe1,0xda,0xec,0x99,0xe7,0xe8,0xed,0x99,0xdb,0xde,0xde,0xe7,0x99,0xe2,0xe6,0xe9,0xe5,0xde,0xe6,0xde,0xe7,0xed,0xde,0xdd]

fileprivate func ditPresentationOthers(reserve num: UInt8) -> UInt8 {
    let value = Int(num) - 121
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Move here to cancel" :*/
fileprivate let constTrainVersionMsg:String = "Move hevideo run resistance warn"
fileprivate let kDestinationId:[Character] = ["r","e"," ","t","o"," ","c","a","n","c","e","l"]

/*: "btn_talk_voice_recording_nor" :*/
fileprivate let app_uniteKey:String = "action developmentbtn_"
fileprivate let showMakeBeamStr:String = "_voice_stem texture expected media"
fileprivate let showPersonalityId:String = "repleaser"
fileprivate let userReduceFormat:[Character] = ["d","i","n","g","_","n","o","r"]

/*: "Release to cancel" :*/
fileprivate let constClipContextData:[Character] = ["R","e","l","e","a"]
fileprivate let const_acrossWithoutFeedKey:String = "se tpole discourse coat term"

/*: "#FF506D" :*/
fileprivate let data_controlId:[Character] = ["#","F","F","5","0"]
fileprivate let show_canUrl:String = "6Dseed brow selection"

/*: "btn_talk_voice_recording_warn_nor" :*/
fileprivate let constUniteKey:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x6e,0x72,0x61,0x77,0x5f,0x67,0x6e,0x69,0x64,0x72,0x6f,0x63,0x65,0x72,0x5f,0x65,0x63,0x69,0x6f,0x76,0x5f,0x6b,0x6c,0x61,0x74,0x5f,0x6e,0x74,0x62]

/*: "The upper limit is reached" :*/
fileprivate let main_foundArtUrl:[Character] = ["T","h","e"," ","u","p","p","e","r"," ","l","i","m","i","t"," ","i","s"," ","r"]
fileprivate let kRootText:String = "eachezone"

/*: "Under time" :*/
fileprivate let k_followTitle:[Character] = ["U","n","d"]
fileprivate let show_outlineTitle:[Character] = ["e","r"," ","t","i","m","e"]

/*: "Talk too short" :*/
fileprivate let dataUniversalKey:String = "she balance plat progressTalk "
fileprivate let constShirtValue:String = "HORT"

/*: "get json error" :*/
fileprivate let showResumeUrl:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndRecordView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import UIKit
import UIKit

//: enum RecordStatus: Int {
enum StatusCountLiteral: Int {
    //: case todefault = 0
    case todefault = 0 // 未开始
    //: case recording
    case recording // 正在录制
    //: case tooShoot
    case tooShoot // 录音时长过短
    //: case tooLong
    case tooLong // 录音时长过长
    //: case cancel
    case cancel // 录音取消
}

//: class TalkingChatRecordView: UIView {
class EndRecordView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: customUI()
        successfullyEnablely()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showSomethingData.map{ditPresentationOthers(reserve: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(252+kDeviceSafeBottomHeight)
            make.height.equalTo(252 + appInviteValue)
        }

        //: topTipLabel.snp.makeConstraints { make in
        topTipLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(21)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: durationLabel.snp.makeConstraints { make in
        durationLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: leftPlayer.snp.makeConstraints { make in
        leftPlayer.snp.makeConstraints { make in
            //: make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: rightPlayer.snp.makeConstraints { make in
        rightPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: micImageView.snp.makeConstraints { make in
        micImageView.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.top.equalTo(durationLabel.snp.bottom).offset(32)
            make.top.equalTo(durationLabel.snp.bottom).offset(32)
            //: make.width.height.equalTo(99)
            make.width.height.equalTo(99)
        }

        //: microphonePlayer.snp.makeConstraints { make in
        microphonePlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }
        //: microphoneRedPlayer.snp.makeConstraints { make in
        microphoneRedPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }

        //: leftRedPlayer.snp.makeConstraints { make in
        leftRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(leftPlayer)
            make.edges.equalTo(leftPlayer)
        }
        //: rightRedPlayer.snp.makeConstraints { make in
        rightRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(rightPlayer)
            make.edges.equalTo(rightPlayer)
        }
    }

    //: public func customUI () {
    public func successfullyEnablely() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topTipLabel)
        contentView.addSubview(topTipLabel)
        //: contentView.addSubview(durationLabel)
        contentView.addSubview(durationLabel)
        //: contentView.addSubview(leftPlayer)
        contentView.addSubview(leftPlayer)
        //: contentView.addSubview(rightPlayer)
        contentView.addSubview(rightPlayer)
        //: contentView.addSubview(micImageView)
        contentView.addSubview(micImageView)
        //: contentView.addSubview(microphonePlayer)
        contentView.addSubview(microphonePlayer)
        //: contentView.addSubview(microphoneRedPlayer)
        contentView.addSubview(microphoneRedPlayer)
        //: contentView.addSubview(leftRedPlayer)
        contentView.addSubview(leftRedPlayer)
        //: contentView.addSubview(rightRedPlayer)
        contentView.addSubview(rightRedPlayer)
    }

    //: public func setRecordStatus (status: RecordStatus) {
    public func lowness(status: StatusCountLiteral) {
        //: leftRedPlayer.isHidden = status.rawValue <= 1
        leftRedPlayer.isHidden = status.rawValue <= 1
        //: rightRedPlayer.isHidden = status.rawValue <= 1
        rightRedPlayer.isHidden = status.rawValue <= 1
        //: microphoneRedPlayer.isHidden = status.rawValue <= 1
        microphoneRedPlayer.isHidden = status.rawValue <= 1
        //: microphonePlayer.isHidden = status.rawValue > 1
        microphonePlayer.isHidden = status.rawValue > 1

        //: switch status {
        switch status {
        //: case .recording:
        case .recording:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(constTrainVersionMsg.prefix(7)) + String(kDestinationId)).localized
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.dialog()
            //: micImageView.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.locationName(name: (String(app_uniteKey.suffix(4)) + "talk" + String(showMakeBeamStr.prefix(7)) + showPersonalityId.replacingOccurrences(of: "please", with: "co") + String(userReduceFormat)))
        //: break
        //: case .cancel:
        case .cancel:
            //: topTipLabel.text = "Release to cancel".localized
            topTipLabel.text = (String(constClipContextData) + String(const_acrossWithoutFeedKey.prefix(4)) + "o cancel").localized
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(data_controlId) + String(show_canUrl.prefix(2))))
            //: micImageView.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.locationName(name: String(bytes: constUniteKey.reversed(), encoding: .utf8)!)
            //: break

        //: case .tooLong:
        case .tooLong:
            //: topTipLabel.text = "The upper limit is reached".localized
            topTipLabel.text = (String(main_foundArtUrl) + kRootText.replacingOccurrences(of: "zone", with: "d")).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(data_controlId) + String(show_canUrl.prefix(2))))
            //: micImageView.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.locationName(name: String(bytes: constUniteKey.reversed(), encoding: .utf8)!)
            //: break

        //: case .tooShoot:
        case .tooShoot:
            //: func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            enablece(showMsg: (String(k_followTitle) + String(show_outlineTitle)).localized)
            //: topTipLabel.text = "Talk too short".localized
            topTipLabel.text = (String(dataUniversalKey.suffix(5)) + "too s" + constShirtValue.lowercased()).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(data_controlId) + String(show_canUrl.prefix(2))))
            //: micImageView.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.locationName(name: String(bytes: constUniteKey.reversed(), encoding: .utf8)!)
            //: break

        //: default:
        default:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(constTrainVersionMsg.prefix(7)) + String(kDestinationId)).localized
            //: durationLabel.text = "0″"
            durationLabel.text = "0″"
            //: durationLabel.textColor = UIColor.appTitleColor()
            durationLabel.textColor = UIColor.dialog()
            //: micImageView.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.locationName(name: (String(app_uniteKey.suffix(4)) + "talk" + String(showMakeBeamStr.prefix(7)) + showPersonalityId.replacingOccurrences(of: "please", with: "co") + String(userReduceFormat)))
            //: break
        }
    }

    //: public func showView () {
    public func inserterView() {
        //: durationLabel.text = "0″"
        durationLabel.text = "0″"
        //: durationLabel.textColor = UIColor.appTitleColor()
        durationLabel.textColor = UIColor.dialog()
    }

    //: public func hidenView () {
    public func roundDimension() {
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    //: public func startAnimation () {
    public func concentration() {
        //: setRecordStatus(status: .todefault)
        lowness(status: .todefault)
    }

    //: public func setPlayer (player: SVGAPlayer, status: RecordStatus) {
    public func readyVisitor(player: SVGAPlayer, status: StatusCountLiteral) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            var url = BlackEffectTool.default.recordingRevenue(type: .Chat_Record_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Red)
                url = BlackEffectTool.default.recordingRevenue(type: .Chat_Record_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(showResumeUrl)))
        }
    }

    //: public func setMicrophonePlayer (player: SVGAPlayer, status: RecordStatus) {
    public func outsideRevenue(player: SVGAPlayer, status: StatusCountLiteral) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            var url = BlackEffectTool.default.recordingRevenue(type: .Greet_Corrugated_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Red)
                url = BlackEffectTool.default.recordingRevenue(type: .Greet_Corrugated_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(showResumeUrl)))
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor.init(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        content.backgroundColor = UIColor(red: 234 / 255.0, green: 234 / 255.0, blue: 234 / 255.0, alpha: 1.0)
        //: return content
        return content
        //: }()
    }()

    //: lazy var topTipLabel: UILabel = {
    lazy var topTipLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.saveInColor()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Move here to cancel".localized
        lb.text = (String(constTrainVersionMsg.prefix(7)) + String(kDestinationId)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var leftPlayer: SVGAPlayer = {
    lazy var leftPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        readyVisitor(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var durationLabel: UILabel = {
    lazy var durationLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "0″"
        lb.text = "0″"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var rightPlayer: SVGAPlayer = {
    lazy var rightPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        readyVisitor(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphonePlayer: SVGAPlayer = {
    lazy var microphonePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .todefault)
        outsideRevenue(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphoneRedPlayer: SVGAPlayer = {
    lazy var microphoneRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .tooLong)
        outsideRevenue(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var micImageView: UIImageView = {
    lazy var micImageView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "btn_talk_voice_recording_nor")
        img.image = UIImage.locationName(name: (String(app_uniteKey.suffix(4)) + "talk" + String(showMakeBeamStr.prefix(7)) + showPersonalityId.replacingOccurrences(of: "please", with: "co") + String(userReduceFormat)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var leftRedPlayer: SVGAPlayer = {
    lazy var leftRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        readyVisitor(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRedPlayer: SVGAPlayer = {
    lazy var rightRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        readyVisitor(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()
}
