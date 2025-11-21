
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appExhibitTaskKey:[UInt8] = [0xee,0xe9,0xee,0xf3,0xaf,0xe4,0xe8,0xe3,0xe2,0xf5,0xbd,0xae,0xa7,0xef,0xe6,0xf4,0xa7,0xe9,0xe8,0xf3,0xa7,0xe5,0xe2,0xe2,0xe9,0xa7,0xee,0xea,0xf7,0xeb,0xe2,0xea,0xe2,0xe9,0xf3,0xe2,0xe3]

private func stillYesterdayAdjustment(destroy num: UInt8) -> UInt8 {
    return num ^ 135
}

/*: "btn_me_edit" :*/
fileprivate let noti_eliteContent:[Character] = ["b","t","n","_","m"]
fileprivate let userAngleStrikeMessage:[Character] = ["e","_","e","d","i","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpillSceneView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: class TalkingSettingCell: UITableViewCell {
class SpillSceneView: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

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
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(detailLB)
        backView.addSubview(detailLB)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appExhibitTaskKey.map{stillYesterdayAdjustment(destroy: $0)}, encoding: .utf8)!)
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
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(15)
            make.leading.equalTo(backView).offset(15)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(main_logStr / 2)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-15)
            make.trailing.equalTo(backView.snp.trailing).offset(-15)
            //: make.width.equalTo(12)
            make.width.equalTo(12)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: detailLB.snp.makeConstraints { make in
        detailLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-15)
            make.trailing.equalTo(backView.snp.trailing).offset(-15)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0 && islast {
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

    // MARK: - Lazy load

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

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var editImag: UIImageView = {
    lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(noti_eliteContent) + String(userAngleStrikeMessage))))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var detailLB: UILabel = {
    lazy var detailLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appThemeColor()
        lb.textColor = UIColor.attractiveIn()
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var logutBtn: UIButton = {
    lazy var logutBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.chromaticColourColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingCell {
extension SpillSceneView {
    //: func setCellMessage(titile: String, row: Int, isLast: Bool) {
    func sit(titile: String, row: Int, isLast: Bool) {
        //: titleBLB.text = titile.localized
        titleBLB.text = titile.localized
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: titleBLB.isHidden = false
        titleBLB.isHidden = false
        //: editImag.isHidden = false
        editImag.isHidden = false
        //: detailLB.isHidden = true
        detailLB.isHidden = true
        //: logutBtn.isHidden = true
        logutBtn.isHidden = true
    }

    //: func setCellDetails(detail: String ) {
    func anonymous(detail: String) {
        //: detailLB.text = detail.localized
        detailLB.text = detail.localized
        //: detailLB.isHidden = false
        detailLB.isHidden = false
        //: titleBLB.isHidden = false
        titleBLB.isHidden = false
        //: editImag.isHidden = true
        editImag.isHidden = true
        //: logutBtn.isHidden = true
        logutBtn.isHidden = true
    }

    //: func setArrows() {
    func up() {
        //: titleBLB.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        titleBLB.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: detailLB.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        detailLB.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: editImag.isHidden = false
        editImag.isHidden = false
        //: detailLB.snp.remakeConstraints { make in
        detailLB.snp.remakeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(editImag.snp.leading).offset(-7)
            make.trailing.equalTo(editImag.snp.leading).offset(-7)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }
    }

    //: func setLogout(detail: String ) {
    func person(detail: String) {
        //: index = 0
        index = 0
        //: islast = true
        islast = true
        //: titleBLB.isHidden = true
        titleBLB.isHidden = true
        //: editImag.isHidden = true
        editImag.isHidden = true
        //: logutBtn.isHidden = false
        logutBtn.isHidden = false
        //: detailLB.isHidden = true
        detailLB.isHidden = true
        //: backView.addSubview(logutBtn)
        backView.addSubview(logutBtn)
        //: logutBtn.snp.makeConstraints { make in
        logutBtn.snp.makeConstraints { make in
            //: make.center.equalTo(backView)
            make.center.equalTo(backView)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }
        //: logutBtn.setTitle(detail.localized, for: .normal)
        logutBtn.setTitle(detail.localized, for: .normal)
    }
}
