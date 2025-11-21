
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let data_findValue:String = "acquirep"
fileprivate let showAgreeCareStr:String = "recover anyone allow hood storagep_mar"

/*: "Install" :*/
fileprivate let data_marketingPeopleTitle:[Character] = ["I","n","s","t","a","l","l"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let app_whenRoadId:[Character] = ["T","X","U","G","C","B"]
fileprivate let notiGradeDimensionValue:String = "replacement fore guidance earlyase初始化"
fileprivate let noti_totalPath:String = "compare food can eastern plylt: "

/*: , reason:  :*/
fileprivate let noti_clingName:String = ", reasouthwest band spec merge plus"
fileprivate let notiRateId:String = "son: once shade"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PortraitReactiveCompatible+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func pin(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = TermsRequestDelegate.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((data_findValue.replacingOccurrences(of: "acquire", with: "a") + String(showAgreeCareStr.suffix(5)) + "sxlog"))

        //: AfterThen.shared.func__TXSDKInit()
        AfterThen.shared.brazilPrimary()

        //: initADjust()
        save()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        ProgMedalReactiveCompatible.share.beak(key: (String(data_marketingPeopleTitle)))
        //: setupTXLive()
        remark()
        //: setupTXUGC()
        indicantTapGiftTxugc()

        //: guard SenseTime_Use == true else { return }
        guard main_dismissMessage == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if InjuryLicHelper.share.checkLicense() == false {
            if InjuryLicHelper.share.searchUpEnableBecome() == false {
                //: SenseTime_Use = false
                main_dismissMessage = false
                //: InjuryLicHelper.share.checkRemoteLicInfoWith { succeed in
                InjuryLicHelper.share.assetProgress { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    main_dismissMessage = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    //: private func setupTXLive() {
    private func remark() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if data_needStr.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(data_needStr, key: notiNextId)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func indicantTapGiftTxugc() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(data_needStr, key: notiNextId)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func save() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !kAddId {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = app_videoKey
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension PortraitReactiveCompatible: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        MateThen.trackBy(msg: (String(app_whenRoadId) + String(notiGradeDimensionValue.suffix(6)) + "：resu" + String(noti_totalPath.suffix(4))) + "\(result)" + (String(noti_clingName.prefix(5)) + String(notiRateId.prefix(5))) + "\(String(describing: reason)).")
    }
}
