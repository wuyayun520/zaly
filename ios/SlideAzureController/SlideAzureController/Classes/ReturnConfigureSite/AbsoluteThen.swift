
//: Declare String Begin

/*: "idToken" :*/
fileprivate let user_bringDuringYourMessage:[UInt8] = [0x70,0x7d,0x4d,0x76,0x72,0x7c,0x77]

private func everyRocket(analysis num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "email" :*/
fileprivate let appPropertyUrl:[UInt8] = [0x80,0x88,0x7c,0x84,0x87]

fileprivate func borderCreate(popular num: UInt8) -> UInt8 {
    let value = Int(num) - 27
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AbsoluteThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2025/7/25.
//

//: import GoogleSignIn
import GoogleSignIn
//: import UIKit
import UIKit

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    //: class func googleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    class func threshold(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: return GIDSignIn.sharedInstance.handle(url)
        return GIDSignIn.sharedInstance.handle(url)
    }
}

//: class GoogleLoginManager: NSObject {
class AbsoluteThen: NSObject {
    //: static let shared = GoogleLoginManager()
    static let shared = AbsoluteThen()

    /// 登录按钮
    /// - Parameters:
    ///   - vc: 控制器
    ///   - closure: 回调
    //: func login(vc: UIViewController, closure: @escaping LoginCompletionBlock) {
    func userRevenue(vc _: UIViewController, closure: @escaping LoginCompletionBlock) {
        //: guard let vc = self.currentViewController() else {
        guard let vc = self.exitSchedule() else {
            //: return
            return
        }
        //: GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
        GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
            //: guard error == nil, let user = signInResult?.user else {
            guard error == nil, let user = signInResult?.user else {
                //: closure(nil)
                closure(nil)
                //: return
                return
            }
            //: let idToken = user.idToken?.tokenString ?? ""
            let idToken = user.idToken?.tokenString ?? ""
            //: let email = user.profile?.email ?? ""
            let email = user.profile?.email ?? ""
            //: let params = ["idToken": idToken, "email": email]
            let params = [String(bytes: user_bringDuringYourMessage.map{everyRocket(analysis: $0)}, encoding: .utf8)!: idToken, String(bytes: appPropertyUrl.map{borderCreate(popular: $0)}, encoding: .utf8)!: email]
            //: closure(params)
            closure(params)
        }
    }
}
