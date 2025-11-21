
//: Declare String Begin

/*: "identifier" :*/
fileprivate let kStepEmptyKey:[UInt8] = [0xf1,0xfc,0xfd,0xf6,0xec,0xf1,0xfe,0xf1,0xfd,0xea]

private func pageLetter(channel num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "token" :*/
fileprivate let userShowId:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x74]

/*: "authCode" :*/
fileprivate let kReadValue:[UInt8] = [0x65,0x64,0x6f,0x43,0x68,0x74,0x75,0x61]

/*: "nickname" :*/
fileprivate let user_proMessage:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "授权请求失败未知原因" :*/
fileprivate let notiExpectedFormat:String = "授\u{6743}请求失败"

/*: "用户取消了授权请求" :*/
fileprivate let appBackgroundSoleValue:String = "\u{7528}户取消了"

/*: "授权请求失败" :*/
fileprivate let main_suiteText:String = "授权请求失败"

/*: "授权请求响应无效" :*/
fileprivate let data_domesticStr:[Character] = ["授","权","请","求","响","应","\u{65e0}","\u{6548}"]

/*: "未能处理授权请求" :*/
fileprivate let app_childStr:[Character] = ["未","能","处","理","\u{6388}","\u{6743}","请"]
fileprivate let kStructureUrl:String = "求"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VouchControllerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import AuthenticationServices
import AuthenticationServices
//: import UIKit
import UIKit

//: enum AppLeLoginError: Error {
enum TransferError: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class VouchControllerDelegate: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = VouchControllerDelegate()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func gesture(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: kStepEmptyKey.map{pageLetter(channel: $0)}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: userShowId.reversed(), encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: kReadValue.reversed(), encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(String(user_proMessage))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    data_partyText.set(nickname, forKey: constBackTopLimitUrl)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = data_partyText.string(forKey: constBackTopLimitUrl)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(String(user_proMessage))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: TransferError) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (notiExpectedFormat + "未知\u{539f}因"))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (appBackgroundSoleValue + "授权请求"))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: (main_suiteText.capitalized))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (String(data_domesticStr)))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (String(app_childStr) + kStructureUrl.capitalized))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension VouchControllerDelegate: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return DepictionThen.getWindow()
        return DepictionThen.fossilization()
    }
}
