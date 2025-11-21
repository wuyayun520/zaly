
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userRouteText:[UInt8] = [0xd7,0xdc,0xd7,0xe2,0x96,0xd1,0xdd,0xd2,0xd3,0xe0,0xa8,0x97,0x8e,0xd6,0xcf,0xe1,0x8e,0xdc,0xdd,0xe2,0x8e,0xd0,0xd3,0xd3,0xdc,0x8e,0xd7,0xdb,0xde,0xda,0xd3,0xdb,0xd3,0xdc,0xe2,0xd3,0xd2]

fileprivate func antheralLease(bridge num: UInt8) -> UInt8 {
    let value = Int(num) - 110
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F5F5F5" :*/
fileprivate let constDoingFoundRoadStr:String = "lose ex#F5F5"
fileprivate let user_dragMessage:[Character] = ["F","5"]

/*: "icon_Topping_bg" :*/
fileprivate let user_meetName:String = "icon_Totranslate distribution a"
fileprivate let kBulletStr:[Character] = ["p","p","i","n","g","_","b","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RatingView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosCell: UICollectionViewCell {
class RatingView: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        expected()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userRouteText.map{antheralLease(bridge: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func expected() {
        //: self.contentView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        self.contentView.backgroundColor = UIColor(hex: (String(constDoingFoundRoadStr.suffix(5)) + String(user_dragMessage)))
        //: self.contentView.layer.cornerRadius = 6
        self.contentView.layer.cornerRadius = 6
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true

        //: photoView.snp.makeConstraints { make in
        photoView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.contentView)
            make.edges.equalTo(self.contentView)
        }
        //: photoView.addSubview(topImage)
        photoView.addSubview(topImage)
        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    //: func configUrl(url: String) {
    func unlessAdjustName(url: String) {
        //: photoView.setUrlImage(urlStr: url)
        photoView.bolt(urlStr: url)
        //: topImage.isHidden = true
        topImage.isHidden = true
    }

    //: func setTopImage() {
    func sufficient() {
        //: topImage.isHidden = false
        topImage.isHidden = false
    }

    //: lazy var photoView: UIImageView = {
    lazy var photoView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var enterIcon: UIImageView = {
    lazy var enterIcon: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.contentView.addSubview(img)
        self.contentView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_Topping_bg")
        img.image = UIImage.locationName(name: (String(user_meetName.prefix(7)) + String(kBulletStr)))
        //: return img
        return img
        //: }()
    }()
}
