
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_brightUrl:[UInt8] = [0xd6,0xd1,0xd6,0xcb,0x97,0xdc,0xd0,0xdb,0xda,0xcd,0x85,0x96,0x9f,0xd7,0xde,0xcc,0x9f,0xd1,0xd0,0xcb,0x9f,0xdd,0xda,0xda,0xd1,0x9f,0xd6,0xd2,0xcf,0xd3,0xda,0xd2,0xda,0xd1,0xcb,0xda,0xdb]

private func leadingChange(report num: UInt8) -> UInt8 {
    return num ^ 191
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SampleProgressView.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingCircleProgressView: UIView {
class SampleProgressView: UIView {
    //: var strokeWidth: CGFloat = 0.0
    var strokeWidth: CGFloat = 0.0
    //: var strokeColor: UIColor?
    var strokeColor: UIColor?
    //: var circleBgColor: UIColor?
    var circleBgColor: UIColor?
    //: private var percent: CGFloat = 0.0
    private var percent: CGFloat = 0.0

    //: deinit {
    deinit {}

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_brightUrl.map{leadingChange(report: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        //: super.draw(rect)
        super.draw(rect)
        //: if circleBgColor != nil {
        if circleBgColor != nil {
            //: let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            //: let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            //: roundPath.lineWidth = strokeWidth
            roundPath.lineWidth = strokeWidth
            //: circleBgColor?.set()
            circleBgColor?.set()
            //: roundPath.stroke()
            roundPath.stroke()
        }

        //: let path = UIBezierPath()
        let path = UIBezierPath()
        //: let startAngle = (-0.5 * .pi)
        let startAngle = (-0.5 * .pi)
        //: let endAngle = startAngle + percent * 2 * .pi
        let endAngle = startAngle + percent * 2 * .pi
        //: path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
        path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
                    //: radius: (rect.size.width - strokeWidth) * 0.5,
                    radius: (rect.size.width - strokeWidth) * 0.5,
                    //: startAngle: startAngle,
                    startAngle: startAngle,
                    //: endAngle: endAngle,
                    endAngle: endAngle,
                    //: clockwise: true)
                    clockwise: true)
        //: path.lineWidth = strokeWidth
        path.lineWidth = strokeWidth
        //: strokeColor?.set()
        strokeColor?.set()
        //: path.stroke()
        path.stroke()
    }
}

// MARK: - Event

//: extension TalkingCircleProgressView {
extension SampleProgressView {
    /// 更新进度
    /// - Parameter percent: 进度
    //: func updatePercent(percent: CGFloat) {
    func run(percent: CGFloat) {
        //: self.percent = percent
        self.percent = percent
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    }
}
