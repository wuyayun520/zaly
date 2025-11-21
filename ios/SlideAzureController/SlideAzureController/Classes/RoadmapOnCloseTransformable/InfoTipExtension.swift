
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let userPreviousMessage:[Character] = ["J","D","S","t","a","t","u","s"]
fileprivate let main_meetContent:String = "distance closeBarSty"

/*: "JDStatusBarStyleError" :*/
fileprivate let userEnableceContent:String = "her dot pickJDSta"
fileprivate let user_balanceStr:String = "arStregister asset clear human"
fileprivate let user_seekInmateName:String = "rracceptr"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let appHarassmentTitle:String = "image public depth click crossJDSta"
fileprivate let main_onParentMsg:String = "rStyenergy tick lose"

/*: "2AB572" :*/
fileprivate let main_sureStr:String = "between unite lie awake2AB57"
fileprivate let dataTaskName:[Character] = ["2"]

/*: "F05E5E" :*/
fileprivate let dataTheoryName:[Character] = ["F","0","5","E","5","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func noCap(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.byName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(userPreviousMessage) + String(main_meetContent.suffix(6)) + "leDefault"))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func enablece(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.byName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(userEnableceContent.suffix(5)) + "tusB" + String(user_balanceStr.prefix(4)) + "yleE" + user_seekInmateName.replacingOccurrences(of: "accept", with: "o")))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func showGuidanceName(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.byName(showMsg: showMsg, dismissTime: 1.5, styleName: (String(appHarassmentTitle.suffix(5)) + "tusBa" + String(main_onParentMsg.prefix(4)) + "leSuccess"))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func byName(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.lengthBlock(token: kTitleData, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(main_sureStr.suffix(5)) + String(dataTaskName)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(userEnableceContent.suffix(5)) + "tusB" + String(user_balanceStr.prefix(4)) + "yleE" + user_seekInmateName.replacingOccurrences(of: "accept", with: "o")) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(dataTheoryName)))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(main_sureStr.suffix(5)) + String(dataTaskName)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
