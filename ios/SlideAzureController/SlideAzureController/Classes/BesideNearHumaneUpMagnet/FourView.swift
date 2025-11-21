
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMomentPath:[UInt8] = [0x98,0x9f,0x98,0x85,0xd9,0x92,0x9e,0x95,0x94,0x83,0xcb,0xd8,0xd1,0x99,0x90,0x82,0xd1,0x9f,0x9e,0x85,0xd1,0x93,0x94,0x94,0x9f,0xd1,0x98,0x9c,0x81,0x9d,0x94,0x9c,0x94,0x9f,0x85,0x94,0x95]

/*: "nav_back_black_nor" :*/
fileprivate let noti_modelName:String = "nav_bbeard ex succeed appeal"
fileprivate let notiHeatFormat:String = "anight"
fileprivate let constBlackLaboratoryUrl:[Character] = ["k","_","b","l","a","c","k","_","n","o","r"]

/*: "btn_fbmoments_photo_more_delete" :*/
fileprivate let show_nearbyForthContent:[UInt8] = [0x95,0x83,0x99,0xa8,0x91,0x95,0x9a,0x98,0x9a,0x92,0x99,0x83,0x84,0xa8,0x87,0x9f,0x98,0x83,0x98,0xa8,0x9a,0x98,0x85,0x92,0xa8,0x93,0x92,0x9b,0x92,0x83,0x92]

private func chooseOrbit(terms num: UInt8) -> UInt8 {
    return num ^ 247
}

/*: "Retake" :*/
fileprivate let kPureData:String = "train event schedule commit processorRetake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FourView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosTopView: UIView {
class FourView: UIView {
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = IceModelType()
    //: var type: MomentPhotoType?
    var type: OutletPhotoType?

    //: init(frame: CGRect, type: MomentPhotoType) {
    init(frame: CGRect, type: OutletPhotoType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.type = type
        self.type = type
        //: setupSubviews()
        talk()
        //: setupSubViewsConstraint()
        session()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMomentPath.map{$0^241}, encoding: .utf8)!)
    }

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.locationName(name: (String(noti_modelName.prefix(5)) + notiHeatFormat.replacingOccurrences(of: "night", with: "c") + String(constBlackLaboratoryUrl))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_fbmoments_photo_more_delete"), for: .normal)
        btn.setImage(UIImage.locationName(name: String(bytes: show_nearbyForthContent.map{chooseOrbit(terms: $0)}, encoding: .utf8)!), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rightTitleBtn: UIButton = {
    lazy var rightTitleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Retake".localized, for: .normal)
        btn.setTitle((String(kPureData.suffix(6))).localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension TalkingMomentPhotosTopView {
extension FourView {
    // 添加视图
    //: private func setupSubviews() {
    private func talk() {
        //: backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        backgroundColor = UIColor.searched(51, 51, 51, 0.8)
        //: self.addSubview(backBtn)
        self.addSubview(backBtn)

        //: switch(self.type) {
        switch self.type {
        //: case .publish:
        case .publish:
            //: self.addSubview(deleteBtn)
            self.addSubview(deleteBtn)
        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: self.addSubview(rightTitleBtn)
            self.addSubview(rightTitleBtn)
        //: default:
        default:
            //: break
            break
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func session() {
        //: switch(self.type) {
        switch self.type {
        //: case .normal, .noControl:
        case .normal, .noControl:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }

        //: case .publish:
        case .publish:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(0)
                make.bottom.equalTo(0)
                //: make.size.equalTo(CGSize.init(width: 40, height: 44))
                make.size.equalTo(CGSize(width: 40, height: 44))
            }
            //: deleteBtn.snp.makeConstraints { make in
            deleteBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.size.equalTo(CGSize.init(width: 24, height: 24))
                make.size.equalTo(CGSize(width: 24, height: 24))
            }

        //: case .sendIntimatePhoto:
        case .sendIntimatePhoto:
            //: backBtn.snp.makeConstraints { make in
            backBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(0)
                make.leading.equalTo(0)
                //: make.bottom.equalTo(-14)
                make.bottom.equalTo(-14)
                //: make.size.equalTo(CGSize.init(width: 40, height: 40))
                make.size.equalTo(CGSize(width: 40, height: 40))
            }
            //: rightTitleBtn.snp.makeConstraints { make in
            rightTitleBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(backBtn.snp.centerY)
                make.centerY.equalTo(backBtn.snp.centerY)
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.size.equalTo(CGSize(width: 85, height: 44))
                make.size.equalTo(CGSize(width: 85, height: 44))
            }
        //: default:
        default:
            //: break
            break
        }
    }
}
