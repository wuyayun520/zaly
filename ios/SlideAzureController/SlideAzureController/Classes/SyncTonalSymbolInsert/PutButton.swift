
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showIsolateUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_chat_start" :*/
fileprivate let noti_coalTitle:String = "numb screen provider food recordingicon_ch"
fileprivate let app_recoverContent:String = "house selected sickat_s"

/*: "#EBEBEB" :*/
fileprivate let noti_taskMessage:[Character] = ["#","E","B","E","B"]
fileprivate let mainLosePath:String = "Ecoordinator"

/*: "icon_talk_reply_voive" :*/
fileprivate let show_presentationName:[Character] = ["i","c","o","n","_","t","a"]
fileprivate let notiDiscussionKey:String = "lk_replan eff dry advanced"
fileprivate let show_phoneMsg:String = "universal farply_"

/*: "#DCDCDC" :*/
fileprivate let userSnakeFormat:[Character] = ["#","D"]
fileprivate let userRetStr:[Character] = ["C","D","C","D","C"]

/*: "text" :*/
fileprivate let constDeepUrl:String = "TEXT"

/*: "gift" :*/
fileprivate let showOwnDrawingKey:[Character] = ["g","i","f","t"]

/*: "Sent " :*/
fileprivate let noti_discountStr:String = "Sent refuse bolt next opportunity surgery"

/*: "audio" :*/
fileprivate let k_oralRemindFormat:String = "amentionio"

/*: "img" :*/
fileprivate let dataProfileValue:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let const_eventFormat:String = "videresult"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PutButton.swift
//  SlideAzureController
//
//  Created by Hemming on 2024/7/26.
//

//: import UIKit
import UIKit

//: class TalkingMsgQuoteView: UIButton {
class PutButton: UIButton {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        edge()
        //: setupSubViewsConstraint()
        speedyTranslation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showIsolateUrl.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
         // Drawing code
     }
     */
    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var nameLab: UILabel = {
    lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.bonePlace(fontSize: 12)
        //: lab.clipsToBounds = true
        lab.clipsToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var imgView: UIImageView = {
    lazy var imgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 5
        img.layer.cornerRadius = 5
        //: img.clipsToBounds = true
        img.clipsToBounds = true
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: lazy var playView: UIImageView = {
    lazy var playView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_chat_start")
        img.image = UIImage.locationName(name: (String(noti_coalTitle.suffix(7)) + String(app_recoverContent.suffix(4)) + "tart"))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var audioView: UIView = {
    lazy var audioView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#EBEBEB")
        v.backgroundColor = UIColor(hex: (String(noti_taskMessage) + mainLosePath.replacingOccurrences(of: "coordinator", with: "B")))
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.clipsToBounds = true
        v.clipsToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: lazy var audioImg: UIImageView = {
    lazy var audioImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_talk_reply_voive")
        img.image = UIImage.locationName(name: (String(show_presentationName) + String(notiDiscussionKey.prefix(5)) + String(show_phoneMsg.suffix(4)) + "voive"))
        //: return img
        return img
        //: }()
    }()

    //: lazy var audioLab: UILabel = {
    lazy var audioLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.bonePlace(fontSize: 12)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .saveInColor()
        //: return lab
        return lab
        //: }()
    }()

    //: var direction : TMsgDirection = .MsgDirectionIncoming {
    var direction: DoingceColumnConvertible = .MsgDirectionIncoming {
        //: didSet {
        didSet {
            //: if direction == .MsgDirectionIncoming {
            if direction == .MsgDirectionIncoming {
                //: self.lineView.backgroundColor = UIColor.appValueDetailColor()
                self.lineView.backgroundColor = UIColor.saveInColor()
                //: self.nameLab.textColor = UIColor.appValueDetailColor()
                self.nameLab.textColor = UIColor.saveInColor()
                //: }else{
            } else {
                //: self.lineView.backgroundColor = UIColor(hex: "#DCDCDC")
                self.lineView.backgroundColor = UIColor(hex: (String(userSnakeFormat) + String(userRetStr)))
                //: self.nameLab.textColor = UIColor(hex: "#DCDCDC")
                self.nameLab.textColor = UIColor(hex: (String(userSnakeFormat) + String(userRetStr)))
            }
        }
    }

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: LightPrimeModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: self.imgView.isHidden = true
            self.imgView.isHidden = true
            //: self.playView.isHidden = true
            self.playView.isHidden = true
            //: self.audioView.isHidden = true
            self.audioView.isHidden = true
            //: var spaceRight = 4
            var spaceRight = 4
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (constDeepUrl.lowercased()) {
                //: self.nameLab.text = quoteModel.sendName + ": " +  quoteModel.renderData.content
                self.nameLab.text = quoteModel.sendName + ": " + quoteModel.renderData.content
                //: }else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (String(showOwnDrawingKey)) {
                //: self.nameLab.text = quoteModel.sendName + ": " + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.nameLab.text = quoteModel.sendName + ": " + (String(noti_discountStr.prefix(5))).localized + quoteModel.renderData.fitEnd() + " x\(quoteModel.renderData.giftNum)"
                //: }else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (k_oralRemindFormat.replacingOccurrences(of: "mention", with: "ud")) {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.audioView.isHidden = false
                self.audioView.isHidden = false
                //: self.audioLab.text = "\(quoteModel.renderData.duration)″"
                self.audioLab.text = "\(quoteModel.renderData.duration)″"
                //: spaceRight = 52
                spaceRight = 52

                //: }else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (String(dataProfileValue)) {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.imgView.isHidden = false
                self.imgView.isHidden = false
                //: self.playView.isHidden = true
                self.playView.isHidden = true

                //: var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
                var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
                //: filePath = (filePath as NSString).appendingPathComponent(imageFileName)
                filePath = (filePath as NSString).appendingPathComponent(userStyleFormat)
                //: filePath = (filePath as NSString).appendingPathComponent((quoteModel.renderData.previewUrl as NSString).lastPathComponent)
                filePath = (filePath as NSString).appendingPathComponent((quoteModel.renderData.previewUrl as NSString).lastPathComponent)
                //: let isExists = FileManager.default.fileExists(atPath: filePath)
                let isExists = FileManager.default.fileExists(atPath: filePath)

                //: if quoteModel.renderData.previewUrl.count > 0 && isExists {
                if quoteModel.renderData.previewUrl.count > 0 && isExists {
                    //: DispatchQueue.global().async {
                    DispatchQueue.global().async {
                        //: let imageData = NSData.init(contentsOfFile: filePath)
                        let imageData = NSData(contentsOfFile: filePath)
                        //: DispatchQueue.main.async {
                        DispatchQueue.main.async {
                            //: guard imageData != nil else {
                            guard imageData != nil else {
                                //: return
                                return
                            }
                            //: let image = UIImage.init(data: imageData! as Data)
                            let image = UIImage(data: imageData! as Data)
                            //: self.imgView.image = image
                            self.imgView.image = image
                        }
                    }
                    //: } else {
                } else {
                    //: self.imgView.setUrlImage(urlStr: quoteModel.renderData.previewUrl)
                    self.imgView.bolt(urlStr: quoteModel.renderData.previewUrl)
                }
                //: spaceRight = 34
                spaceRight = 34
                //: }else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (const_eventFormat.replacingOccurrences(of: "result", with: "o")) {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.imgView.isHidden = false
                self.imgView.isHidden = false
                //: self.playView.isHidden = false
                self.playView.isHidden = false
                //: self.imgView.setUrlImage(urlStr: quoteModel.renderData.coverUrl)
                self.imgView.bolt(urlStr: quoteModel.renderData.coverUrl)
                //: spaceRight = 34
                spaceRight = 34
            }
            //: self.nameLab.snp.updateConstraints { make in
            self.nameLab.snp.updateConstraints { make in
                //: make.trailing.lessThanOrEqualTo(-spaceRight)
                make.trailing.lessThanOrEqualTo(-spaceRight)
            }
        }
    }
}

//: extension TalkingMsgQuoteView{
extension PutButton {}

// MARK: - Layout

//: extension TalkingMsgQuoteView {
extension PutButton {
    /// 添加视图
    //: private func setupSubviews() {
    private func edge() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(nameLab)
        self.addSubview(nameLab)

        //: self.addSubview(imgView)
        self.addSubview(imgView)
        //: self.addSubview(playView)
        self.addSubview(playView)

        //: self.addSubview(audioView)
        self.addSubview(audioView)
        //: audioView.addSubview(audioImg)
        audioView.addSubview(audioImg)
        //: audioView.addSubview(audioLab)
        audioView.addSubview(audioLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func speedyTranslation() {
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing).offset(4)
            make.leading.equalTo(lineView.snp.trailing).offset(4)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
            //: make.centerY.equalTo(lineView)
            make.centerY.equalTo(lineView)
            //: make.trailing.lessThanOrEqualTo(0)
            make.trailing.lessThanOrEqualTo(0)
        }

        //: imgView.snp.makeConstraints { make in
        imgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.height.width.equalTo(30)
            make.height.width.equalTo(30)
            //: make.top.equalTo(1)
            make.top.equalTo(1)
        }
        //: playView.snp.makeConstraints { make in
        playView.snp.makeConstraints { make in
            //: make.height.width.equalTo(18)
            make.height.width.equalTo(18)
            //: make.center.equalTo(imgView)
            make.center.equalTo(imgView)
        }

        //: audioView.snp.makeConstraints { make in
        audioView.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.width.equalTo(48)
            make.width.equalTo(48)
            //: make.top.equalTo(1)
            make.top.equalTo(1)
        }
        //: audioImg.snp.makeConstraints { make in
        audioImg.snp.makeConstraints { make in
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(13)
            make.height.equalTo(13)
            //: make.width.equalTo(9)
            make.width.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: audioLab.snp.makeConstraints { make in
        audioLab.snp.makeConstraints { make in
            //: make.leading.equalTo(audioImg.snp.trailing).offset(6)
            make.leading.equalTo(audioImg.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
