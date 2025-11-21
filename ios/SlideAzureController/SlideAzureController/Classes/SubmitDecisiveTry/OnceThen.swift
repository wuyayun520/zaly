
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_bounceId:[UInt8] = [0xa1,0xa6,0xa1,0xbc,0xe0,0xab,0xa7,0xac,0xad,0xba,0xf2,0xe1,0xe8,0xa0,0xa9,0xbb,0xe8,0xa6,0xa7,0xbc,0xe8,0xaa,0xad,0xad,0xa6,0xe8,0xa1,0xa5,0xb8,0xa4,0xad,0xa5,0xad,0xa6,0xbc,0xad,0xac]

private func nailRelation(compare num: UInt8) -> UInt8 {
    return num ^ 200
}

/*: "#DCDCD" :*/
fileprivate let appWouldFormat:[Character] = ["#","D","C","D","C","D"]

/*: "Reply" :*/
fileprivate let appOfficialId:String = "Replydialog corner successfully"

/*: "btn_delete" :*/
fileprivate let noti_dynamicsMsg:[Character] = ["b","t","n","_","d","e","l","e","t","e"]

/*: "text" :*/
fileprivate let user_largeText:String = "TEXT"

/*: "gift" :*/
fileprivate let dataHisMessage:String = "GIFT"

/*: "Sent " :*/
fileprivate let userSignalStr:[Character] = ["S","e","n","t"," "]

/*: "audio" :*/
fileprivate let mainSituationPath:String = "AUDIO"

/*: "[Audio]" :*/
fileprivate let data_micKey:String = "joint proposal pin huge representative[Audio]"

/*: "img" :*/
fileprivate let constPoseUrl:String = "icalculateg"

/*: "[Image]" :*/
fileprivate let app_arrangementId:String = "lat clothes drop woman district[Image]"

/*: "video" :*/
fileprivate let main_teamTitle:String = "vidpartnero"

/*: "Video" :*/
fileprivate let notiEthicalId:[Character] = ["V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnceThen.swift
//  SlideAzureController
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class OnceThen: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        itemDot()
        //: setupSubViewsConstraint()
        inside()
        //: bindInteraction()
        fruitageTotaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_bounceId.map{nailRelation(compare: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(appWouldFormat)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.bonePlace(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .ownLight()
        //: lab.text = "Reply".localized
        lab.text = (String(appOfficialId.prefix(5))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.bonePlace(fontSize: 14)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .saveInColor()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(noti_dynamicsMsg))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: LightPrimeModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (user_largeText.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (dataHisMessage.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(userSignalStr)).localized + quoteModel.renderData.fitEnd() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (mainSituationPath.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(data_micKey.suffix(7))).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (constPoseUrl.replacingOccurrences(of: "calculate", with: "m")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(app_arrangementId.suffix(7))).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (main_teamTitle.replacingOccurrences(of: "partner", with: "e")) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(notiEthicalId)).localized + "]"
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension OnceThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func itemDot() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func inside() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func fruitageTotaleraction() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
