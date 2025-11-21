
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainAlongsideComplyMessage:[UInt8] = [0x27,0x20,0x27,0x3a,0x66,0x2d,0x21,0x2a,0x2b,0x3c,0x74,0x67,0x6e,0x26,0x2f,0x3d,0x6e,0x20,0x21,0x3a,0x6e,0x2c,0x2b,0x2b,0x20,0x6e,0x27,0x23,0x3e,0x22,0x2b,0x23,0x2b,0x20,0x3a,0x2b,0x2a]

private func withinCompare(gift num: UInt8) -> UInt8 {
    return num ^ 78
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArtThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagHeaderView: UICollectionReusableView {
class ArtThen: UICollectionReusableView {
    //: var label = UILabel()
    var label = UILabel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.addSubview(label)
        self.addSubview(label)
        //: label.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        label.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.dialog()
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainAlongsideComplyMessage.map{withinCompare(gift: $0)}, encoding: .utf8)!)
    }
}
