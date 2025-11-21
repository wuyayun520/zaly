
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_enoughId:[UInt8] = [0x4b,0x4c,0x4b,0x56,0xa,0x41,0x4d,0x46,0x47,0x50,0x18,0xb,0x2,0x4a,0x43,0x51,0x2,0x4c,0x4d,0x56,0x2,0x40,0x47,0x47,0x4c,0x2,0x4b,0x4f,0x52,0x4e,0x47,0x4f,0x47,0x4c,0x56,0x47,0x46]

private func intervalNag(corner num: UInt8) -> UInt8 {
    return num ^ 34
}

/*: "icon_kong_kong_default" :*/
fileprivate let showEnjoyQuantityroMsg:String = "icon_ksession maker sibling fast opportunity"
fileprivate let notiShapeName:String = "ong_dout rank makeup lab just"
fileprivate let user_collectionName:String = "EFAULT"

/*: "You've got no list yet." :*/
fileprivate let show_sitData:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RansackedThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class RansackedThen: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_enoughId.map{intervalNag(corner: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.inquiring()
        //: self.setupSubViewsConstraint()
        self.moveAwake()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.locationName(name: (String(showEnjoyQuantityroMsg.prefix(6)) + "ong_k" + String(notiShapeName.prefix(5)) + user_collectionName.lowercased())))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.saveInColor()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .bigGallery(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (String(show_sitData)).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension RansackedThen {
    // 添加视图
    //: private func setupSubviews() {
    private func inquiring() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func moveAwake() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(userCellCurrencyPath)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
