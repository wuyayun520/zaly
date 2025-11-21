
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appChinStr:[UInt8] = [0x90,0x97,0x90,0x8d,0xd1,0x9a,0x96,0x9d,0x9c,0x8b,0xc3,0xd0,0xd9,0x91,0x98,0x8a,0xd9,0x97,0x96,0x8d,0xd9,0x9b,0x9c,0x9c,0x97,0xd9,0x90,0x94,0x89,0x95,0x9c,0x94,0x9c,0x97,0x8d,0x9c,0x9d]

private func maximumZone(sit num: UInt8) -> UInt8 {
    return num ^ 249
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InOpeneCaseMiniView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/31.
//

//: import UIKit
import UIKit

// 小窗口状态
//: enum MiniWindowStatus {
enum AbsoluteWindowStatus {
    //: case calling
    case calling // 通话中
    //: case end
    case end // 通话结束
}

//: class TalkingBaseMiniView: UIView {
class InOpeneCaseMiniView: UIView {
    //: var tapGestureBlock: (() -> Void)?
    var tapGestureBlock: (() -> Void)? // 点击手势Block

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appChinStr.map{maximumZone(sit: $0)}, encoding: .utf8)!)
    }

    // addSubview是调用
    //: override func willMove(toSuperview newSuperview: UIView?) {
    override func willMove(toSuperview _: UIView?) {
        //: TalkingSocketManager.shared.containerView?.isHidden = false
        SantaLuciaFirSocketDelegate.shared.containerView?.isHidden = false
    }

    /// 移除视图
    //: func dismissWhenCallEnd() {
    func detectScreen() {
        //: removeAllGestures()
        removeJoin()
        //: UIView.animate(withDuration: 0.3, delay: 2, options: .curveEaseOut) {
        UIView.animate(withDuration: 0.3, delay: 2, options: .curveEaseOut) {
            //: let x = (self.center.x <= ScreenWidth*0.5) ? -self.width : ScreenWidth+self.width
            let x = (self.center.x <= main_logStr * 0.5) ? -self.width : main_logStr + self.width
            //: self.frame = CGRect(x: x, y: self.top, width: self.width, height: self.height)
            self.frame = CGRect(x: x, y: self.top, width: self.width, height: self.height)
            //: } completion: { _ in
        } completion: { _ in
            //: if self.superview != nil {
            if self.superview != nil {
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
            //: TalkingSocketManager.shared.containerView?.isHidden = true
            SantaLuciaFirSocketDelegate.shared.containerView?.isHidden = true
        }
    }
}

// MARK: - 添加手势

//: extension TalkingBaseMiniView {
extension InOpeneCaseMiniView {
    /// 添加点击手势
    //: @discardableResult
    @discardableResult
    //: func addTapGesture() -> UITapGestureRecognizer {
    func medalGesture() -> UITapGestureRecognizer {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapGestureEvent(sender:)))
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.until(sender:)))
        //: tap.numberOfTapsRequired = 1
        tap.numberOfTapsRequired = 1
        //: self.addGestureRecognizer(tap)
        self.addGestureRecognizer(tap)
        //: return tap
        return tap
    }

    /// 添加点击和拖拽手势
    //: func addTapAndPanGestures() {
    func includeMic() {
        //: let pan = UIPanGestureRecognizer(target: self, action: #selector(self.panGestureEvent(sender:)))
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.familyTop(sender:)))
        //: let tap = self.addTapGesture()
        let tap = self.medalGesture()
        //: pan.shouldBeRequiredToFail(by: tap)
        pan.shouldBeRequiredToFail(by: tap)
        //: self.addGestureRecognizer(pan)
        self.addGestureRecognizer(pan)
    }

    /// 移除所有手势
    //: func removeAllGestures() {
    func removeJoin() {
        //: self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
        self.gestureRecognizers?.forEach(self.removeGestureRecognizer(_:))
    }

    /// 拖拽手势
    //: @objc func panGestureEvent(sender: UIPanGestureRecognizer) {
    @objc func familyTop(sender: UIPanGestureRecognizer) {
        //: let offset = sender.translation(in: self)
        let offset = sender.translation(in: self)
        //: var centerX = self.center.x+offset.x
        var centerX = self.center.x + offset.x
        //: var centerY = self.center.y+offset.y
        var centerY = self.center.y + offset.y
        //: centerX = max(self.width*0.5, centerX)
        centerX = max(self.width * 0.5, centerX)
        //: centerX = min(ScreenWidth-self.width*0.5, centerX)
        centerX = min(main_logStr - self.width * 0.5, centerX)
        //: centerY = max(self.height*0.5, centerY)
        centerY = max(self.height * 0.5, centerY)
        //: centerY = min(ScreenHeight-self.height*0.5, centerY)
        centerY = min(main_nameData - self.height * 0.5, centerY)
        //: self.center = CGPoint(x: centerX, y: centerY)
        self.center = CGPoint(x: centerX, y: centerY)
        //: sender.setTranslation(CGPoint.zero, in: self)
        sender.setTranslation(CGPoint.zero, in: self)

        //: if sender.state == .ended {
        if sender.state == .ended {
            //: let centerX = self.center.x
            let centerX = self.center.x
            //: var endCenterX = ScreenWidth-self.width*0.5
            var endCenterX = main_logStr - self.width * 0.5
            //: var recordX = ScreenWidth
            var recordX = main_logStr
            //: if centerX <= ScreenWidth*0.5 {
            if centerX <= main_logStr * 0.5 {
                //: endCenterX = self.width*0.5
                endCenterX = self.width * 0.5
                //: recordX = 0
                recordX = 0
            }
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.center = CGPoint(x: endCenterX, y: self.center.y)
                self.center = CGPoint(x: endCenterX, y: self.center.y)
            }
            //: let recordY = self.center.y-self.height*0.5
            let recordY = self.center.y - self.height * 0.5
            //: TalkingSocketManager.shared.videoMiniPosition = CGPoint(x: recordX, y: recordY)
            SantaLuciaFirSocketDelegate.shared.videoMiniPosition = CGPoint(x: recordX, y: recordY)
        }
    }

    /// 点击手势
    //: @objc private func tapGestureEvent(sender: UIPanGestureRecognizer) {
    @objc private func until(sender _: UIPanGestureRecognizer) {
        //: if self.tapGestureBlock != nil {
        if self.tapGestureBlock != nil {
            //: self.tapGestureBlock!()
            self.tapGestureBlock!()
        }
    }
}
