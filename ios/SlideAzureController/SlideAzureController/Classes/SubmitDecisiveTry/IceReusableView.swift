
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_createThemText:[UInt8] = [0xb4,0xb3,0xb4,0xa9,0xf5,0xbe,0xb2,0xb9,0xb8,0xaf,0xe7,0xf4,0xfd,0xb5,0xbc,0xae,0xfd,0xb3,0xb2,0xa9,0xfd,0xbf,0xb8,0xb8,0xb3,0xfd,0xb4,0xb0,0xad,0xb1,0xb8,0xb0,0xb8,0xb3,0xa9,0xb8,0xb9]

/*: "#222222" :*/
fileprivate let notiPlusTitle:String = "#correctcorrectcorrectcorrectcorrectcorrect"

/*: "#EAE8FE" :*/
fileprivate let userBirdPath:[Character] = ["#","E","A","E","8","F","E"]

/*: "#D0D0D0" :*/
fileprivate let k_wordId:String = "#D0D0D0attractive supply all stack err"

/*: "btn_me_edit_option_delete" :*/
fileprivate let showSkinToleranceMsg:String = "BT"
fileprivate let user_dimensionCourseName:String = "n_mestatement beyond"
fileprivate let appMethodLaterDateName:String = "OPTIO"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IceReusableView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class IceReusableView: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)
        self.addSubview(TagBtn)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_createThemText.map{$0^221}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (notiPlusTitle.replacingOccurrences(of: "correct", with: "2"))), for: .normal)
        //: temp.setTitleColor(UIColor.appThemeColor(), for: .selected)
        temp.setTitleColor(UIColor.attractiveIn(), for: .selected)
        //: temp.titleLabel?.font  = .pingfangFont(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.openColor(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.openColor(color: UIColor(hex: (String(userBirdPath)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(k_wordId.prefix(7))))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.BundleImageNamed(name: "btn_me_edit_option_delete")
        temp.image = UIImage.locationName(name: (showSkinToleranceMsg.lowercased() + String(user_dimensionCourseName.prefix(4)) + "_edit_" + appMethodLaterDateName.lowercased() + "n_delete"))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension IceReusableView {
    //: func fill(title: String)  {
    func swamp(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func valueSelete(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        nameTag(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func input() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        nameTag(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func always() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        nameTag(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func nameTag(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(k_wordId.prefix(7))))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func capacitySelete() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
