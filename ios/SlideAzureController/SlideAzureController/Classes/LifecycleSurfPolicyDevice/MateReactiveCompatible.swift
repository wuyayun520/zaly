
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiRatingMessage:[UInt8] = [0x63,0x68,0x63,0x6e,0x22,0x5d,0x69,0x5e,0x5f,0x6c,0x34,0x23,0x1a,0x62,0x5b,0x6d,0x1a,0x68,0x69,0x6e,0x1a,0x5c,0x5f,0x5f,0x68,0x1a,0x63,0x67,0x6a,0x66,0x5f,0x67,0x5f,0x68,0x6e,0x5f,0x5e]

fileprivate func deadlinePut(post num: UInt8) -> UInt8 {
    let value = Int(num) + 6
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let app_deviceData:[UInt8] = [0x8e,0xb8,0xa2,0xf7,0xb4,0xb6,0xb9,0xf7,0xa5,0xb2,0xb4,0xb2,0xbe,0xa1,0xb2,0xf7,0xb6,0xf7,0xb0,0xb8,0xbb,0xb3,0xf7,0xb4,0xb8,0xbe,0xb9,0xa4,0xf7,0xb5,0xb8,0xb9,0xa2,0xa4,0xf7,0xb8,0xb9,0xb4,0xb2,0xf7,0xb6,0xf7,0xb3,0xb6,0xae,0xf7,0xa0,0xbf,0xbe,0xbb,0xb2,0xf7,0xa3,0xbf,0xb2,0xf7]

/*: "Lounge plus" :*/
fileprivate let mainReadMsg:String = "Loundrown come plat decision"
fileprivate let userFillContent:String = "lulifetime"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let kCeaseUrl:[UInt8] = [0xb1,0xe2,0xe4,0xf3,0xe2,0xf2,0xe3,0xf8,0xe1,0xe5,0xf8,0xfe,0xff,0xb1,0xe2,0xf4,0xe3,0xe7,0xf8,0xf2,0xf4,0xb1,0xf8,0xe2,0xb1,0xf0,0xf2,0xe5,0xf8,0xe7,0xf4,0xbf,0xc5,0xf9,0xf4,0xb1,0xe5,0xf8,0xfc,0xf4,0xb1,0xfe,0xf7,0xb1,0xe5,0xf9,0xf4,0xb1,0xf5,0xf0,0xf8,0xfd,0xe8,0xb1,0xf6,0xfe,0xfd,0xf5,0xb1,0xf2,0xfe,0xf8,0xff,0xe2,0xb1,0xe6,0xf8,0xfd,0xfd,0xb1,0xf3,0xf4,0xb1,0xf3,0xf0,0xe2,0xf4,0xf5,0xb1,0xfe,0xff,0xb1,0xe5,0xf9,0xf4,0xb1,0xc4,0xc2,0xb1,0xd4,0xf0,0xe2,0xe5,0xf4,0xe3,0xff,0xb1,0xc5,0xf8,0xfc,0xf4,0xb1,0xcb,0xfe,0xff,0xf4,0xbf]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class MateReactiveCompatible: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiRatingMessage.map{deadlinePut(post: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.presentationSubviews()
        //: self.setupSubViewsConstraint()
        self.make()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: main_logStr - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.rogueStateForRadii(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: app_deviceData.map{$0^215}, encoding: .utf8)! + "\"" + (String(mainReadMsg.prefix(4)) + "ge p" + userFillContent.replacingOccurrences(of: "lifetime", with: "s")) + "\"" + String(bytes: kCeaseUrl.map{$0^145}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.bonePlace(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.saveInColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension MateReactiveCompatible {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func reduceTopSituation() -> CGFloat {
        //: if DismissReactiveCompatible.share.loginUserMode.isSignIn {
        if DismissReactiveCompatible.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension MateReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func presentationSubviews() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func make() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
