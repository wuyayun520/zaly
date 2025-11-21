
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_tapPath:[UInt8] = [0x87,0x8c,0x87,0x92,0x46,0x81,0x8d,0x82,0x83,0x90,0x58,0x47,0x3e,0x86,0x7f,0x91,0x3e,0x8c,0x8d,0x92,0x3e,0x80,0x83,0x83,0x8c,0x3e,0x87,0x8b,0x8e,0x8a,0x83,0x8b,0x83,0x8c,0x92,0x83,0x82]

fileprivate func zzTempFavorite(nor num: UInt8) -> UInt8 {
    let value = Int(num) + 226
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
//  LovelyView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol PhaseViewDelegate: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func colorYear(effectItemView: LovelyView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func dotSpeaker(effectItemView: LovelyView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class LovelyView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: ModelSpecialAnimatMeasurable?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: CoverMeasurable?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: PhaseViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_tapPath.map{zzTempFavorite(nor: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func launchDirection() {}

    //: func stopAnimating() {
    func placeTranslate() {}

    //: func cleanAnimating() {
    func errorBurn() {}

    //: func pauseAnimation() {
    func packageJaw() {}

    //: func resumeAnimation() ->Bool {
    func black() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func empty(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return WallAnimatTool.shared.streetwiseBecome(fileName: fileName, model: self.effectMsgModel!)
    }
}
