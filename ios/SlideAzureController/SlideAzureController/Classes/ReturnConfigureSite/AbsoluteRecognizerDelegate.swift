
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_emptyFormat:[UInt8] = [0x5,0x2,0x5,0x18,0x44,0xf,0x3,0x8,0x9,0x1e,0x56,0x45,0x4c,0x4,0xd,0x1f,0x4c,0x2,0x3,0x18,0x4c,0xe,0x9,0x9,0x2,0x4c,0x5,0x1,0x1c,0x0,0x9,0x1,0x9,0x2,0x18,0x9,0x8]

private func exhibitYearRefresh(build num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "move" :*/
fileprivate let appFatherResultId:String = "movspark"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AbsoluteRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/8/10.
//

//: import pop
import pop
//: import UIKit
import UIKit

//: class TalkingFloatScreenView: UIView {
class AbsoluteRecognizerDelegate: UIView {
    //: var isPush: Bool = false
    var isPush: Bool = false
    //: var isPrivite: Bool = false
    var isPrivite: Bool = false

    //: var needStopAll = false
    var needStopAll = false // 退出时需要停止全部弹幕
    //: var isFirstChannelEmpty = true
    var isFirstChannelEmpty = true
    //: var isSecondChannelEmpty = true
    var isSecondChannelEmpty = true
    //: var lastMsgisInFirstChannel = false
    var lastMsgisInFirstChannel = false // 只有两个channel同时为空时才使用

    //: var firstChannelEmptyBlock: (() -> Void)?
    var firstChannelEmptyBlock: (() -> Void)?
    //: var secondChannelEmptyBlock: (() -> Void)?
    var secondChannelEmptyBlock: (() -> Void)?
    //: var showUserInfoBlock: ((_ uid: Int?) -> Void)?
    var showUserInfoBlock: ((_ uid: Int?) -> Void)?

    //: var danumuMsgArray: [TalkingFloatingScreenModel] = []
    var danumuMsgArray: [DismissModelType] = []
    //: var danumuItemViewArray: [TalkingFloatScreenItemView] = []
    var danumuItemViewArray: [TextureView] = []

    //: let TapAction: PublishSubject<TalkingFloatingScreenModel?> = PublishSubject()
    let TapAction: PublishSubject<DismissModelType?> = PublishSubject()

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        billSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_emptyFormat.map{exhibitYearRefresh(build: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: removeGestureRecognizer(tapGesture)
        removeGestureRecognizer(tapGesture)
    }

    //: func didReceive(_ danumuMsgModel: TalkingFloatingScreenModel?) {
    func awake(_ danumuMsgModel: DismissModelType?) {
        //: if superview == nil || danumuMsgModel == nil { return }
        if superview == nil || danumuMsgModel == nil { return }

        //: if danumuMsgArray.count > 0 {
        if danumuMsgArray.count > 0 {
            //: if let danumuMsgModel {
            if let danumuMsgModel {
                //: objc_sync_enter(self)
                objc_sync_enter(self)
                //: danumuMsgArray.append(danumuMsgModel)
                danumuMsgArray.append(danumuMsgModel)
                //: objc_sync_exit(self)
                objc_sync_exit(self)
            }
            //: } else {
        } else {
            //: if let danumuMsgModel {
            if let danumuMsgModel {
                //: objc_sync_enter(self)
                objc_sync_enter(self)
                //: danumuMsgArray.append(danumuMsgModel)
                danumuMsgArray.append(danumuMsgModel)
                //: objc_sync_exit(self)
                objc_sync_exit(self)
            }

            //: if isFirstChannelEmpty && isSecondChannelEmpty {
            if isFirstChannelEmpty && isSecondChannelEmpty {
                //: if lastMsgisInFirstChannel {
                if lastMsgisInFirstChannel {
                    //: secondChannelEmptyBlock?()
                    secondChannelEmptyBlock?()
                    //: } else {
                } else {
                    //: firstChannelEmptyBlock?()
                    firstChannelEmptyBlock?()
                }
                //: } else if isFirstChannelEmpty {
            } else if isFirstChannelEmpty {
                //: firstChannelEmptyBlock?()
                firstChannelEmptyBlock?()
                //: } else if isSecondChannelEmpty {
            } else if isSecondChannelEmpty {
                //: secondChannelEmptyBlock?()
                secondChannelEmptyBlock?()
            }
        }
    }

    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func living(_: UITapGestureRecognizer) {}

    // MARK: - 懒加载初始化

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(living(_:)))
        //: t.delegate = self
        t.delegate = self
        //: return t
        return t
        //: }()
    }()
}

//: extension TalkingFloatScreenView: UIGestureRecognizerDelegate {
extension AbsoluteRecognizerDelegate: UIGestureRecognizerDelegate {
    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //: if gestureRecognizer == tapGesture {
        if gestureRecognizer == tapGesture {
            //: let touchPoint = touch.location(in: self)
            let touchPoint = touch.location(in: self)
            //: var hasTouchItem = false
            var hasTouchItem = false

            //: for obj in danumuItemViewArray {
            for obj in danumuItemViewArray {
                //: if ((obj.layer.presentation()?.hitTest(touchPoint)) != nil) {
                if (obj.layer.presentation()?.hitTest(touchPoint)) != nil {
                    //: TapAction.onNext(obj.danumuMsgModel)
                    TapAction.onNext(obj.danumuMsgModel)
                    //: hasTouchItem = true
                    hasTouchItem = true
                    //: break
                    break
                }
            }

            //: return hasTouchItem
            return hasTouchItem
        }

        //: return true
        return true
    }

    //: func buildItemView(for danumuMsgModel: TalkingFloatingScreenModel?, isFirst: Bool) {
    func tune(for danumuMsgModel: DismissModelType?, isFirst: Bool) {
        //: let itemView = TalkingFloatScreenItemView(model: danumuMsgModel)
        let itemView = TextureView(model: danumuMsgModel)
        //: itemView.clickBlock = {[unowned self] in
        itemView.clickBlock = { [unowned self] in
            //: TapAction.onNext(danumuMsgModel)
            TapAction.onNext(danumuMsgModel)
        }

        //: var startX = ScreenWidth
        var startX = main_logStr
        //: var endX = -itemView.widthValue
        var endX = -itemView.widthValue
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: startX = -itemView.widthValue
            startX = -itemView.widthValue
            //: endX = ScreenWidth
            endX = main_logStr
        }
        //: let frame = CGRect(x: startX, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
        let frame = CGRect(x: startX, y: isFirst ? 7 : 50, width: itemView.widthValue, height: 24)
        //: var endFrame = frame
        var endFrame = frame
        //: endFrame.origin.x = endX
        endFrame.origin.x = endX
        //: itemView.frame = frame
        itemView.frame = frame
        //: addSubview(itemView)
        addSubview(itemView)

        //: itemView.func__roomStartAnimation()
        itemView.conFunAnimation()

        //: if let anim = POPBasicAnimation(propertyNamed: kPOPViewFrame) {
        if let anim = POPBasicAnimation(propertyNamed: kPOPViewFrame) {
            //: anim.timingFunction = CAMediaTimingFunction(name: .linear)
            anim.timingFunction = CAMediaTimingFunction(name: .linear)
            //: anim.fromValue = NSValue(cgRect: frame)
            anim.fromValue = NSValue(cgRect: frame)
            //: anim.toValue = NSValue(cgRect: endFrame)
            anim.toValue = NSValue(cgRect: endFrame)
            //: anim.duration = itemView.totalTime
            anim.duration = itemView.totalTime
            //: itemView.pop_add(anim, forKey: "move")
            itemView.pop_add(anim, forKey: (appFatherResultId.replacingOccurrences(of: "spark", with: "e")))

            //: anim.completionBlock = { anim, finished in
            anim.completionBlock = { _, _ in
                //: itemView.isHidden = true
                itemView.isHidden = true
                //: itemView.removeFromSuperview()
                itemView.removeFromSuperview()
                //: if let index = self.danumuItemViewArray.firstIndex(of: itemView) {
                if let index = self.danumuItemViewArray.firstIndex(of: itemView) {
                    //: self.danumuItemViewArray.remove(at: index)
                    self.danumuItemViewArray.remove(at: index)
                }
            }

            //: if isFirst {
            if isFirst {
                //: isFirstChannelEmpty = false
                isFirstChannelEmpty = false
                //: } else {
            } else {
                //: isSecondChannelEmpty = false
                isSecondChannelEmpty = false
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + itemView.totalTime, execute: { [unowned self] in
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + itemView.totalTime) { [unowned self] in
                //: if isFirst {
                if isFirst {
                    //: isFirstChannelEmpty = true
                    isFirstChannelEmpty = true
                    //: } else {
                } else {
                    //: isSecondChannelEmpty = true
                    isSecondChannelEmpty = true
                }
                //: popDaumuMsgModeltoChannel(isFirst)
                channelBugOutDaumuTick(isFirst)
                //: })
            }
            //: danumuItemViewArray.append(itemView)
            danumuItemViewArray.append(itemView)
        }
    }

    //: func endAnimation() {
    func theVisitorAnimation() {
        //: needStopAll = true
        needStopAll = true
        //: for obj in danumuItemViewArray {
        for obj in danumuItemViewArray {
            //: obj.func__endAnimation()
            obj.databaseSystem()
            //: obj.layer.removeAllAnimations()
            obj.layer.removeAllAnimations()
            //: obj.removeFromSuperview()
            obj.removeFromSuperview()
        }

        //: layer.removeAllAnimations()
        layer.removeAllAnimations()
        //: danumuItemViewArray = []
        danumuItemViewArray = []
    }

    //: func popDaumuMsgModeltoChannel(_ isFirst: Bool) {
    func channelBugOutDaumuTick(_ isFirst: Bool) {
        //: if needStopAll { return }
        if needStopAll { return }

        //: objc_sync_enter(self)
        objc_sync_enter(self)
        //: if danumuMsgArray.count > 0 {
        if danumuMsgArray.count > 0 {
            //: let model = danumuMsgArray.first
            let model = danumuMsgArray.first
            //: if let model {
            if let model {
                //: buildItemView(for: model, isFirst: isFirst)
                tune(for: model, isFirst: isFirst)
                //: danumuMsgArray.removeFirst()
                danumuMsgArray.removeFirst()
            }
        }
        //: objc_sync_exit(self)
        objc_sync_exit(self)
    }
}

// MARK: - Layout

//: extension TalkingFloatScreenView {
extension AbsoluteRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func billSubviews() {
        //: addGestureRecognizer(tapGesture)
        addGestureRecognizer(tapGesture)

        //: firstChannelEmptyBlock = {[unowned self] in
        firstChannelEmptyBlock = { [unowned self] in
            //: popDaumuMsgModeltoChannel(true)
            channelBugOutDaumuTick(true)
            //: lastMsgisInFirstChannel = true
            lastMsgisInFirstChannel = true
        }

        //: secondChannelEmptyBlock = { [self] in
        secondChannelEmptyBlock = { [self] in
            //: popDaumuMsgModeltoChannel(false)
            channelBugOutDaumuTick(false)
            //: lastMsgisInFirstChannel = false
            lastMsgisInFirstChannel = false
        }
    }
}
