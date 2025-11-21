
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_createMessage:[UInt8] = [0x1e,0x19,0x1e,0x3,0x5f,0x14,0x18,0x13,0x12,0x5,0x4d,0x5e,0x57,0x1f,0x16,0x4,0x57,0x19,0x18,0x3,0x57,0x15,0x12,0x12,0x19,0x57,0x1e,0x1a,0x7,0x1b,0x12,0x1a,0x12,0x19,0x3,0x12,0x13]

private func atTheSameTime(strip num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "icon_me_voice_white" :*/
fileprivate let noti_curMsg:String = "verticalo"
fileprivate let kLaboratoryId:String = "place delivery zone hour historyn_me_v"
fileprivate let noti_shName:String = "sample stat strip_white"

/*: "btn_auto_write" :*/
fileprivate let k_calculateValue:[Character] = ["b","t","n","_","a","u","t","o"]
fileprivate let mainScoreFormat:String = "literal"
fileprivate let dataTaId:String = "forerite"

/*: "Pending review" :*/
fileprivate let main_closedAppearPath:String = "Pendrender feedback"
fileprivate let notiCoverText:String = "guide"

/*: "get json error" :*/
fileprivate let show_futureStageMsg:String = "get jkingdom fast period"
fileprivate let const_screenBodyKey:[Character] = ["r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrantViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: typealias AudioPlayActionBlock = () -> Void
typealias AudioPlayActionBlock = () -> Void
//: typealias EditActionBlock = () -> Void
typealias EditActionBlock = () -> Void

//: class TalkingGreetAudioCell: UITableViewCell {
class GrantViewCell: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

    //: var audioPlayActionBlock: AudioPlayActionBlock?
    var audioPlayActionBlock: AudioPlayActionBlock?
    //: var editActionBlock: EditActionBlock?
    var editActionBlock: EditActionBlock?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.occupier()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_createMessage.map{atTheSameTime(strip: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    // 懒加载初始化
    //: lazy var titleLb: UILabel = {
    lazy var titleLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var statusLb: UILabel = {
    lazy var statusLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.textColor = UIColor.msgTipsColor()
        lb.textColor = UIColor.chromaticColourColor()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var audioBtn: UIButton = {
    lazy var audioBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.init(), for: .normal)
        btn.setImage(UIImage(), for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 155, height: 35)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 155, height: 35)), for: .normal)
        //: btn.layer.cornerRadius = 17.5
        btn.layer.cornerRadius = 17.5
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(recordBtnAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(spare), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var lengthLabel: UILabel = {
    lazy var lengthLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: lb.textColor = .white
        lb.textColor = .white
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var playIconView: UIImageView = {
    lazy var playIconView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "icon_me_voice_white"))
        let imag = UIImageView(image: UIImage.locationName(name: (noti_curMsg.replacingOccurrences(of: "vertical", with: "ic") + String(kLaboratoryId.suffix(6)) + "oice" + String(noti_shName.suffix(6)))))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var recordPlayer: SVGAPlayer = {
    lazy var recordPlayer: SVGAPlayer = {
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

    //: lazy var editBtn: UIButton = {
    lazy var editBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_auto_write"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(k_calculateValue) + mainScoreFormat.replacingOccurrences(of: "literal", with: "_") + dataTaId.replacingOccurrences(of: "fore", with: "w"))), for: .normal)
        //: btn.addTarget(self, action: #selector(editBtnAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subedit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingGreetAudioCell {
extension GrantViewCell {
    //: @objc func recordBtnAction() {
    @objc func spare() {
        //: if audioPlayActionBlock != nil {
        if audioPlayActionBlock != nil {
            //: audioPlayActionBlock!()
            audioPlayActionBlock!()
        }
    }

    //: @objc func editBtnAction() {
    @objc func subedit() {
        //: if editActionBlock != nil {
        if editActionBlock != nil {
            //: editActionBlock!()
            editActionBlock!()
        }
    }

    //: func setGreetAudioCell(model: TalkingGreetModel, row: Int, isLast: Bool) {
    func result(model: ConcealedModelType, row: Int, isLast: Bool) {
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: titleLb.text = model.remark
        titleLb.text = model.remark
        //: if model.status == 0 {
        if model.status == 0 {
            //: statusLb.text = "Pending review".localized
            statusLb.text = (String(main_closedAppearPath.prefix(4)) + "ing revie" + notiCoverText.replacingOccurrences(of: "guide", with: "w")).localized
            //: statusLb.isHidden = false
            statusLb.isHidden = false
            //: }else {
        } else {
            //: statusLb.isHidden = true
            statusLb.isHidden = true
        }
        //: lengthLabel.text = String.init(format: "%d″", model.length)
        lengthLabel.text = String(format: "%d″", model.length)
    }

    //: func syncPlayState(isPlaying: Bool) {
    func eye(isPlaying: Bool) {
        //: self.recordPlayer.isHidden = !isPlaying
        self.recordPlayer.isHidden = !isPlaying
        //: self.playIconView.isHidden = isPlaying
        self.playIconView.isHidden = isPlaying
        //: if (isPlaying) {
        if isPlaying {
            //: audioPlayEffect()
            mandibularBone()
            //: }else {
        } else {
            //: self.recordPlayer.stopAnimation()
            self.recordPlayer.stopAnimation()
        }
    }

    //: func audioPlayEffect() {
    func mandibularBone() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Play_Audio_Wave)
            let url = BlackEffectTool.default.recordingRevenue(type: .Play_Audio_Wave)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.recordPlayer.videoItem = videoItem
                self.recordPlayer.videoItem = videoItem
                //: self.recordPlayer.startAnimation()
                self.recordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(show_futureStageMsg.prefix(5)) + "son e" + String(const_screenBodyKey)))
        }
    }
}

//: extension TalkingGreetAudioCell {
extension GrantViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func occupier() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
        //: self.contentView.addSubview(backView)
        self.contentView.addSubview(backView)
        //: backView.addSubview(titleLb)
        backView.addSubview(titleLb)
        //: backView.addSubview(statusLb)
        backView.addSubview(statusLb)
        //: backView.addSubview(audioBtn)
        backView.addSubview(audioBtn)
        //: backView.addSubview(editBtn)
        backView.addSubview(editBtn)
        //: self.audioBtn.addSubview(lengthLabel)
        self.audioBtn.addSubview(lengthLabel)
        //: self.audioBtn.addSubview(playIconView)
        self.audioBtn.addSubview(playIconView)
        //: self.audioBtn.addSubview(recordPlayer)
        self.audioBtn.addSubview(recordPlayer)
    }

    // 添加约束
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(16)
            make.leading.equalTo(self).offset(16)
            //: make.trailing.equalTo(self.snp.trailing).offset(-14)
            make.trailing.equalTo(self.snp.trailing).offset(-14)
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }
        //: statusLb.snp.makeConstraints { make in
        statusLb.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.trailing.equalTo(-14)
            make.trailing.equalTo(-14)
        }

        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(18)
            make.top.equalTo(18)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(statusLb.snp.leading).offset(-9)
            make.trailing.equalTo(statusLb.snp.leading).offset(-9)
        }

        //: audioBtn.snp.makeConstraints { make in
        audioBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.height.equalTo(35)
            make.height.equalTo(35)
            //: make.width.equalTo(155)
            make.width.equalTo(155)
        }

        //: lengthLabel.snp.makeConstraints { make in
        lengthLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(88)
            make.leading.equalTo(88)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: playIconView.snp.makeConstraints { make in
        playIconView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: recordPlayer.snp.makeConstraints { make in
        recordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(self.playIconView)
            make.size.equalTo(self.playIconView)
        }

        //: editBtn.snp.makeConstraints { make in
        editBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-14)
            make.trailing.equalTo(-14)
            //: make.bottom.equalTo(-26)
            make.bottom.equalTo(-26)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
            //: make.width.equalTo(22)
            make.width.equalTo(22)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            backView.rogueStateForRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            backView.rogueStateForRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            backView.rogueStateForRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            //: } else {
        } else {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
            backView.rogueStateForRadii(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
        }
    }
}
