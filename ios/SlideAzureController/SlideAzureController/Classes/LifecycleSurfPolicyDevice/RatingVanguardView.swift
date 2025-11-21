
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appUniformValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_translation_go" :*/
fileprivate let show_speakWeeklyStr:[Character] = ["i","c","o","n","_","t","r"]
fileprivate let show_snakeFormat:[Character] = ["a","n","s","l","a","t","i","o","n","_","g","o"]

/*: "#EAE8FE" :*/
fileprivate let user_clearMessage:[Character] = ["#","E","A","E","8","F","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RatingVanguardView.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class RatingVanguardView: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        beam()
        //: setupSubViewsConstraint()
        mergeConstraint()
        //: bindInteraction()
        angstromUnitTotaleraction()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appUniformValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appThemeColor()
        lab.textColor = UIColor.attractiveIn()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.bonePlace(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_translation_go").withTintColor(.appThemeColor())
        img.image = UIImage.locationName(name: (String(show_speakWeeklyStr) + String(show_snakeFormat))).withTintColor(.attractiveIn())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension RatingVanguardView {
    /// 刷新视图
    //: func refresh(_ model: ExecuteBetterTransformable) {
    func bottomDown(_ model: ExecuteBetterTransformable) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func circleMerge(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension RatingVanguardView {
    /// 添加视图
    //: private func setupSubviews() {
    private func beam() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: (String(user_clearMessage)))
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.appThemeColor().cgColor
        layer.borderColor = UIColor.attractiveIn().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func mergeConstraint() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func angstromUnitTotaleraction() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(circleMerge))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
