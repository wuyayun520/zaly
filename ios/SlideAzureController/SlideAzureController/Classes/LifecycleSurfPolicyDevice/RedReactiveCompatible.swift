
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_zzPath:[UInt8] = [0xc6,0xcb,0xc6,0xd1,0x85,0xc0,0xcc,0xc1,0xc2,0xcf,0x97,0x86,0x7d,0xc5,0xbe,0xd0,0x7d,0xcb,0xcc,0xd1,0x7d,0xbf,0xc2,0xc2,0xcb,0x7d,0xc6,0xca,0xcd,0xc9,0xc2,0xca,0xc2,0xcb,0xd1,0xc2,0xc1]

fileprivate func addAttractive(expected num: UInt8) -> UInt8 {
    let value = Int(num) + 163
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class RedReactiveCompatible: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupStyle()
        //: self.setupSubViewsConstraint()
        self.used()
        //: self.bindInteraction()
        self.month()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_zzPath.map{addAttractive(expected: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension RedReactiveCompatible {
    //: private func bindInteraction() {
    private func month() {}

    //: @objc func registerLikeAction() {
    @objc func transportationSystemWant() {
        //: self.likeRequest()
        self.loadSignatureRequest()
    }

    //: @objc func registerChatAction() {
    @objc func dazzling() {
        //: self.chatPush()
        self.recentPause()
    }

    //: @objc func registerCrushAction() {
    @objc func subdataBase() {
        //: self.crushRequest()
        self.earlier()
    }

    //: @objc func registerCommentAction() {
    @objc func example() {
        //: self.commentPush()
        self.memberOnSlow()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension RedReactiveCompatible {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func viewIn(model: BetterModelType) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func recentPause() {}

    //: private func commentPush() {
    private func memberOnSlow() {}

    //: private func crushRequest() {
    private func earlier() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        ThresholdLevelRequestManager.networkTranslation(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func loadSignatureRequest() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        ThresholdLevelRequestManager.befittingCompletion(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension RedReactiveCompatible {
    //: private func setupSubviews() {
    private func setupStyle() {}

    //: private func setupSubViewsConstraint() {
    private func used() {}
}
