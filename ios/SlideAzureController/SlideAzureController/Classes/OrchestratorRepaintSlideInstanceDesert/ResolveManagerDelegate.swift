
//: Declare String Begin

/*: "location authorizationStatus is  :*/
fileprivate let showHandName:[UInt8] = [0xf8,0xfb,0xf7,0xf5,0xe0,0xfd,0xfb,0xfa,0xb4,0xf5,0xe1,0xe0,0xfc,0xfb,0xe6,0xfd,0xee,0xf5,0xe0,0xfd,0xfb,0xfa,0xc7,0xe0,0xf5,0xe0,0xe1,0xe7,0xb4,0xfd,0xe7,0xb4]

private func extraSuit(accelerate num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "get location failed. error: :*/
fileprivate let kIsolateName:String = "get lunite leading solar"
fileprivate let show_editMessage:String = "month blindion "
fileprivate let show_oneKey:String = "anonymous night task task hugeed. err"
fileprivate let mainSlowMessage:String = "or:fee print"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResolveManagerDelegate.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/5.
//

//: import CoreLocation
import CoreLocation
//: import UIKit
import UIKit

//: enum PermissionType: Int {
enum PutNumeric: Int {
    //: case firstEntry = 0
    case firstEntry = 0
    //: case userRestricted = 1
    case userRestricted = 1
    //: case alwaysAllowed = 2
    case alwaysAllowed = 2
}

//: typealias  Authblock = (_ type: PermissionType) -> Void
typealias Authblock = (_ type: PutNumeric) -> Void

//: typealias  Locationblock = (_ success: Bool, _ latitude: Double, _ longitude: Double) -> Void
typealias Locationblock = (_ success: Bool, _ latitude: Double, _ longitude: Double) -> Void

//: class TalkingLocationManager: NSObject {
class ResolveManagerDelegate: NSObject {
    //: private var locationManager: CLLocationManager!
    private var locationManager: CLLocationManager!
    //: var getLocationHandle: Locationblock?
    var getLocationHandle: Locationblock?
    //: var getAuthHandle: Authblock?
    var getAuthHandle: Authblock?
    // 定位权限
    //: var locationType: PermissionType?
    var locationType: PutNumeric?

    // singleton
    //: private static var _instance: TalkingLocationManager?
    private static var _instance: ResolveManagerDelegate?
    //: class func shared() -> TalkingLocationManager {
    class func overSub() -> ResolveManagerDelegate {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLocationManager()
            _instance = ResolveManagerDelegate()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: locationManager = CLLocationManager()
        locationManager = CLLocationManager()
        //: locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        //: locationManager.delegate = self
        locationManager.delegate = self
        //: requestLocation()
        northProfile()
    }

    //: class func destroy() {
    class func fullNoticeFore() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if _instance != nil {
            if _instance != nil {
                //: _instance = nil
                _instance = nil
            }
        }
    }

    //: func getLocationBlock(block: @escaping Locationblock) {
    func someplace(block: @escaping Locationblock) {
        //: if self.getLocationHandle == nil {
        if self.getLocationHandle == nil {
            //: self.getLocationHandle = block
            self.getLocationHandle = block
        }
    }

    //: func getAuthBlock(block: @escaping Authblock) {
    func attractiveNext(block: @escaping Authblock) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { [weak self] in
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.getAuthHandle == nil {
            if self.getAuthHandle == nil {
                //: self.getAuthHandle = block
                self.getAuthHandle = block
            }
            //: self.handleChangedAuthorization()
            self.changed()
        }
    }

    /// 设备是否开启了定位服务
    //: func hasLocationService() -> Bool {
    func calledWritten() -> Bool {
        //: return CLLocationManager.locationServicesEnabled()
        return CLLocationManager.locationServicesEnabled()
    }

    /// APP是否有定位权限
    //: func hasLocationPermission() -> PermissionType {
    func airship() -> PutNumeric {
        //: switch locationPermission() {
        switch asColumn() {
        //: case .notDetermined:
        case .notDetermined:
            //: return .firstEntry
            return .firstEntry
        //: case .restricted, .denied:
        case .restricted, .denied:
            //: return .userRestricted
            return .userRestricted
        //: case .authorizedWhenInUse, .authorizedAlways:
        case .authorizedWhenInUse, .authorizedAlways:
            //: return .alwaysAllowed
            return .alwaysAllowed
        //: default:
        default:
            //: break
            break
        }
        //: return .firstEntry
        return .firstEntry
    }

    /// 定位的权限
    //: func locationPermission() -> CLAuthorizationStatus {
    func asColumn() -> CLAuthorizationStatus {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            //: let status: CLAuthorizationStatus = locationManager.authorizationStatus
            let status: CLAuthorizationStatus = locationManager.authorizationStatus
            //: printLog(message: "location authorizationStatus is \(status.rawValue)")
            printLog(message: String(bytes: showHandName.map{extraSuit(accelerate: $0)}, encoding: .utf8)! + "\(status.rawValue)")
            //: return status
            return status
            //: } else {
        } else {
            //: let status = CLLocationManager.authorizationStatus()
            let status = CLLocationManager.authorizationStatus()
            //: printLog(message: "location authorizationStatus is \(status.rawValue)")
            printLog(message: String(bytes: showHandName.map{extraSuit(accelerate: $0)}, encoding: .utf8)! + "\(status.rawValue)")
            //: return status
            return status
        }
    }

    // MARK: - 获取权限，在代理‘didChangeAuthorization’中拿到结果

    //: func requestLocationAuthorizaiton() {
    func appeal() {
        //: locationManager.requestWhenInUseAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }

    // MARK: - 获取位置

    //: func requestLocation() {
    func northProfile() {
        //: locationManager.startUpdatingLocation()
        locationManager.startUpdatingLocation()
    }
}

//: extension TalkingLocationManager: CLLocationManagerDelegate {
extension ResolveManagerDelegate: CLLocationManagerDelegate {
    // MARK: - ios 14.0 之前，获取权限结果的方法

    //: func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    func locationManager(_: CLLocationManager, didChangeAuthorization _: CLAuthorizationStatus) {
        //: handleChangedAuthorization()
        changed()
    }

    // MARK: - ios 14.0，获取权限结果的方法

    //: func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    func locationManagerDidChangeAuthorization(_: CLLocationManager) {
        //: handleChangedAuthorization()
        changed()
    }

    //: private func handleChangedAuthorization() {
    private func changed() {
        //: guard let block = getAuthHandle else {
        guard let block = getAuthHandle else {
            //: return
            return
        }
        //: switch hasLocationPermission() {
        switch airship() {
        //: case .firstEntry:
        case .firstEntry:
            //: self.locationType = .firstEntry
            self.locationType = .firstEntry
            //: block(.firstEntry)
            block(.firstEntry)
        //: break
        //: case .userRestricted:
        case .userRestricted:
            //: self.locationType = .userRestricted
            self.locationType = .userRestricted
            //: block(.userRestricted)
            block(.userRestricted)
        //: break
        //: case .alwaysAllowed:
        case .alwaysAllowed:
            //: self.locationType = .alwaysAllowed
            self.locationType = .alwaysAllowed
            //: block(.alwaysAllowed)
            block(.alwaysAllowed)
            //: break
        }
    }

    // MARK: - 获取定位后的经纬度

    //: func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    func locationManager(_: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //: self.locationManager.stopUpdatingLocation()
        self.locationManager.stopUpdatingLocation()

        //: if let loction = locations.last {
        if let loction = locations.last {
            // 限制时间间隔 > 5s
//            guard abs(loction.timestamp.timeIntervalSinceNow) > 5 else { return }
            //: if let block = getLocationHandle {
            if let block = getLocationHandle {
                //: block(true, loction.coordinate.latitude, loction.coordinate.longitude)
                block(true, loction.coordinate.latitude, loction.coordinate.longitude)
                //: getLocationHandle = nil
                getLocationHandle = nil
            }
        }
    }

    //: func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    func locationManager(_: CLLocationManager, didFailWithError error: Error) {
        //: self.locationManager.stopUpdatingLocation()
        self.locationManager.stopUpdatingLocation()
        //: printLog(message: "get location failed. error:\(error.localizedDescription)")
        printLog(message: (String(kIsolateName.prefix(5)) + "ocat" + String(show_editMessage.suffix(4)) + "fail" + String(show_oneKey.suffix(7)) + String(mainSlowMessage.prefix(3))) + "\(error.localizedDescription)")
    }
}
