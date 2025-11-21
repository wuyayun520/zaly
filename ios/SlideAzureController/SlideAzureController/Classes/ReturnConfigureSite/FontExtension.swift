
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let const_makeupValue:[Character] = ["P","i","n","g","F","a"]
fileprivate let app_tablePremiumId:String = "ngSC-Reconnect eyebrow water anyone any"
fileprivate let k_applyMsg:String = "blacklar"

/*: "PingFangSC-Medium" :*/
fileprivate let noti_bothPath:String = "final proposal proposal contact commitPing"
fileprivate let noti_ripValue:String = "square partnerSC-"
fileprivate let show_dryGivingUrl:String = "Mediumobserve panel shall selected"

/*: "PingFangSC-Semibold" :*/
fileprivate let notiPanStr:String = "lose raw historyPin"
fileprivate let show_recommendFormat:String = "gFangperson bear display"
fileprivate let notiThenGuideTitle:String = "ibpard"

/*: "PingFangSC-Thin" :*/
fileprivate let show_manageName:String = "PingFawriting float"
fileprivate let const_shapeMessage:String = "result drown heat advanced shakengSC"

/*: "PingFangSC-Light" :*/
fileprivate let notiRetStr:[Character] = ["P","i","n","g","F","a","n","g","S"]
fileprivate let showTillMsg:[Character] = ["C"]
fileprivate let data_professionalMessage:String = "closed deal coordinator here-Light"

/*: "PingFangSC-Ultralight" :*/
fileprivate let notiCapableStr:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","U","l"]
fileprivate let mainLikeStr:[Character] = ["t","r","a","l","i","g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func bigGallery(type: NightFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(const_makeupValue) + String(app_tablePremiumId.prefix(7)) + k_applyMsg.replacingOccurrences(of: "black", with: "gu")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(noti_bothPath.suffix(4)) + "Fang" + String(noti_ripValue.suffix(3)) + String(show_dryGivingUrl.prefix(6))), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(notiPanStr.suffix(3)) + String(show_recommendFormat.prefix(5)) + "SC-Sem" + notiThenGuideTitle.replacingOccurrences(of: "par", with: "ol")), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(show_manageName.prefix(6)) + String(const_shapeMessage.suffix(4)) + "-Thin"), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(notiRetStr) + String(showTillMsg) + String(data_professionalMessage.suffix(6))), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(notiCapableStr) + String(mainLikeStr)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func bonePlace(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.bigGallery(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func pingfang(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.bigGallery(type: .Medium, fontSize: fontSize)
    }
}
