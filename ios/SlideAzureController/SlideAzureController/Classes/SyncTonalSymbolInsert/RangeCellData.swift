
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userSumoPath:[UInt8] = [0xed,0xea,0xed,0xf0,0xac,0xe7,0xeb,0xe0,0xe1,0xf6,0xbe,0xad,0xa4,0xec,0xe5,0xf7,0xa4,0xea,0xeb,0xf0,0xa4,0xe6,0xe1,0xe1,0xea,0xa4,0xed,0xe9,0xf4,0xe8,0xe1,0xe9,0xe1,0xea,0xf0,0xe1,0xe0]

private func clearExport(each num: UInt8) -> UInt8 {
    return num ^ 132
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class RangeCellData: TalkingChatMsgBaseCellData {
@objcMembers public class RangeCellData: AfterwardsReactiveCompatible {
    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: ServiceModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userSumoPath.map{clearExport(each: $0)}, encoding: .utf8)!)
    }

    //: public override func contentSize() ->CGSize {
    override public func am() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: FourReactiveCompatible = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = FourReactiveCompatible()
        //: return model
        return model
        //: }()
    }()
}
