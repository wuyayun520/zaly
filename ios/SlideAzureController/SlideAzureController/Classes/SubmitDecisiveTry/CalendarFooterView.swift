
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_foreheadKey:[UInt8] = [0x37,0x30,0x37,0x2a,0x76,0x3d,0x31,0x3a,0x3b,0x2c,0x64,0x77,0x7e,0x36,0x3f,0x2d,0x7e,0x30,0x31,0x2a,0x7e,0x3c,0x3b,0x3b,0x30,0x7e,0x37,0x33,0x2e,0x32,0x3b,0x33,0x3b,0x30,0x2a,0x3b,0x3a]

private func givenIt(wealthy num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "#F0F0F0" :*/
fileprivate let constCrushName:String = "#F0F0F0earn ban"

/*: "icon_fbmoments_notice" :*/
fileprivate let data_evaluationUrl:String = "heart restriction await a femaleicon_f"
fileprivate let noti_freezeStr:String = "nts_nrequest shine"
fileprivate let mainJusticeKey:[Character] = ["e"]

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let k_goodUrl:[UInt8] = [0xf8,0xd3,0xd2,0x5e,0x3c,0x25,0xc8,0x9c,0xcc,0xd3,0xcf,0xc8,0x9c,0xdf,0xd3,0xd2,0xc8,0xd9,0xd2,0xc8,0x9c,0xc8,0xd4,0xdd,0xc8,0x9c,0xd5,0xd2,0xd8,0xc9,0xdf,0xd9,0xcf,0x9c,0xd3,0xc8,0xd4,0xd9,0xce,0xcf,0x9c,0xc8,0xd3,0x9c,0xcf,0xd9,0xd2,0xd8,0x9c,0xdb,0xd5,0xda,0xc8,0xcf,0x9c,0xd3,0xce,0x9c,0xd3,0xc8,0xd4,0xd9,0xce,0x9c,0xd1,0xd3,0xd2,0xd9,0xc5,0x91,0xce,0xd9,0xd0,0xdd,0xc8,0xd9,0xd8,0x9c,0xdf,0xd5,0xd2,0xc8,0xd9,0xd2,0xc8,0x92]

private func givenInnerCompound(pick num: UInt8) -> UInt8 {
    return num ^ 188
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CalendarFooterView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class CalendarFooterView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_foreheadKey.map{givenIt(wealthy: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        enlist()
        //: setupSubViewsConstraint()
        instrumentation()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(constCrushName.prefix(7))))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.locationName(name: (String(data_evaluationUrl.suffix(6)) + "bmome" + String(noti_freezeStr.prefix(5)) + "otic" + String(mainJusticeKey))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: k_goodUrl.map{givenInnerCompound(pick: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
        lab.font = UIFont.bigGallery(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.ownLight()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension CalendarFooterView {
    // 添加视图
    //: private func setupSubviews() {
    private func enlist() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func instrumentation() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: main_logStr - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: main_logStr - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
