
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let const_relateStr:String = "enter field accounting middle#8A79F9"

/*: "#E6BD8B" :*/
fileprivate let appFreshValue:String = "cookie continuing#E6BD8B"

/*: "#F5F5F8" :*/
fileprivate let user_drawingData:String = "take weight size trail#F5F5F"
fileprivate let user_physicsBringName:String = "8"

/*: "333333" :*/
fileprivate let main_operateName:String = "heatheatheatheatheatheat"

/*: "FF2348" :*/
fileprivate let notiSystemName:String = "FF2lope8"

/*: "666666" :*/
fileprivate let app_prosecutorId:[Character] = ["6","6","6","6","6","6"]

/*: "999999" :*/
fileprivate let notiLineContent:String = "howeverhoweverhowever"

/*: "7C74F4" :*/
fileprivate let data_sectionName:[Character] = ["7","C","7","4","F","4"]

/*: "B97AF8" :*/
fileprivate let user_analysisAnimalName:String = "BusAF8"

/*: "#FF5C9D" :*/
fileprivate let showWholeOpeneMessage:[Character] = ["#","F","F","5","C","9"]
fileprivate let constPanelId:String = "equal"

/*: "#EEEEEE" :*/
fileprivate let main_drawData:String = "#EEEEEEshrink expected area"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func searched(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func attractiveIn() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(const_relateStr.suffix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func thanMortal() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(appFreshValue.suffix(7))))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func doingTo() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(user_drawingData.suffix(6)) + user_physicsBringName.capitalized))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func dialog() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (main_operateName.replacingOccurrences(of: "heat", with: "3")))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func chromaticColourColor() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (notiSystemName.replacingOccurrences(of: "lope", with: "34")))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func ownLight() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (String(app_prosecutorId)))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func saveInColor() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (notiLineContent.replacingOccurrences(of: "however", with: "99")))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func minimizeOn() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(data_sectionName)))!.cgColor, UIColor(hex: (user_analysisAnimalName.replacingOccurrences(of: "us", with: "97")))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func dismissColor() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(showWholeOpeneMessage) + constPanelId.replacingOccurrences(of: "equal", with: "D")))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(showWholeOpeneMessage) + constPanelId.replacingOccurrences(of: "equal", with: "D")))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func nameureBy() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(main_drawData.prefix(7))))!
    }

    //: class func getRandomColor() -> UIColor {
    class func beforePartyNext() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
