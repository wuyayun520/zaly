
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_rangeName:[UInt8] = [0x73,0x74,0x73,0x6e,0x32,0x79,0x75,0x7e,0x7f,0x68,0x20,0x33,0x3a,0x72,0x7b,0x69,0x3a,0x74,0x75,0x6e,0x3a,0x78,0x7f,0x7f,0x74,0x3a,0x73,0x77,0x6a,0x76,0x7f,0x77,0x7f,0x74,0x6e,0x7f,0x7e]

private func nutTrap(ad num: UInt8) -> UInt8 {
    return num ^ 26
}

/*: "#7166F9" :*/
fileprivate let appNorthName:[Character] = ["#","7","1","6","6","F","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfNaturalViewCell.swift
//  Pods
//
//  Created by Charlotte on 2025/9/15.
//

//: import UIKit
import UIKit

//: class LanguageTagCell: UICollectionViewCell {
class OfNaturalViewCell: UICollectionViewCell {
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
        fatalError(String(bytes: noti_rangeName.map{nutTrap(ad: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.setTitleColor(UIColor.init(hex: "#7166F9"), for: .normal)
        temp.setTitleColor(UIColor(hex: (String(appNorthName))), for: .normal)
        //: temp.setTitleColor(.white, for: .selected)
        temp.setTitleColor(.white, for: .selected)
        //: temp.titleLabel?.font  = .pingfangFont(type: .Regular, fontSize: 14)
        temp.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 14)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.openColor(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#7166F9")!, forState: .selected)
        temp.openColor(color: UIColor(hex: (String(appNorthName)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#7166F9")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(appNorthName)))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1
//        temp.addTarget(self, action: #selector(tagBtnClick), for: .touchUpInside)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension LanguageTagCell {
extension OfNaturalViewCell {
    //: func fill(title: String)  {
    func turnRecommend(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: @objc func tagBtnClick() {
    @objc func restore() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
    }
}
