
//: Declare String Begin

/*: "Free" :*/
fileprivate let dataElectronUrl:String = "icon availableFree"

/*: " Free 1min" :*/
fileprivate let userMinUrl:String = " Frephoto adjustment listen following"
fileprivate let userSideStartStr:String = "appropriate mode people thread ignoree 1min"

/*: "Video Call" :*/
fileprivate let appMaterialValue:String = "Video discourse multi skin extension written"
fileprivate let user_theTitle:String = "Callm send"

/*: "icon_video_bd" :*/
fileprivate let show_securityTitle:String = "rec"
fileprivate let appParTitle:[Character] = ["o","n","_","v","i","d","e","o","_","b","d"]

/*: "\n %@/min" :*/
fileprivate let dataRecommendStr:String = "\n %@"

/*: "icon_coin_pre" :*/
fileprivate let const_buildTitle:[Character] = ["i","c","o","n","_","c","o","i","n","_","p","r"]
fileprivate let constPhaseLifeData:String = "style"

/*: "\n %@ %@/min" :*/
fileprivate let k_hungTitle:String = "\n %@"
fileprivate let data_backPath:[Character] = ["i","n"]

/*: "%@/min" :*/
fileprivate let const_particleConductParentData:String = "%"
fileprivate let showCreationKey:[Character] = ["@","/","m","i","n"]

/*: "#D8D8D8" :*/
fileprivate let noti_yetBoundValue:String = "estimated forth just his balance#D8D8D8"

/*: "Free 1 min" :*/
fileprivate let k_challengeValue:[Character] = ["F","r","e","e"," ","1"," "]
fileprivate let notiRawData:String = "mredn"

/*: "%@ Coins/min" :*/
fileprivate let userWhyOutputKey:String = "%@ Cnap quality withdraw fun"

/*: "%@ Gold coins / Min" :*/
fileprivate let notiBirthdayKey:String = "%@ Goconversation old adjustment main income"
fileprivate let show_tipMsg:String = "value continue begin masters / Min"

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let constHeavyMenuFormat:[Character] = ["V","i","d","e","o"," ","C","a","l","l"," ","(","%","@"," ","C","o","i","n","s","/","m","i","n",")"]

/*: "Voice Call" :*/
fileprivate let appOrientationMessage:String = "Voicelarge define engineering ready open"

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let k_evaluateText:[Character] = ["V","o","i","c","e"," ","C","a","l","l"," ","("]
fileprivate let k_entityText:String = "context@ "
fileprivate let userFoundationFormat:[Character] = ["C","o","i","n","s","/","m","i","n",")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func doBurn(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(dataElectronUrl.suffix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(dataElectronUrl.suffix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(userMinUrl.prefix(4)) + String(userSideStartStr.suffix(6))).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.locationName(name: (show_securityTitle.replacingOccurrences(of: "re", with: "i") + String(appParTitle)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.BundleImageNamed(name: "icon_video_bd")
            attach.image = UIImage.locationName(name: (show_securityTitle.replacingOccurrences(of: "re", with: "i") + String(appParTitle)))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (dataRecommendStr + "/min").unitedStates(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.locationName(name: (String(const_buildTitle) + constPhaseLifeData.replacingOccurrences(of: "style", with: "e")))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (k_hungTitle + " %@/m" + String(data_backPath)).unitedStates(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.BundleImageNamed(name: "icon_coin_pre")
                attach2.image = UIImage.locationName(name: (String(const_buildTitle) + constPhaseLifeData.replacingOccurrences(of: "style", with: "e")))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.bigGallery(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (const_particleConductParentData.capitalized + String(showCreationKey)).unitedStates(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(noti_yetBoundValue.suffix(7))))!, .font: UIFont.bigGallery(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func judgeStrength(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else {
            //: return "Video Call".localized
            return (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
        }
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 {
            //: if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
            if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(k_challengeValue) + notiRawData.replacingOccurrences(of: "red", with: "i")).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(userWhyOutputKey.prefix(4)) + "oins/min").unitedStates(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(notiBirthdayKey.prefix(5)) + "ld coin" + String(show_tipMsg.suffix(7))).unitedStates(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func glyceroliseActionExpensiveness(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = PrimaryBasicType.nor
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
            if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(k_challengeValue) + notiRawData.replacingOccurrences(of: "red", with: "i")).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dialog(), .font: UIFont.bigGallery(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(constHeavyMenuFormat)).unitedStates(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dialog(), .font: UIFont.bigGallery(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.attractiveIn(), .font: UIFont.bigGallery(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func outBalance(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = PrimaryBasicType.nor
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
            if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(k_challengeValue) + notiRawData.replacingOccurrences(of: "red", with: "i")).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(appOrientationMessage.prefix(5)) + " Call").localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dialog(), .font: UIFont.bigGallery(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(appOrientationMessage.prefix(5)) + " Call").localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(k_evaluateText) + k_entityText.replacingOccurrences(of: "context", with: "%") + String(userFoundationFormat)).unitedStates(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.dialog(), .font: UIFont.bigGallery(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.attractiveIn(), .font: UIFont.bigGallery(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func combineMinimum(videoPrice: String) -> String {
        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else {
            //: return "Video Call".localized
            return (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
        }
        //: let index = EnableFreeCallType.nor
        let index = PrimaryBasicType.nor
        //: if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && DismissReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
            if DismissReactiveCompatible.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(k_challengeValue) + notiRawData.replacingOccurrences(of: "red", with: "i")).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(appMaterialValue.prefix(6)) + String(user_theTitle.prefix(4))).localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(userWhyOutputKey.prefix(4)) + "oins/min").unitedStates(videoPrice)
        }
    }
}
