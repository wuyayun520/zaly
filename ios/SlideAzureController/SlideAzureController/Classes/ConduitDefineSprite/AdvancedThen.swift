
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_keepBarrierMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvancedThen.swift
//  AbroadTalking
//
//  Created by young on 2023/2/14.
//

//: import UIKit
import UIKit

/// 线的宽度
//: let CIRCLECOUNTDOWNLINE_W = 3.0
let appTableFormat = 3.0

//: class CircleCountdownView: UIView {
class AdvancedThen: UIView {
    // 圆圈背景色
    //: var roundBgColor = UIColor.appValueColor() {
    var roundBgColor = UIColor.ownLight() {
        //: willSet {
        willSet {
            //: self.outLayer.strokeColor = newValue.cgColor
            self.outLayer.strokeColor = newValue.cgColor
        }
    }

    // 进度颜色
    //: var progressColor = UIColor.white {
    var progressColor = UIColor.white {
        //: willSet {
        willSet {
            //: self.progressLayer.strokeColor = newValue.cgColor
            self.progressLayer.strokeColor = newValue.cgColor
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: createUI()
        countMember()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_keepBarrierMsg.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: lazy var timeLab: UILabel = {
    lazy var timeLab: UILabel = {
        //: let lab = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        let lab = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        //: lab.backgroundColor = .clear
        lab.backgroundColor = .clear
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 19)
        lab.font = UIFont.bigGallery(type: .Semibold, fontSize: 19)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var bPath: UIBezierPath = {
    private lazy var bPath: UIBezierPath = {
        //: let rect = CGRect(x: CIRCLECOUNTDOWNLINE_W/2,
        let rect = CGRect(x: appTableFormat / 2,
                          //: y: CIRCLECOUNTDOWNLINE_W/2,
                          y: appTableFormat / 2,
                          //: width: self.frame.width-CIRCLECOUNTDOWNLINE_W,
                          width: self.frame.width - appTableFormat,
                          //: height: self.frame.height-CIRCLECOUNTDOWNLINE_W)
                          height: self.frame.height - appTableFormat)
        //: return UIBezierPath(ovalIn: rect)
        return UIBezierPath(ovalIn: rect)
        //: }()
    }()

    //: private lazy var outLayer: CAShapeLayer = {
    private lazy var outLayer: CAShapeLayer = {
        //: let layer = CAShapeLayer()
        let layer = CAShapeLayer()
        //: layer.fillColor = UIColor.clear.cgColor
        layer.fillColor = UIColor.clear.cgColor
        //: layer.strokeColor = UIColor.appValueColor().cgColor
        layer.strokeColor = UIColor.ownLight().cgColor
        //: layer.lineWidth = CIRCLECOUNTDOWNLINE_W
        layer.lineWidth = appTableFormat
        //: layer.lineCap = CAShapeLayerLineCap.round
        layer.lineCap = CAShapeLayerLineCap.round
        //: layer.path = bPath.cgPath
        layer.path = bPath.cgPath
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var progressLayer: CAShapeLayer = {
    private lazy var progressLayer: CAShapeLayer = {
        //: let layer = CAShapeLayer()
        let layer = CAShapeLayer()
        //: layer.fillColor = UIColor.clear.cgColor
        layer.fillColor = UIColor.clear.cgColor
        //: layer.strokeColor = UIColor.white.cgColor
        layer.strokeColor = UIColor.white.cgColor
        //: layer.lineWidth = CIRCLECOUNTDOWNLINE_W
        layer.lineWidth = appTableFormat
        //: layer.lineCap = CAShapeLayerLineCap.round
        layer.lineCap = CAShapeLayerLineCap.round
        //: layer.strokeStart = 0
        layer.strokeStart = 0
        //: layer.strokeEnd = 0
        layer.strokeEnd = 0
        //: layer.path = bPath.cgPath
        layer.path = bPath.cgPath
        //: return layer
        return layer
        //: }()
    }()
}

// MARK: - UI

//: extension CircleCountdownView {
extension AdvancedThen {
    /// 创建UI
    //: private func createUI() {
    private func countMember() {
        //: self.transform = CGAffineTransform(rotationAngle: -Double.pi/2)
        self.transform = CGAffineTransform(rotationAngle: -Double.pi / 2)
        //: timeLab.transform = CGAffineTransform(rotationAngle: Double.pi/2)
        timeLab.transform = CGAffineTransform(rotationAngle: Double.pi / 2)

        //: self.layer.addSublayer(outLayer)
        self.layer.addSublayer(outLayer)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
        //: self.layer.addSublayer(progressLayer)
        self.layer.addSublayer(progressLayer)
    }

    /// 更新倒计时进度
    /// - Parameters:
    ///   - totalTime: 总时间【以0.1秒为单位】
    ///   - currTime: 当前时间【以0.1秒为单位】
    //: func updateProgress(totalTime: Int, currTime: Int) {
    func beWith(totalTime: Int, currTime: Int) {
        //: timeLab.text = "\(Int(currTime/10))"
        timeLab.text = "\(Int(currTime / 10))"

        //: UIView.animate(withDuration: 0.1) {
        UIView.animate(withDuration: 0.1) {
            //: self.progressLayer.strokeEnd = CGFloat(totalTime-currTime)/CGFloat(totalTime)
            self.progressLayer.strokeEnd = CGFloat(totalTime - currTime) / CGFloat(totalTime)
        }
    }
}
