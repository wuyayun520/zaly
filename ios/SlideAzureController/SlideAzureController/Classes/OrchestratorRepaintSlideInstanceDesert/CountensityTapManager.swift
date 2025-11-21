
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let constCommentMessage:[Character] = ["l","a","u","n"]
fileprivate let user_alreadyCoalMsg:String = "personality letter rounding sub tissuechFrom"

/*: "type" :*/
fileprivate let app_fragmentProcessKey:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let dataTransportationId:String = "fromUidunable memory section domestic perform"

/*: "roomId" :*/
fileprivate let main_needPath:[Character] = ["r","o","o","m","I","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountensityTapManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum VisualImageDefaultsSerializable: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class CountensityTapManager: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = CountensityTapManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func parentInit() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(constCommentMessage) + String(user_alreadyCoalMsg.suffix(6)) + "Apns"))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.resStep()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func resStep() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(app_fragmentProcessKey))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = VisualImageDefaultsSerializable(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(dataTransportationId.prefix(7)))].stringValue
                    //: PushThen.share.func__pushToPriveteChatVC(chatID: fromUid)
                    PushThen.share.resolutionBegin(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(main_needPath))].stringValue
                    //: PushThen.share.func__pushToGroupChat(groupId: roomId)
                    PushThen.share.miscalculation(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(dataTransportationId.prefix(7)))].stringValue
                    //: PushThen.share.func__pushToUserDetailVC(uid: fromUid)
                    PushThen.share.sessionSomebody(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                CountensityTapManager.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                CountensityTapManager.share.launchFromApns = false
            }
        }
    }
}
