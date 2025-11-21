
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_smartValue:[UInt8] = [0xbd,0xc2,0xbd,0xc8,0x7c,0xb7,0xc3,0xb8,0xb9,0xc6,0x8e,0x7d,0x74,0xbc,0xb5,0xc7,0x74,0xc2,0xc3,0xc8,0x74,0xb6,0xb9,0xb9,0xc2,0x74,0xbd,0xc1,0xc4,0xc0,0xb9,0xc1,0xb9,0xc2,0xc8,0xb9,0xb8]

fileprivate func versionStop(net num: UInt8) -> UInt8 {
    let value = Int(num) - 84
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfBlowView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewCommentView: UIView {
class OfBlowView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.title()
        //: self.setupSubViewsConstraint()
        self.cityConstraint()
        //: self.bindInteraction()
        self.clingNumbereraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_smartValue.map{versionStop(net: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var contentLabel = UILabel().then {
    lazy var contentLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .pingfangFont(type: .Regular, fontSize: 16)
        $0.font = .bigGallery(type: .Regular, fontSize: 16)
    }
}

// MARK: - Bind && Event

//: extension TPreviewCommentView {
extension OfBlowView {
    //: private func bindInteraction() {
    private func clingNumbereraction() {}
}

// MARK: - update

//: extension TPreviewCommentView {
extension OfBlowView {
    //: func updateCommentContent(content: String) {
    func questionMin(content: String) {
        //: if content.isEmptyString {
        if content.isEmptyString {
            //: self.isHidden = true
            self.isHidden = true
            //: } else {
        } else {
            //: self.isHidden = false
            self.isHidden = false

            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: content)
            let attributeStr = NSMutableAttributedString(string: content)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))

            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 3
            paragraph.lineSpacing = 3
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: contentLabel.attributedText = attributeStr
            contentLabel.attributedText = attributeStr
        }
    }
}

// MARK: Layout

//: extension TPreviewCommentView {
extension OfBlowView {
    //: private func setupSubviews() {
    private func title() {
        //: self.addSubview(contentLabel)
        self.addSubview(contentLabel)
    }

    //: private func setupSubViewsConstraint() {
    private func cityConstraint() {
        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(actualHeight(h: 12))
            make.top.equalTo(actualHeight(h: 12))
            //: make.bottom.equalTo(actualHeight(h: -12))
            make.bottom.equalTo(actualHeight(h: -12))
        }
    }
}
