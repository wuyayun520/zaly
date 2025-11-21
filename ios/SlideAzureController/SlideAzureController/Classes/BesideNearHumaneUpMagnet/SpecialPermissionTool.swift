
//: Declare String Begin

/*: "Please click 'Go' to allow access" :*/
fileprivate let mainSelectWhiteName:[UInt8] = [0xc8,0xe4,0xdd,0xd9,0xeb,0xdd,0x98,0xdb,0xe4,0xe1,0xdb,0xe3,0x98,0x9f,0xbf,0xe7,0x9f,0x98,0xec,0xe7,0x98,0xd9,0xe4,0xe4,0xe7,0xef,0x98,0xd9,0xdb,0xdb,0xdd,0xeb,0xeb]

fileprivate func littleDoinge(makeup num: UInt8) -> UInt8 {
    let value = Int(num) + 136
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option" :*/
fileprivate let showManText:[UInt8] = [0xfd,0x19,0x12,0xe,0x20,0x12,0xcd,0xe,0x19,0x19,0x1c,0x24,0xcd,0xd4,0xd2,0xed,0xd4,0xcd,0x21,0x1c,0xcd,0xe,0x10,0x10,0x12,0x20,0x20,0xcd,0x26,0x1c,0x22,0x1f,0xcd,0xe,0x19,0xf,0x22,0x1a,0xcd,0x16,0x1b,0xcd,0x26,0x1c,0x22,0x1f,0xcd,0x16,0xfd,0x15,0x1c,0x1b,0x12,0xd4,0x20,0xcd,0xd4,0x0,0x12,0x21,0x21,0x16,0x1b,0x14,0x20,0xda,0xfd,0x1f,0x16,0x23,0xe,0x10,0x26,0xda,0xee,0x19,0xf,0x22,0x1a,0xd4,0xcd,0x1c,0x1d,0x21,0x16,0x1c,0x1b]

fileprivate func roadBug(finish num: UInt8) -> UInt8 {
    let value = Int(num) - 173
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option" :*/
fileprivate let userAppropriatePath:[UInt8] = [0xa3,0x9f,0x96,0x92,0x80,0x96,0xd3,0x92,0x9f,0x9f,0x9c,0x84,0xd3,0xd4,0xd6,0xb3,0xd4,0xd3,0x87,0x9c,0xd3,0x92,0x90,0x90,0x96,0x80,0x80,0xd3,0x8a,0x9c,0x86,0x81,0xd3,0x9f,0x9c,0x90,0x92,0x87,0x9a,0x9c,0x9d,0xd3,0x80,0x96,0x81,0x85,0x9a,0x90,0x96,0x80,0xd3,0x9a,0x9d,0xd3,0x8a,0x9c,0x86,0x81,0xd3,0x9a,0xa3,0x9b,0x9c,0x9d,0x96,0xd4,0x80,0xd3,0xd4,0xa0,0x96,0x87,0x87,0x9a,0x9d,0x94,0x80,0xde,0xa3,0x81,0x9a,0x85,0x92,0x90,0x8a,0xde,0xbf,0x9c,0x90,0x92,0x87,0x9a,0x9c,0x9d,0xd3,0xa0,0x96,0x81,0x85,0x9a,0x90,0x96,0x80,0xd4,0xd3,0x9c,0x83,0x87,0x9a,0x9c,0x9d]

/*: "Cancel" :*/
fileprivate let dataNearKey:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpecialPermissionTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/6.
//

//: import UIKit
import UIKit

//: import AssetsLibrary
import AssetsLibrary
//: import AVFoundation
import AVFoundation
//: import CoreLocation
import CoreLocation
//: import CoreTelephony
import CoreTelephony
//: import MediaPlayer
import MediaPlayer
//: import Photos
import Photos

//: enum TalkingPermissionsType {
enum AdulthoodPermissionsType {
    /// 相机
    //: case camera
    case camera
    /// 相册
    //: case photo
    case photo
    /// 位置
    //: case location
    case location
    /// 麦克风
    //: case microphone
    case microphone
    /// 推送
    //: case notification
    case notification
    /// 相机和麦克风（视频速配使用）
    //: case cameraAndMicrophone
    case cameraAndMicrophone
}

//: let object = NSObject()
let userTablePostMessage = NSObject()
//: class TalkingPermissionTool: NSObject {
class SpecialPermissionTool: NSObject {
    // MARK: - 检测是否开启定位

    /// 检测是否开启定位
    //: class func func__openLocationServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func depository(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: var isOpen = false
        var isOpen = false
        //    if CLLocationManager.locationServicesEnabled() || CLLocationManager.authorizationStatus() != .denied {
        //        isOpen = true
        //    }
        //: if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
        if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
            //: isOpen = true
            isOpen = true
        }
        //: if isOpen == false && isSet == true {func__OpenURL(.location)}
        if isOpen == false && isSet == true { bringFunc(.location) }
        //: action(isOpen)
        action(isOpen)
    }

    // MARK: - 检测是否开启摄像头

    /// 检测是否开启摄像头 (可用)
    //: class func func__openCaptureDeviceServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func exitSmart(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        //: if authStatus == AVAuthorizationStatus.notDetermined {
        if authStatus == AVAuthorizationStatus.notDetermined {
            //: AVCaptureDevice.requestAccess(for: AVMediaType.video) { (granted) in
            AVCaptureDevice.requestAccess(for: AVMediaType.video) { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.camera)}
                }
            }
            //: } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
        } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.camera)}
            if isSet == true { packageView(.camera) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 检测是否开启相册

    //: class func func__openAlbumServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func burst(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: PHPhotoLibrary.requestAuthorization { authStatus in
        PHPhotoLibrary.requestAuthorization { authStatus in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if(authStatus == .restricted || authStatus == .denied) {
                if authStatus == .restricted || authStatus == .denied {
                    //: action(false)
                    action(false)
                    //: if isSet == true {func__OpenURL(.photo)}
                    if isSet == true { bringFunc(.photo) }
                    //: } else {
                } else {
                    //: action(true)
                    action(true)
                }
            }
        }
    }

    // MARK: - 检测是否开启麦克风

    /// 检测是否开启麦克风
    //: class func func__openRecordServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func visualAspect(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        //: if permissionStatus == .undetermined {
        if permissionStatus == .undetermined {
            //: AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.microphone)}
                }
            }
            //: } else if permissionStatus == .denied || permissionStatus == .undetermined {
        } else if permissionStatus == .denied || permissionStatus == .undetermined {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.microphone)}
            if isSet == true { packageView(.microphone) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 跳转系统设置界面

    //: class func func__OpenURL(_ type: TalkingPermissionsType? = nil) {
    class func bringFunc(_ type: AdulthoodPermissionsType? = nil) {
        //: var message = "Please click 'Go' to allow access".localized
        var message = String(bytes: mainSelectWhiteName.map{littleDoinge(makeup: $0)}, encoding: .utf8)!.localized

        //: if type == .photo {
        if type == .photo { // 相册
            //: message = "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option".localizedArguments(AppName)
            message = String(bytes: showManText.map{roadBug(finish: $0)}, encoding: .utf8)!.unitedStates(showLengthControlUrl)
            //: } else if type == .location {
        } else if type == .location { // 位置
            //: message = "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option".localizedArguments(AppName)
            message = String(bytes: userAppropriatePath.map{$0^243}, encoding: .utf8)!.unitedStates(showLengthControlUrl)
        }
        //: TalkingAlertShow.alert(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
        AllowanceReactiveCompatible.maximal(title: nil, message: message, leftBtnTitle: (String(dataNearKey)).localized, rightBtnTitle: "Go".localized, leftBlock: {
            //: }, rightBlock: {
        }, rightBlock: {
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: if #available(iOS 10, *) {
                if #available(iOS 10, *) {
                    //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                    UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    //: } else {
                } else {
                    //: UIApplication.shared.openURL(url!)
                    UIApplication.shared.openURL(url!)
                }
            }
            //: })
        })
    }

    // MARK: - 提示弹窗界面

    //: class func showTostView(_ type: TalkingPermissionsType? = nil) {
    class func packageView(_ type: AdulthoodPermissionsType? = nil) {
        //: let view = TalkingPermissionView.init()
        let view = ManufacturerPermissionView()
        //: view.setPermissionIconView(type: type ?? .camera)
        view.clap(type: type ?? .camera)
        //: view.show()
        view.occurAnswer()
    }

    // MARK: - 检测是否开启推送

    //: class func checkPushNotification(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
    class func thinChange(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().getNotificationSettings { (setttings) in
            UNUserNotificationCenter.current().getNotificationSettings { setttings in

                //: switch setttings.authorizationStatus {
                switch setttings.authorizationStatus {
                //: case .authorized:
                case .authorized:
                    //: isEnable?(true)
                    isEnable?(true)
                //: case .denied:
                case .denied:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .notDetermined:
                case .notDetermined:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .provisional:
                case .provisional:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .ephemeral:
                case .ephemeral:
                    //: isEnable?(false)
                    isEnable?(false)
                //: @unknown default:
                @unknown default:
                    //: isEnable?(false)
                    isEnable?(false)
                }
            }
            //: } else {
        } else {
            //: let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            //: if isNotificationEnabled == true {
            if isNotificationEnabled == true {
                //: isEnable?(true)
                isEnable?(true)
                //: } else {
            } else {
                //: isEnable?(false)
                isEnable?(false)
            }
        }
    }
}

//: extension TalkingPermissionTool {
extension SpecialPermissionTool {
    /// 检查相机和麦克风权限
    /// - Parameter action: 回调
    //: class func checkCameraAndMicrophone(_ handler: @escaping ((Bool) -> Void)) {
    class func remainMicrophone(_ handler: @escaping ((Bool) -> Void)) {
        // 相机权限
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        SpecialPermissionTool.exitSmart(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
                SpecialPermissionTool.visualAspect(false) { isOpen in
                    //: if isOpen {
                    if isOpen {
                        //: showTostView(.camera)
                        packageView(.camera)
                        //: } else {
                    } else {
                        //: showTostView(.cameraAndMicrophone)
                        packageView(.cameraAndMicrophone)
                    }
                }
                //: handler(false)
                handler(false)
                //: return
                return
            }

            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
            SpecialPermissionTool.visualAspect(false) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: showTostView(.microphone)
                    packageView(.microphone)
                    //: handler(false)
                    handler(false)
                    //: return
                    return
                }

                //: handler(true)
                handler(true)
            }
        }
    }

    /// 检测是否开启 直播间
    /// - Returns: 结果
    //: class func isLiveOrPartyActive() -> Bool {
    class func once() -> Bool {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard ManagerPushListener.nowPanel().isLive == false else { // 直播间
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            userTablePostMessage.enablece(showMsg: notiModePath)
            //: return true
            return true
        }
        //: return false
        return false
    }
}
