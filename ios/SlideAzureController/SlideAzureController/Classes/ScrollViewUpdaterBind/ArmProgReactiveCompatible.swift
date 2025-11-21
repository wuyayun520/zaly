
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appRawMaterialStr:[UInt8] = [0x7f,0x84,0x7f,0x8a,0x3e,0x79,0x85,0x7a,0x7b,0x88,0x50,0x3f,0x36,0x7e,0x77,0x89,0x36,0x84,0x85,0x8a,0x36,0x78,0x7b,0x7b,0x84,0x36,0x7f,0x83,0x86,0x82,0x7b,0x83,0x7b,0x84,0x8a,0x7b,0x7a]

fileprivate func bulletChoice(against num: UInt8) -> UInt8 {
    let value = Int(num) + 234
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let constNativeKey:String = "current trigger region optionnav_"
fileprivate let mainWealthyData:String = "bresolutionc"
fileprivate let noti_guideValue:[Character] = ["r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArmProgReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class ArmProgReactiveCompatible: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.same()
        //: self.setupSubViewsConstraint()
        self.derail()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appRawMaterialStr.map{bulletChoice(against: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(constNativeKey.suffix(4)) + "back_" + mainWealthyData.replacingOccurrences(of: "resolution", with: "la") + "k_no" + String(noti_guideValue)))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(get), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension ArmProgReactiveCompatible {
    //: @objc func registerBackAction() {
    @objc func get() {
        //: PushThen.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        PushThen.share.doingGoing()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func styleAction() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func remindArialMosaic() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension ArmProgReactiveCompatible {
    //: private func setupSubviews() {
    private func same() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func derail() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: userCellCurrencyPath))
        }
    }
}
