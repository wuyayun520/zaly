
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appDoingceName:[UInt8] = [0xea,0xed,0xea,0xf7,0xab,0xe0,0xec,0xe7,0xe6,0xf1,0xb9,0xaa,0xa3,0xeb,0xe2,0xf0,0xa3,0xed,0xec,0xf7,0xa3,0xe1,0xe6,0xe6,0xed,0xa3,0xea,0xee,0xf3,0xef,0xe6,0xee,0xe6,0xed,0xf7,0xe6,0xe7]

/*: "Edit" :*/
fileprivate let kShadowId:String = "continuing howeverEdit"

/*: "btn_me_edit_add" :*/
fileprivate let mainLifeText:[Character] = ["b","t","n","_","m","e","_","e","d"]
fileprivate let data_greatestTitle:[Character] = ["i","t","_","a","d","d"]

/*: "About me" :*/
fileprivate let notiCropKey:[Character] = ["A","b","o","u","t"," ","m","e"]

/*: "My interests" :*/
fileprivate let showPhysicalMessage:String = "My idepth interested search over bird"
fileprivate let user_girlData:String = "edocumenttdocument"

/*: "Language" :*/
fileprivate let mainAccessCarrierWealthyName:[Character] = ["L","a","n","g","u","a"]
fileprivate let mainToneValue:String = "finite"

/*: "Country" :*/
fileprivate let show_byMarginKey:String = "Countryspot event"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularTermsViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: enum TagType: Int {
enum TrailerBinarySum: Int {
    //: case AboutMe = 0
    case AboutMe = 0
    //: case Interests
    case Interests
    //: case Language
    case Language
    //: case Country
    case Country
}

//: typealias EditAboutBtnBlock = () -> Void
typealias EditAboutBtnBlock = () -> Void
//: typealias EditdeleteTagBlock = (UserSeleteTagModel) -> Void
typealias EditdeleteTagBlock = (TapHandyJSON) -> Void

//: class TalkingEditAboutMeCell: UITableViewCell {
class RegularTermsViewCell: UITableViewCell {
    //: var tagtype: TagType = .AboutMe
    var tagtype: TrailerBinarySum = .AboutMe
    //: var editBtnBlock: EditAboutBtnBlock!
    var editBtnBlock: EditAboutBtnBlock!
    //: var deleteBlock: EditdeleteTagBlock!
    var deleteBlock: EditdeleteTagBlock!

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
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(addBtn)
        backView.addSubview(addBtn)
        //: backView.addSubview(tagview)
        backView.addSubview(tagview)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appDoingceName.map{$0^131}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView.snp.top)
            make.top.equalTo(backView.snp.top)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: addBtn.snp.makeConstraints { make in
        addBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
        }
        //: tagview.snp.makeConstraints { make in
        tagview.snp.makeConstraints { make in
            //: make.leading.equalTo(backView)
            make.leading.equalTo(backView)
            //: make.trailing.equalTo(backView)
            make.trailing.equalTo(backView)
            //: make.top.equalTo(titleLB.snp.bottom)
            make.top.equalTo(titleLB.snp.bottom)
            //: make.bottom.equalTo(backView).offset(-8)
            make.bottom.equalTo(backView).offset(-8)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: tagview.setframe(frame: tagview.frame)
        tagview.recording(frame: tagview.frame)
        //: tagview.tagContentAlignment = .left
        tagview.tagContentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: tagview.tagContentAlignment = .right
            tagview.tagContentAlignment = .right
        }
        //: tagview.backgroundColor = .white
        tagview.backgroundColor = .white
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
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

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var addBtn: TalkingButton = {
    lazy var addBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = RangeReactiveCompatible()
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(kShadowId.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.dialog(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_edit_add"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainLifeText) + String(data_greatestTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(addBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(baseballLeagueClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var tagview: TalkingTagView = {
    lazy var tagview: ArmThen = {
        //: let tag = TalkingTagView.init()
        let tag = ArmThen()
        //: return tag
        return tag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditAboutMeCell {
extension RegularTermsViewCell {
    //: func setTitle() {
    func setByMinute() {
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: titleLB.text = "About me".localized
            titleLB.text = (String(notiCropKey)).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: titleLB.text = "My interests".localized
            titleLB.text = (String(showPhysicalMessage.prefix(4)) + "nter" + user_girlData.replacingOccurrences(of: "document", with: "s")).localized
        //: break
        //: case .Language:
        case .Language:
            //: titleLB.text = "Language".localized
            titleLB.text = (String(mainAccessCarrierWealthyName) + mainToneValue.replacingOccurrences(of: "finite", with: "ge")).localized
        //: break
        //: case .Country:
        case .Country:
            //: titleLB.text = "Country".localized
            titleLB.text = (String(show_byMarginKey.prefix(7))).localized
            //: break
        }
    }

    //: func setMessage(_ messarray: [UserSeleteTagModel]) {
    func afterPicReceive(_ messarray: [TapHandyJSON]) {
        //: tagview.titles = messarray
        tagview.titles = messarray
        //: tagview.freshView()
        tagview.wordForm()
        //: tagview.deleteBlock = { tag in
        tagview.deleteBlock = { tag in
            //: if self.deleteBlock != nil {
            if self.deleteBlock != nil {
                //: self.deleteBlock(tag)
                self.deleteBlock(tag)
            }
        }
    }

    //: @objc func addBtnClick() {
    @objc func baseballLeagueClick() {
        //: if editBtnBlock != nil {
        if editBtnBlock != nil {
            //: editBtnBlock()
            editBtnBlock()
        }
    }
}
