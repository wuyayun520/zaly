
//: Declare String Begin

/*: "type" :*/
fileprivate let showWellMsg:String = "typlovely"

/*: "You are currently on a call, please try again later" :*/
fileprivate let k_currencyPath:[UInt8] = [0x34,0x4a,0x50,0xfb,0x3c,0x4d,0x40,0xfb,0x3e,0x50,0x4d,0x4d,0x40,0x49,0x4f,0x47,0x54,0xfb,0x4a,0x49,0xfb,0x3c,0xfb,0x3e,0x3c,0x47,0x47,0x7,0xfb,0x4b,0x47,0x40,0x3c,0x4e,0x40,0xfb,0x4f,0x4d,0x54,0xfb,0x3c,0x42,0x3c,0x44,0x49,0xfb,0x47,0x3c,0x4f,0x40,0x4d]

fileprivate func contourMap(cute num: UInt8) -> UInt8 {
    let value = Int(num) + 37
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "onCallResume" :*/
fileprivate let dataCoverPath:String = "onCalsuit circle"
fileprivate let mainEffMsg:[Character] = ["l","R","e","s","u","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissReactiveCompatible+VideoChat.swift
//  AbroadTalking
//
//  Created by young on 2022/11/11.
//

//: import UIKit
import UIKit

// MARK: - Public Event

//: extension DismissReactiveCompatible {
extension DismissReactiveCompatible {
    /// 视频/语音发起通话
    /// - Parameters:
    ///   - info: 数据
    ///   - situation: 通话类型（默认  .Start）
    //: func start1v1TalkCall(info: [String: Any], situation: VideoChatSituation = .Start) {
    func syllabus(info: [String: Any], situation: PalletChatSituation = .Start) {
        //: let json = JSON(info)
        let json = JSON(info)
        //: let type = json["type"].intValue
        let type = json[(showWellMsg.replacingOccurrences(of: "lovely", with: "e"))].intValue

        //: var vc: UIViewController?
        var vc: UIViewController?
        //: if type == 0 {
        if type == 0 { // 视频
            //: vc = TalkingVideoChatViewController()
            vc = VisualCommunicationViewDelegate()
            //: (vc as! TalkingVideoChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: situation)
            (vc as! VisualCommunicationViewDelegate).chatModel = IceChatModel.partJoin(info: info, situation: situation)
            //: } else {
        } else { // 音频
            //: vc = TalkingVoiceChatViewController()
            vc = TrailerRecognizerDelegate()
            //: (vc as! TalkingVoiceChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: situation)
            (vc as! TrailerRecognizerDelegate).chatModel = IceChatModel.partJoin(info: info, situation: situation)
        }

        //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: false, resumeData: [:])
        self.lockShape(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: false, resumeData: [:])
    }

    /// 接收到视频通话
    /// - Parameter info: 数据
    //: func recieve1v1TalkRequest(info: [String: Any]) {
    func shine(info: [String: Any]) {
        //: handle1v1AudioRequest(info: info, resumeTalk: false)
        auditor(info: info, resumeTalk: false)
    }

    /// 恢复视频通话
    /// - Parameter info: 数据
    //: func recieve1v1TalkResumeRequest(info: [String: Any]) {
    func athleticGame(info: [String: Any]) {
        //: handle1v1AudioRequest(info: info, resumeTalk: true)
        auditor(info: info, resumeTalk: true)
    }
}

// MARK: - Private Event

//: extension DismissReactiveCompatible {
extension DismissReactiveCompatible {
    /// 处理视频通话
    /// - Parameters:
    ///   - info: 数据
    ///   - resumeTalk: 是否重连
    //: private func handle1v1AudioRequest(info: [String: Any], resumeTalk: Bool) {
    private func auditor(info: [String: Any], resumeTalk: Bool) {
        //: if !resumeTalk && TalkingSocketManager.shared.isInfo {
        if !resumeTalk && SantaLuciaFirSocketDelegate.shared.isInfo {
            //: self.func__showStatusBarErrorMsg(showMsg: "You are currently on a call, please try again later".localized)
            self.enablece(showMsg: String(bytes: k_currencyPath.map{contourMap(cute: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: let json = JSON(info)
        let json = JSON(info)

        // 音视频通话中
        //: if currentViewController()!.isKind(of: TalkingVideoChatViewController.self) ||
        if exitSchedule()!.isKind(of: VisualCommunicationViewDelegate.self) ||
            //: currentViewController()!.isKind(of: TalkingVoiceChatViewController.self) ||
            exitSchedule()!.isKind(of: TrailerRecognizerDelegate.self) ||
            //: currentViewController()!.isKind(of: TalkingVideoInitivCallVC.self) {
            exitSchedule()!.isKind(of: NameureRatingViewController.self)
        {
            //: return
            return
        }
        /// 来电时，关闭男性邀请通话弹窗
        //: if (TalkingApplication.shared as! TalkingApplication).inviteCallView != nil {
        if (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).inviteCallView != nil {
            //: (TalkingApplication.shared as! TalkingApplication).inviteCallView?.closeView()
            (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).inviteCallView?.inviteCurrent()
        }

        //: let type = json["type"].intValue
        let type = json[(showWellMsg.replacingOccurrences(of: "lovely", with: "e"))].intValue
        //: var vc: UIViewController?
        var vc: UIViewController?
        //: if type == 0 {
        if type == 0 { // 视频通话
            //: vc = TalkingVideoChatViewController()
            vc = VisualCommunicationViewDelegate()
            //: (vc as! TalkingVideoChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: resumeTalk ? .Resume:.Recieved)
            (vc as! VisualCommunicationViewDelegate).chatModel = IceChatModel.partJoin(info: info, situation: resumeTalk ? .Resume : .Recieved)
            //: } else {
        } else { // 语音通话
            //: vc = TalkingVoiceChatViewController()
            vc = TrailerRecognizerDelegate()
            //: (vc as! TalkingVoiceChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: resumeTalk ? .Resume:.Recieved)
            (vc as! TrailerRecognizerDelegate).chatModel = IceChatModel.partJoin(info: info, situation: resumeTalk ? .Resume : .Recieved)
        }

        //: let callResume = json["onCallResume"].stringValue
        let callResume = json[(String(dataCoverPath.prefix(5)) + String(mainEffMsg))].stringValue
        //: if (resumeTalk && callResume.count > 0 && callResume == "1") { // 恢复通话
        if resumeTalk, callResume.count > 0, callResume == "1" { // 恢复通话
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: resumeTalk, resumeData: info)
                self.lockShape(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: resumeTalk, resumeData: info)
            }
            //: } else {
        } else { // 构建音视频通话
            //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: resumeTalk, resumeData: info)
            self.lockShape(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: resumeTalk, resumeData: info)
        }
    }

    /// 跳转到通话页面
    /// - Parameters:
    ///   - roomVC: 视频/语音控制器
    ///   - isVideoTalk: 是否是视频通话
    ///   - resumeTalk: 是否重连
    ///   - resumeData: 重连数据
    //: private func tryToPushTalkRoom(roomVC: UIViewController, isVideoTalk: Bool, resumeTalk: Bool, resumeData: [String: Any]) {
    private func lockShape(roomVC: UIViewController, isVideoTalk: Bool, resumeTalk: Bool, resumeData: [String: Any]) {
        //: guard var currentVc = currentViewController() else { return }
        guard var currentVc = exitSchedule() else { return }
        //: var navVc: UINavigationController?
        var navVc: UINavigationController?
        //: while(currentVc.presentingViewController != nil) {
        while currentVc.presentingViewController != nil {
            //: let upperVc = currentVc.presentingViewController
            let upperVc = currentVc.presentingViewController
            //: currentVc.dismiss(animated: false)
            currentVc.dismiss(animated: false)
            //: currentVc = upperVc!
            currentVc = upperVc!
        }

        //: if currentVc.isKind(of: UINavigationController.self) {
        if currentVc.isKind(of: UINavigationController.self) {
            //: navVc = currentVc as? UINavigationController
            navVc = currentVc as? UINavigationController
            //: } else if currentVc.navigationController != nil {
        } else if currentVc.navigationController != nil {
            //: navVc = currentVc.navigationController
            navVc = currentVc.navigationController
            //: } else {
        } else {
            //: let rootVc = DepictionThen.getWindow().rootViewController as! UITabBarController
            let rootVc = DepictionThen.fossilization().rootViewController as! UITabBarController
            //: navVc = rootVc.selectedViewController as? UINavigationController
            navVc = rootVc.selectedViewController as? UINavigationController
        }

        //: if navVc == nil || navVc?.isKind(of: UINavigationController.self) == false {
        if navVc == nil || navVc?.isKind(of: UINavigationController.self) == false {
            //: return
            return
        }

        //: let topVc = navVc?.topViewController
        let topVc = navVc?.topViewController
        //: var presentVc: UIViewController?
        var presentVc: UIViewController?
        //: if topVc?.presentedViewController != nil {
        if topVc?.presentedViewController != nil {
            //: presentVc = topVc?.presentedViewController
            presentVc = topVc?.presentedViewController
        }

        //: var talkClass: String?
        var talkClass: String?
        //: if !isVideoTalk {
        if !isVideoTalk {
            //: talkClass = NSStringFromClass(TalkingVoiceChatViewController.self)
            talkClass = NSStringFromClass(TrailerRecognizerDelegate.self)
            //: } else {
        } else {
            //: talkClass = NSStringFromClass(TalkingVideoChatViewController.self)
            talkClass = NSStringFromClass(VisualCommunicationViewDelegate.self)
        }
        //: var chatIndex = -1
        var chatIndex = -1
        //: var index = -1
        var index = -1
        //: for (idx, objClass) in navVc!.viewControllers.enumerated() {
        for (idx, objClass) in navVc!.viewControllers.enumerated() {
            //: let objClass = NSStringFromClass(objClass.classForCoder)
            let objClass = NSStringFromClass(objClass.classForCoder)
            //: if objClass == talkClass {
            if objClass == talkClass {
                //: index = idx - 1
                index = idx - 1
                //: chatIndex = objClass == talkClass ? idx:chatIndex
                chatIndex = objClass == talkClass ? idx : chatIndex
                //: break
                break
            }
        }

        //: if isVideoTalk {
        if isVideoTalk {
            //: var currentChatVc: TalkingVideoChatViewController?
            var currentChatVc: VisualCommunicationViewDelegate?
            //: let pushChatVc = roomVC as! TalkingVideoChatViewController
            let pushChatVc = roomVC as! VisualCommunicationViewDelegate

            //: if chatIndex >= 0 {
            if chatIndex >= 0 {
                //: currentChatVc = navVc?.viewControllers[chatIndex] as? TalkingVideoChatViewController
                currentChatVc = navVc?.viewControllers[chatIndex] as? VisualCommunicationViewDelegate
            }

            //: if currentChatVc != nil && currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
            if currentChatVc != nil, currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
                //: if (resumeTalk) {
                if resumeTalk {
                    //: currentChatVc?.updateInfoViaResumeTalkData(resumeData: resumeData)
                    currentChatVc?.timeEnable(resumeData: resumeData)
                }
                //: return
                return
            }

            //: if navVc!.isKind(of: TalkingNavigationController.self) {
            if navVc!.isKind(of: TicktockViewController.self) {
                //: let nav = navVc as! TalkingNavigationController
                let nav = navVc as! TicktockViewController
                //: nav.protectedPushVc = pushChatVc
                nav.protectedPushVc = pushChatVc
            }

            //: if presentVc != nil {
            if presentVc != nil {
                //: presentVc?.dismiss(animated: false, completion: {
                presentVc?.dismiss(animated: false, completion: {
                    //: if index >= 0 {
                    if index >= 0 {
                        //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                        //: } else {
                    } else {
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                    }
                    //: })
                })
                //: } else {
            } else {
                //: if (index >= 0) {
                if index >= 0 {
                    //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                    //: } else {
                } else {
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                }
            }

            //: } else {
        } else { // 语音通话
            //: var currentChatVc: TalkingVoiceChatViewController?
            var currentChatVc: TrailerRecognizerDelegate?
            //: let pushChatVc = roomVC as! TalkingVoiceChatViewController
            let pushChatVc = roomVC as! TrailerRecognizerDelegate

            //: if chatIndex >= 0 {
            if chatIndex >= 0 {
                //: currentChatVc = navVc?.viewControllers[chatIndex] as? TalkingVoiceChatViewController
                currentChatVc = navVc?.viewControllers[chatIndex] as? TrailerRecognizerDelegate
            }

            //: if currentChatVc != nil && currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
            if currentChatVc != nil, currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
                //: if (resumeTalk) {
                if resumeTalk {
                    //: currentChatVc?.updateInfoViaResumeTalkData(resumeData: resumeData)
                    currentChatVc?.brasilBean(resumeData: resumeData)
                }
                //: return
                return
            }

            //: if navVc!.isKind(of: TalkingNavigationController.self) {
            if navVc!.isKind(of: TicktockViewController.self) {
                //: let nav = navVc as! TalkingNavigationController
                let nav = navVc as! TicktockViewController
                //: nav.protectedPushVc = pushChatVc
                nav.protectedPushVc = pushChatVc
            }

            //: if presentVc != nil {
            if presentVc != nil {
                //: presentVc?.dismiss(animated: false, completion: {
                presentVc?.dismiss(animated: false, completion: {
                    //: if index >= 0 {
                    if index >= 0 {
                        //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                        //: } else {
                    } else {
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                    }
                    //: })
                })
                //: } else {
            } else {
                //: if (index >= 0) {
                if index >= 0 {
                    //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                    //: } else {
                } else {
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                }
            }
        }
    }
}
