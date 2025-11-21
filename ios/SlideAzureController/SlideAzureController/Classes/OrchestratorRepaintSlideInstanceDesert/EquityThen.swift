
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_customTitle:[UInt8] = [0xfa,0xfd,0xfa,0xe7,0xbb,0xf0,0xfc,0xf7,0xf6,0xe1,0xa9,0xba,0xb3,0xfb,0xf2,0xe0,0xb3,0xfd,0xfc,0xe7,0xb3,0xf1,0xf6,0xf6,0xfd,0xb3,0xfa,0xfe,0xe3,0xff,0xf6,0xfe,0xf6,0xfd,0xe7,0xf6,0xf7]

private func minOption(attribute num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "quick_reply_bg" :*/
fileprivate let user_dayFormat:String = "quicnormally"
fileprivate let showHarassmentContent:[Character] = ["_","b","g"]

/*: "icon_message_reply" :*/
fileprivate let user_jointContentPath:[Character] = ["i","c","o","n","_","m","e","s","s","a","g","e","_"]
fileprivate let k_placeDeedKey:[Character] = ["r","e","p","l","y"]

/*: "Quick reply" :*/
fileprivate let user_insertStr:[Character] = ["Q","u","i","c"]
fileprivate let appAnalyzeName:String = "k replyhis clothes"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquityThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2025/11/10.
//

//: import UIKit
import UIKit

//: class QuestionQuickReplayView: UIView {
class EquityThen: UIView {
    //: var tapBlock: ((_ : QuestionQuickReplayModel) -> Void)?
    var tapBlock: ((_: MasterClassModel) -> Void)?

    /// 当前处理消息模型
    //: private var msgInfo = AbTalkingChatMsgInfoModel()
    private var msgInfo = ServicePerModel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        roundMedia()
        //: setupSubViewsConstraint()
        marginEye()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_customTitle.map{minOption(attribute: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: let insets = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
        let insets = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
        //: img.image = UIImage.BundleImageNamed(name: "quick_reply_bg").resizableImage(withCapInsets: insets, resizingMode: .stretch)
        img.image = UIImage.locationName(name: (user_dayFormat.replacingOccurrences(of: "normally", with: "k") + "_reply" + String(showHarassmentContent))).resizableImage(withCapInsets: insets, resizingMode: .stretch)
        //: img.contentMode = .scaleToFill
        img.contentMode = .scaleToFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_message_reply")
        img.image = UIImage.locationName(name: (String(user_jointContentPath) + String(k_placeDeedKey)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Quick reply".localized
        lab.text = (String(user_insertStr) + String(appAnalyzeName.prefix(7))).localized
        //: lab.textColor = UIColor.appThemeColor()
        lab.textColor = UIColor.attractiveIn()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.pingfang(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor.appThemeColor()
        line.backgroundColor = UIColor.attractiveIn()
        //: line.layer.cornerRadius = 1
        line.layer.cornerRadius = 1
        //: line.layer.masksToBounds = true
        line.layer.masksToBounds = true
        //: return line
        return line
        //: }()
    }()

    //: private lazy var questionLab: UILabel = {
    private lazy var questionLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.bonePlace(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var buttonsContainer: UIView = {
    private lazy var buttonsContainer: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension QuestionQuickReplayView {
extension EquityThen {
    /// 刷新消息视图
    //: func refreshQuickReplayView(msgInfo: AbTalkingChatMsgInfoModel) {
    func delayEnable(msgInfo: ServicePerModel) {
        //: self.msgInfo = msgInfo
        self.msgInfo = msgInfo
        //: questionLab.text = msgInfo.content
        questionLab.text = msgInfo.content
        // 清空旧按钮
        //: buttonsContainer.subviews.forEach { $0.removeFromSuperview() }
        buttonsContainer.subviews.forEach { $0.removeFromSuperview() }
        //: var lastView: UIView?
        var lastView: UIView?
        //: for (index, model) in msgInfo.replay.enumerated() {
        for (index, model) in msgInfo.replay.enumerated() {
            //: if let model = model as? QuestionQuickReplayModel {
            if let model = model as? MasterClassModel {
                //: let replyView = UIView()
                let replyView = UIView()
                //: replyView.tag = 100 + index
                replyView.tag = 100 + index
                //: replyView.layer.cornerRadius = 12
                replyView.layer.cornerRadius = 12
                //: replyView.layer.masksToBounds = true
                replyView.layer.masksToBounds = true
                //: replyView.backgroundColor = UIColor.appThemeColor()
                replyView.backgroundColor = UIColor.attractiveIn()

                //: let label = UILabel()
                let label = UILabel()
                //: label.font = UIFont.pingfangRugularFont(fontSize: 14)
                label.font = UIFont.bonePlace(fontSize: 14)
                //: label.textColor = UIColor.white
                label.textColor = UIColor.white
                //: label.numberOfLines = 0
                label.numberOfLines = 0
                //: label.textAlignment = .center
                label.textAlignment = .center
                //: label.text = "\(model.content)"
                label.text = "\(model.content)"
                //: replyView.addSubview(label)
                replyView.addSubview(label)
                //: label.snp.makeConstraints { make in
                label.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview().inset(UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10))
                    make.edges.equalToSuperview().inset(UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10))
                }

                //: let tap = UITapGestureRecognizer(target: self, action: #selector(answerViewTapped(_:)))
                let tap = UITapGestureRecognizer(target: self, action: #selector(hostView(_:)))
                //: replyView.addGestureRecognizer(tap)
                replyView.addGestureRecognizer(tap)

                //: buttonsContainer.addSubview(replyView)
                buttonsContainer.addSubview(replyView)
                //: replyView.snp.makeConstraints { make in
                replyView.snp.makeConstraints { make in
                    //: if let last = lastView {
                    if let last = lastView {
                        //: make.top.equalTo(last.snp.bottom).offset(8)
                        make.top.equalTo(last.snp.bottom).offset(8)
                        //: } else {
                    } else {
                        //: make.top.equalToSuperview()
                        make.top.equalToSuperview()
                    }
                    //: make.leading.equalTo(10)
                    make.leading.equalTo(10)
                    //: make.trailing.equalTo(-10)
                    make.trailing.equalTo(-10)
                    //: make.height.greaterThanOrEqualTo(28)
                    make.height.greaterThanOrEqualTo(28)
                }
                //: lastView = replyView
                lastView = replyView
            }
        }
        // 约束容器底部
        //: if let last = lastView {
        if let last = lastView {
            //: last.snp.makeConstraints { make in
            last.snp.makeConstraints { make in
                //: make.bottom.equalToSuperview()
                make.bottom.equalToSuperview()
            }
        }
    }

    /// 标签容器点击事件
    //: @objc private func answerViewTapped(_ gesture: UITapGestureRecognizer) {
    @objc private func hostView(_ gesture: UITapGestureRecognizer) {
        //: guard let view = gesture.view else { return }
        guard let view = gesture.view else { return }
        //: let index = view.tag - 100
        let index = view.tag - 100
        //: guard index < self.msgInfo.replay.count,
        guard index < self.msgInfo.replay.count,
              //: let model = self.msgInfo.replay[index] as? QuestionQuickReplayModel else {
              let model = self.msgInfo.replay[index] as? MasterClassModel
        else {
            //: return
            return
        }
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        // 记录已回复回答消息Id（与按钮点击一致）
        //: var cacheMsgIds = Defaults.object(forKey: TalkingPrivateChatManager.share.QuestionReplayMsgIdIdArrayKey) as? [String]
        var cacheMsgIds = data_partyText.object(forKey: NameureThen.share.QuestionReplayMsgIdIdArrayKey) as? [String]
        //: if cacheMsgIds == nil { cacheMsgIds = [String]() }
        if cacheMsgIds == nil { cacheMsgIds = [String]() }
        //: if !cacheMsgIds!.contains(self.msgInfo.msgId) {
        if !cacheMsgIds!.contains(self.msgInfo.msgId) {
            //: cacheMsgIds!.append(self.msgInfo.msgId)
            cacheMsgIds!.append(self.msgInfo.msgId)
            //: Defaults.set(cacheMsgIds, forKey: TalkingPrivateChatManager.share.QuestionReplayMsgIdIdArrayKey)
            data_partyText.set(cacheMsgIds, forKey: NameureThen.share.QuestionReplayMsgIdIdArrayKey)
        }
        // 回调发送消息接口
        //: tapBlock?(model)
        tapBlock?(model)
        // 隐藏视图
        //: self.isHidden = true
        self.isHidden = true
    }
}

// MARK: - UI

//: extension QuestionQuickReplayView {
extension EquityThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func roundMedia() {
        //: self.addSubview(bgImgView)
        self.addSubview(bgImgView)
        //: bgImgView.addSubview(icon)
        bgImgView.addSubview(icon)
        //: bgImgView.addSubview(titleLab)
        bgImgView.addSubview(titleLab)
        //: bgImgView.addSubview(line)
        bgImgView.addSubview(line)
        //: bgImgView.addSubview(questionLab)
        bgImgView.addSubview(questionLab)
        //: bgImgView.addSubview(buttonsContainer)
        bgImgView.addSubview(buttonsContainer)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func marginEye() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalTo(10)
            make.leading.top.equalTo(10)
            //: make.width.height.equalTo(24)
            make.width.height.equalTo(24)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(3)
            make.leading.equalTo(icon.snp.trailing).offset(3)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(1)
            make.top.equalTo(icon.snp.bottom).offset(1)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(2)
            make.height.equalTo(2)
        }
        //: questionLab.snp.makeConstraints { make in
        questionLab.snp.makeConstraints { make in
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(line.snp.bottom).offset(4)
            make.top.equalTo(line.snp.bottom).offset(4)
        }
        //: buttonsContainer.snp.makeConstraints { make in
        buttonsContainer.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.top.equalTo(questionLab.snp.bottom).offset(6)
            make.top.equalTo(questionLab.snp.bottom).offset(6)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
