
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showPrecedentKey:[UInt8] = [0x1d,0x1a,0x1d,0x0,0x5c,0x17,0x1b,0x10,0x11,0x6,0x4e,0x5d,0x54,0x1c,0x15,0x7,0x54,0x1a,0x1b,0x0,0x54,0x16,0x11,0x11,0x1a,0x54,0x1d,0x19,0x4,0x18,0x11,0x19,0x11,0x1a,0x0,0x11,0x10]

/*: "Gifts required for the photo" :*/
fileprivate let show_hiddenFormat:[Character] = ["G","i","f","t","s"]
fileprivate let mainContactText:[Character] = [" ","r","e","q","u","i","r","e","d"," ","f","o","r"," ","t","h","e"," ","p","h","o","t","o"]

/*: "Choose a gift" :*/
fileprivate let noti_sweepData:String = "dress owner firm constraint yourChoos"
fileprivate let mainCollectionText:String = "e a highlight target special"

/*: "#7189F7" :*/
fileprivate let main_filterName:String = "#7189F7attribute distribute"

/*: "giftName" :*/
fileprivate let k_makerContent:String = "recover bullet managergiftName"

/*: "giftPrice" :*/
fileprivate let showRemainStr:[Character] = ["g","i","f","t","P","r","i","c","e"]

/*: "  %@(%@ Gold coins)" :*/
fileprivate let showDistributionName:[Character] = [" "," ","%","@","(","%","@"," ","G","o","l","d"," ","c","o","i","n","s"]
fileprivate let showExpressJusticeText:String = "cost"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularHailViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: typealias SeleteGiftBlock = (_ giftId: String) -> Void
typealias SeleteGiftBlock = (_ giftId: String) -> Void

//: class TalkingGreetPhotoTableCell: UITableViewCell {
class RegularHailViewCell: UITableViewCell {
    //: var seleteGiftBlock: SeleteGiftBlock?
    var seleteGiftBlock: SeleteGiftBlock?

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
        groupFor()
        //: setupSubViewsConstraint()
        satisfy()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showPrecedentKey.map{$0^116}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backGiftView: UIView = {
    lazy var backGiftView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var giftLaB: UILabel = {
    lazy var giftLaB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.appTitleColor()
        LB.textColor = UIColor.dialog()
        //: LB.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        LB.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: LB.text = "Gifts required for the photo".localized
        LB.text = (String(show_hiddenFormat) + String(mainContactText)).localized
        //: LB.numberOfLines = 0
        LB.numberOfLines = 0
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var giftMsgBtn: UIButton = {
    lazy var giftMsgBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(.appTitleColor(), for: .normal)
        btn.setTitleColor(.dialog(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.appBgColor(), forState: .normal)
        btn.openColor(color: UIColor.doingTo(), forState: .normal)
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(manual), for: .touchUpInside)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = RatingReactiveCompatible.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chooseGiftBtn: UIButton = {
    private lazy var chooseGiftBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(manual), for: .touchUpInside)
        //: let str = "Choose a gift".localized
        let str = (String(noti_sweepData.suffix(5)) + String(mainCollectionText.prefix(4)) + "gift").localized
        //: let attributes = [.foregroundColor: UIColor(hex: "#7189F7")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(main_filterName.prefix(7))))!, .font: UIFont.bigGallery(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attrS = NSAttributedString(string: str, attributes: attributes)
        let attrS = NSAttributedString(string: str, attributes: attributes)
        //: btn.setAttributedTitle(attrS, for: .normal)
        btn.setAttributedTitle(attrS, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: YaDataSource = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = YaDataSource(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetPhotoTableCell {
extension RegularHailViewCell {
    //: @objc func chooseGiftBtnClick() {
    @objc func manual() {
        //: func__chooseGift()
        stateGift()
    }

    //: func setGiftMsgLab(dic: Dictionary<String, Any>) {
    func bringOut(dic: [String: Any]) {
        //: let giftName = dic["giftName"] as? String ?? ""
        let giftName = dic[(String(k_makerContent.suffix(8)))] as? String ?? ""
        //: let giftPrice = dic["giftPrice"] as? Int ?? 0
        let giftPrice = dic[(String(showRemainStr))] as? Int ?? 0
        //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftName, giftPrice), for: .normal)
        self.giftMsgBtn.setTitle((String(showDistributionName) + showExpressJusticeText.replacingOccurrences(of: "cost", with: ")")).unitedStates(giftName, giftPrice), for: .normal)
    }
}

//: extension TalkingGreetPhotoTableCell {
extension RegularHailViewCell {
    //: func func__chooseGift() {
    func stateGift() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .intimatePhoto, completion: {
        MotivationThen.share.tillTurn(type: .intimatePhoto, completion: {
            //: self.func__showGiftChoiceView()
            self.getDown()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func getDown() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.path(needReload: true, mf_coin: DismissReactiveCompatible.share.loginUserMode.mf_coin)
        //: self.window?.addSubview(giftView)
        self.window?.addSubview(giftView)
        //: giftView.showView()
        giftView.score()
        //: giftView.okActionBlock = { [weak self] giftModel in
        giftView.okActionBlock = { [weak self] giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftModel.name, giftModel.price), for: .normal)
            self.giftMsgBtn.setTitle((String(showDistributionName) + showExpressJusticeText.replacingOccurrences(of: "cost", with: ")")).unitedStates(giftModel.name, giftModel.price), for: .normal)
            //: if self.seleteGiftBlock != nil {
            if self.seleteGiftBlock != nil {
                //: self.seleteGiftBlock!(giftModel.gid)
                self.seleteGiftBlock!(giftModel.gid)
            }
        }
    }
}

//: extension TalkingGreetPhotoTableCell {
extension RegularHailViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func groupFor() {
        //: self.contentView.addSubview(backGiftView)
        self.contentView.addSubview(backGiftView)
        //: backGiftView.addSubview(giftLaB)
        backGiftView.addSubview(giftLaB)
        //: backGiftView.addSubview(giftMsgBtn)
        backGiftView.addSubview(giftMsgBtn)
        //: backGiftView.addSubview(chooseGiftBtn)
        backGiftView.addSubview(chooseGiftBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func satisfy() {
        //: backGiftView.snp.makeConstraints { make in
        backGiftView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: giftLaB.snp.makeConstraints { make in
        giftLaB.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
        }
        //: giftMsgBtn.snp.makeConstraints { make in
        giftMsgBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftLaB.snp.bottom).offset(15)
            make.top.equalTo(giftLaB.snp.bottom).offset(15)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: chooseGiftBtn.snp.makeConstraints { make in
        chooseGiftBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
    }
}
