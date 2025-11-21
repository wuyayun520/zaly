
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainThresholdContent:[UInt8] = [0xb3,0xb4,0xb3,0xae,0xf2,0xb9,0xb5,0xbe,0xbf,0xa8,0xe0,0xf3,0xfa,0xb2,0xbb,0xa9,0xfa,0xb4,0xb5,0xae,0xfa,0xb8,0xbf,0xbf,0xb4,0xfa,0xb3,0xb7,0xaa,0xb6,0xbf,0xb7,0xbf,0xb4,0xae,0xbf,0xbe]

/*: "icon_faceverification_guide_ok" :*/
fileprivate let dataHundredMessage:[Character] = ["i","c","o","n","_","f"]
fileprivate let showVoiceKey:String = "acetender"
fileprivate let k_donTitle:String = "stretchati"
fileprivate let constPositionFormat:String = "de_okcorrect dynamic provide close"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let constBotData:[UInt8] = [0x2d,0xb,0x1c,0x13,0x17,0xa,0xa,0x1b,0x1a,0x5e,0xd,0xb,0x1d,0x1d,0x1b,0xd,0xd,0x18,0xb,0x12,0x12,0x7,0x52,0x5e,0xe,0x12,0x1b,0x1f,0xd,0x1b,0x5e,0x9,0x1f,0x17,0xa,0x5e,0x74,0x5e,0xe,0x1f,0xa,0x17,0x1b,0x10,0xa,0x12,0x7,0x5e,0x18,0x11,0xc,0x5e,0xc,0x1b,0x8,0x17,0x1b,0x9,0x50]

private func managerAbsolute(again num: UInt8) -> UInt8 {
    return num ^ 126
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FenceView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class FenceView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        broad()
        //: layoutSubViewsConstraints()
        suspendSub()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainThresholdContent.map{$0^218}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.locationName(name: (String(dataHundredMessage) + showVoiceKey.replacingOccurrences(of: "tender", with: "v") + "erifi" + k_donTitle.replacingOccurrences(of: "stretch", with: "c") + "on_gui" + String(constPositionFormat.prefix(5))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: constBotData.map{managerAbsolute(again: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .bigGallery(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension FenceView {
    //: func createSubViews() {
    func broad() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func suspendSub() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
