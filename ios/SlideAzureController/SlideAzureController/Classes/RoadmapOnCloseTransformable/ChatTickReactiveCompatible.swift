
//: Declare String Begin

/*: "jumpInfo" :*/
fileprivate let show_demandValue:[Character] = ["j","u","m","p","I","n","f","o"]

/*: "type" :*/
fileprivate let kHelloMsg:[UInt8] = [0x5,0x8,0x1,0x14]

/*: "text" :*/
fileprivate let app_nutPlayerUrl:[UInt8] = [0x43,0x52,0x4f,0x43]

private func problemJoin(pending num: UInt8) -> UInt8 {
    return num ^ 55
}

/*: "attr" :*/
fileprivate let mainBoneValue:[UInt8] = [0x57,0x42,0x42,0x44]

private func ticketHuman(military num: UInt8) -> UInt8 {
    return num ^ 54
}

/*: "color" :*/
fileprivate let constMovementMessage:[Character] = ["c","o","l","o","r"]

/*: "underLine" :*/
fileprivate let user_yearManMsg:String = "uselectiond"
fileprivate let dataNoteId:[Character] = ["e","r","L","i","n","e"]

/*: "font" :*/
fileprivate let k_estimatedKey:[Character] = ["f","o","n","t"]

/*: "img" :*/
fileprivate let appLittleReduceName:String = "shotmg"

/*: "name" :*/
fileprivate let noti_globalPackValue:[UInt8] = [0x7b,0x74,0x78,0x70]

private func identifySeed(bass num: UInt8) -> UInt8 {
    return num ^ 21
}

/*: "title" :*/
fileprivate let k_haveKey:[Character] = ["t","i","t","l","e"]

/*: "content" :*/
fileprivate let constPickBelowOrientationValue:[Character] = ["c","o","n","t","e","n","t"]

/*: "#333333" :*/
fileprivate let notiClearlyUrl:[Character] = ["#"]
fileprivate let show_hungPath:[Character] = ["3","3","3","3","3","3"]

/*: "#FFFFFF" :*/
fileprivate let constLargeMessage:[Character] = ["#","F","F","F","F","F","F"]

/*: "jump" :*/
fileprivate let main_floorKey:String = "jyetp"

/*: "#0084FF" :*/
fileprivate let appEnergyPath:[Character] = ["#","0","0","8","4","F","F"]

/*: "maxFont" :*/
fileprivate let app_applyStr:[UInt8] = [0x1e,0x12,0x29,0xf7,0x20,0x1f,0x25]

fileprivate func quickMotion(successful num: UInt8) -> UInt8 {
    let value = Int(num) - 177
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "size" :*/
fileprivate let showBeautyKey:[UInt8] = [0x35,0x2f,0x3c,0x23]

private func oppositeReserve(partner num: UInt8) -> UInt8 {
    return num ^ 70
}

/*: "margin" :*/
fileprivate let dataSkipMsg:[UInt8] = [0xa0,0xac,0xbf,0xaa,0xa4,0xa3]

private func recommendBlind(movement num: UInt8) -> UInt8 {
    return num ^ 205
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChatTickReactiveCompatible.swift

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: @objc public enum ParseTagTextType: UInt {
@objc public enum SightTermConvertible: UInt {
    //: case ParseTagTextType_Normal = 0
    case ParseTagTextType_Normal = 0
    //: case ParseTagTextType_Tip
    case ParseTagTextType_Tip
}

//: private let kJumpInfo = "jumpInfo"
private let noti_onName = (String(show_demandValue))

/// 解析带有html标签的文本
//: @objcMembers public class TUIChatParseTagHelper: NSObject {
@objcMembers public class ChatTickReactiveCompatible: NSObject {
    //: public var type: ParseTagTextType = .ParseTagTextType_Normal
    public var type: SightTermConvertible = .ParseTagTextType_Normal
    //: public var colorHex: String?
    public var colorHex: String?
    //: public var containImg: Bool = false
    public var containImg: Bool = false
    //: public var content: String = ""
    public var content: String = ""
    //: public var jumps: [Any] = []
    public var jumps: [Any] = []

    //: public var jumpActionBlock: (([String: Any]) -> Void)?
    public var jumpActionBlock: (([String: Any]) -> Void)?

    // MARK: - 私有属性

    //: private var _pure_content: String?
    private var _pure_content: String?
    //: private var _contentTextAttrString: NSMutableAttributedString?
    private var _contentTextAttrString: NSMutableAttributedString?
    //: private var _contentAttrArray: NSMutableArray?
    private var _contentAttrArray: NSMutableArray?
    //: private var _jumpArray: NSMutableArray?
    private var _jumpArray: NSMutableArray?

    // MARK: - 计算属性

    //: private var pure_content: String {
    private var pure_content: String {
        //: if _pure_content == nil {
        if _pure_content == nil {
            //: analysisContent()
            ownerWithOpene()
        }
        //: return _pure_content ?? ""
        return _pure_content ?? ""
    }

    // MARK: - 方法实现

    //: private func analysisContent() {
    private func ownerWithOpene() {
        //: if _contentAttrArray == nil || _pure_content == nil {
        if _contentAttrArray == nil || _pure_content == nil {
            //: _contentAttrArray = NSMutableArray()
            _contentAttrArray = NSMutableArray()
            //: _pure_content = parseXML(
            _pure_content = radiotelegraphicSignal(
                //: source: self.content, into: _contentAttrArray!)
                source: self.content, into: _contentAttrArray!
            )
        }
    }

    //: public func contentParse(
    public func asReceivePermission(
        //: withFontSize fontSize: CGFloat, insert insertString: String?,
        withFontSize fontSize: CGFloat, insert insertString: String?,
        //: atIndex loc: UInt
        atIndex loc: UInt
        //: ) -> NSMutableAttributedString {
    ) -> NSMutableAttributedString {
        //: if let _contentTextAttrString = _contentTextAttrString {
        if let _contentTextAttrString = _contentTextAttrString {
            //: return _contentTextAttrString
            return _contentTextAttrString
        }

        //: analysisContent()
        ownerWithOpene()
        //: return rendering(
        return barDestroy(
            //: attrArray: _contentAttrArray!, fontSize: fontSize,
            attrArray: _contentAttrArray!, fontSize: fontSize,
            //: insert: insertString, atIndex: loc)
            insert: insertString, atIndex: loc
        )
    }

    //: private func rendering(
    private func barDestroy(
        //: attrArray: NSMutableArray, fontSize: CGFloat,
        attrArray: NSMutableArray, fontSize: CGFloat,
        //: insert insertString: String?, atIndex loc: UInt
        insert insertString: String?, atIndex loc: UInt
        //: ) -> NSMutableAttributedString {
    ) -> NSMutableAttributedString {
        //: let textAttributedString = NSMutableAttributedString()
        let textAttributedString = NSMutableAttributedString()

        //: var font = UIFont.systemFont(ofSize: fontSize)
        var font = UIFont.systemFont(ofSize: fontSize)
        //: textAttributedString.append(NSAttributedString(string: " "))
        textAttributedString.append(NSAttributedString(string: " "))

        //: for textInfo in attrArray {
        for textInfo in attrArray {
            //: guard let textInfoDict = textInfo as? [String: Any] else {
            guard let textInfoDict = textInfo as? [String: Any] else {
                //: continue
                continue
            }

            //: let type = textInfoDict["type"] as? String ?? ""
            let type = textInfoDict[String(bytes: kHelloMsg.map{$0^113}, encoding: .utf8)!] as? String ?? ""

            //: if type.lowercased() == "text" {
            if type.lowercased() == String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)! {
                //: let text = textInfoDict["text"] as? String ?? ""
                let text = textInfoDict[String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!] as? String ?? ""
                //: let isB = textInfoDict["b"] as? Bool ?? false
                let isB = textInfoDict["b"] as? Bool ?? false
                //: let attr = textInfoDict["attr"] as? [String: Any] ?? [:]
                let attr = textInfoDict[String(bytes: mainBoneValue.map{ticketHuman(military: $0)}, encoding: .utf8)!] as? [String: Any] ?? [:]

                //: var textColor: UIColor?
                var textColor: UIColor?
                //: if let colorStr = attr["color"] as? String {
                if let colorStr = attr[(String(constMovementMessage))] as? String {
                    //: textColor = UIColor(hexString: colorStr)
                    textColor = UIColor(hexString: colorStr)
                }
                //: let underLine = attr["underLine"] as? Bool ?? false
                let underLine = attr[(user_yearManMsg.replacingOccurrences(of: "selection", with: "n") + String(dataNoteId))] as? Bool ?? false

                //: if isB {
                if isB {
                    //: font = UIFont.boldSystemFont(ofSize: fontSize)
                    font = UIFont.boldSystemFont(ofSize: fontSize)
                    //: } else {
                } else {
                    //: font = UIFont.systemFont(ofSize: fontSize)
                    font = UIFont.systemFont(ofSize: fontSize)
                }

                //: if let infoFont = attr["font"] as? UIFont {
                if let infoFont = attr[(String(k_estimatedKey))] as? UIFont {
                    //: font = infoFont
                    font = infoFont
                }

                //: var attributes: [NSAttributedString.Key: Any] = [
                var attributes: [NSAttributedString.Key: Any] = [
                    //: NSAttributedString.Key.font: font
                    NSAttributedString.Key.font: font,
                ]
                //: if let textColor = textColor {
                if let textColor = textColor {
                    //: attributes[NSAttributedString.Key.foregroundColor] =
                    attributes[NSAttributedString.Key.foregroundColor] =
                        //: textColor
                        textColor
                }
                //: if underLine {
                if underLine {
                    //: attributes[NSAttributedString.Key.underlineStyle] =
                    attributes[NSAttributedString.Key.underlineStyle] =
                        //: NSUnderlineStyle.single.rawValue
                        NSUnderlineStyle.single.rawValue
                }

                //: if !text.isEmpty {
                if !text.isEmpty {
                    //: let attText = NSMutableAttributedString(
                    let attText = NSMutableAttributedString(
                        //: string: text, attributes: attributes)
                        string: text, attributes: attributes
                    )

                    //: if let jumpInfo = attr[kJumpInfo] as? [String: Any] {
                    if let jumpInfo = attr[noti_onName] as? [String: Any] {
                        //: attText.yy_setTextHighlight(
                        attText.yy_setTextHighlight(
                            //: NSRange(location: 0, length: attText.length),
                            NSRange(location: 0, length: attText.length),
                            //: color: nil, backgroundColor: nil
                            color: nil, backgroundColor: nil
                            //: ) { [weak self] (containerView, text, range, rect) in
                        ) { [weak self] _, _, _, _ in
                            //: self?.jumpActionBlock?(jumpInfo)
                            self?.jumpActionBlock?(jumpInfo)
                        }
                    }

                    //: textAttributedString.append(attText)
                    textAttributedString.append(attText)
                }

                //: } else if type.lowercased() == "img" {
            } else if type.lowercased() == (appLittleReduceName.replacingOccurrences(of: "shot", with: "i")) {
                //: if self.containImg {
                if self.containImg {
                    //: let width = max(180, DepictionThen.getScreenWidth() - 150)
                    let width = max(180, DepictionThen.manualChin() - 150)
                    //: let height = 94.0 / 230.0 * width
                    let height = 94.0 / 230.0 * width
                    //: let imgUrl = textInfoDict["name"] as? String ?? ""
                    let imgUrl = textInfoDict[String(bytes: noti_globalPackValue.map{identifySeed(bass: $0)}, encoding: .utf8)!] as? String ?? ""

                    //: let imageView = UIImageView()
                    let imageView = UIImageView()
                    //: imageView.bounds = CGRect(
                    imageView.bounds = CGRect(
                        //: x: 0, y: 0, width: width, height: height)
                        x: 0, y: 0, width: width, height: height
                    )
                    //: imageView.clipsToBounds = true
                    imageView.clipsToBounds = true
                    //: imageView.setUrlImage(
                    imageView.bolt(
                        //: urlStr: imgUrl, placeImg: nil, loadFinish: nil)
                        urlStr: imgUrl, placeImg: nil, loadFinish: nil
                    )

                    //: let imageAtt = NSMutableAttributedString.yy_attachmentString(
                    let imageAtt = NSMutableAttributedString.yy_attachmentString(
                        //: withContent: imageView,
                        withContent: imageView,
                        //: contentMode: .scaleAspectFill,
                        contentMode: .scaleAspectFill,
                        //: attachmentSize: CGSize(
                        attachmentSize: CGSize(
                            //: width: width, height: height),
                            width: width, height: height
                        ),
                        //: alignTo: UIFont.systemFont(ofSize: 15),
                        alignTo: UIFont.systemFont(ofSize: 15),
                        //: alignment: .center)
                        alignment: .center
                    )

                    //: textAttributedString.append(imageAtt)
                    textAttributedString.append(imageAtt)
                }
            }
        }

        //: if let insertString = insertString, !insertString.isEmpty {
        if let insertString = insertString, !insertString.isEmpty {
            //: textAttributedString.insert(
            textAttributedString.insert(
                //: NSAttributedString(
                NSAttributedString(
                    //: string: insertString,
                    string: insertString,
                    //: attributes: [NSAttributedString.Key.font: font]),
                    attributes: [NSAttributedString.Key.font: font]
                ),
                //: at: Int(loc))
                at: Int(loc)
            )
        }

        //: textAttributedString.append(NSAttributedString(string: "\u{202C}"))
        textAttributedString.append(NSAttributedString(string: "\u{202C}"))
        //: _contentTextAttrString = textAttributedString
        _contentTextAttrString = textAttributedString
        //: return _contentTextAttrString!
        return _contentTextAttrString!
    }

    //: private func parseXML(source: String, into attrArray: NSMutableArray)
    private func radiotelegraphicSignal(source: String, into attrArray: NSMutableArray)
        //: -> String
        -> String
    {
        //: do {
        do {
            //: let document = try ONOXMLDocument(
            let document = try ONOXMLDocument(
                //: string: "<_>\(source)</_>",
                string: "<_>\(source)</_>",
                //: encoding: CFStringConvertEncodingToNSStringEncoding(
                encoding: CFStringConvertEncodingToNSStringEncoding(
                    //: CFStringBuiltInEncodings.UTF8.rawValue))
                    CFStringBuiltInEncodings.UTF8.rawValue
                )
            )

            //: guard let element = document.rootElement else {
            guard let element = document.rootElement else {
                //: return source
                return source
            }

            //: parse(
            scarper(
                //: element: element, into: attrArray, defaultB: false,
                element: element, into: attrArray, defaultB: false,
                //: defaultAttr: [:])
                defaultAttr: [:]
            )

            //: var retStr = ""
            var retStr = ""
            //: let childrenElements = element.children as NSArray
            let childrenElements = element.children as NSArray

            //: if childrenElements.count == 0 {
            if childrenElements.count == 0 {
                //: retStr = ""
                retStr = ""
                //: } else {
            } else {
                //: var hasTitle = false
                var hasTitle = false

                //: for aChildEle in childrenElements {
                for aChildEle in childrenElements {
                    //: guard let childElement = aChildEle as? ONOXMLElement else {
                    guard let childElement = aChildEle as? ONOXMLElement else {
                        //: continue
                        continue
                    }

                    //: if childElement.tag == "title" {
                    if childElement.tag == (String(k_haveKey)) {
                        //: retStr = retStr + (childElement.stringValue() ?? "")
                        retStr = retStr + (childElement.stringValue() ?? "")
                        //: hasTitle = true
                        hasTitle = true
                        //: } else if childElement.tag == "img" {
                    } else if childElement.tag == (appLittleReduceName.replacingOccurrences(of: "shot", with: "i")) {
                        //: retStr = retStr + "[图片]"
                        retStr = retStr + "[图片]"
                        //: } else if childElement.tag == "content" {
                    } else if childElement.tag == (String(constPickBelowOrientationValue)) {
                        //: if !hasTitle {
                        if !hasTitle { // 需求：有标题时不展示内容信息
                            //: retStr = retStr + (childElement.stringValue() ?? "")
                            retStr = retStr + (childElement.stringValue() ?? "")
                        }
                        //: } else {
                    } else {
                        //: retStr = retStr + (childElement.stringValue() ?? "")
                        retStr = retStr + (childElement.stringValue() ?? "")
                    }
                }
            }

            // 消息的纯文本显示信息
            //: let result =
            let result =
                //: !retStr.isEmpty ? retStr.replacingOccurrences(of: "\n", with: " ") : (element.stringValue() ?? "")
                !retStr.isEmpty ? retStr.replacingOccurrences(of: "\n", with: " ") : (element.stringValue() ?? "")
            //: return result
            return result

            //: } catch {
        } catch {
            //: print("[Error] \(error)")
            //: attrArray.add(["text": source, "b": false])
            attrArray.add([String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!: source, "b": false])
            //: return source
            return source
        }
    }

    //: private func parse(
    private func scarper(
        //: element: ONOXMLElement, into attrArray: NSMutableArray,
        element: ONOXMLElement, into attrArray: NSMutableArray,
        //: defaultB isB: Bool, defaultAttr: [String: Any]
        defaultB isB: Bool, defaultAttr: [String: Any]
        //: ) {
    ) {
        //: var newIsB = isB
        var newIsB = isB
        //: if element.tag == "b" {
        if element.tag == "b" {
            //: newIsB = true
            newIsB = true
        }

        //: let children = element.children as NSArray
        let children = element.children as NSArray
        //: var mDefaultAttr = defaultAttr
        var mDefaultAttr = defaultAttr

        //: if let color = element.value(forAttribute: "color") as? String {
        if let color = element.value(forAttribute: (String(constMovementMessage))) as? String {
            //: mDefaultAttr["color"] = color
            mDefaultAttr[(String(constMovementMessage))] = color
            //: } else if mDefaultAttr["color"] == nil {
        } else if mDefaultAttr[(String(constMovementMessage))] == nil {
            //: if self.type == .ParseTagTextType_Normal {
            if self.type == .ParseTagTextType_Normal {
                //: mDefaultAttr["color"] = self.colorHex ?? "#333333"
                mDefaultAttr[(String(constMovementMessage))] = self.colorHex ?? (String(notiClearlyUrl) + String(show_hungPath))
                //: } else {
            } else {
                //: mDefaultAttr["color"] = "#FFFFFF"
                mDefaultAttr[(String(constMovementMessage))] = (String(constLargeMessage))
            }
        }

        //: if element.tag.lowercased() == "u" {
        if element.tag.lowercased() == "u" {
            //: mDefaultAttr["u"] = true
            mDefaultAttr["u"] = true
            //: mDefaultAttr["underLine"] = true
            mDefaultAttr[(user_yearManMsg.replacingOccurrences(of: "selection", with: "n") + String(dataNoteId))] = true
        }

        //: if let underLine = element.value(forAttribute: "underLine") as? String {
        if let underLine = element.value(forAttribute: (user_yearManMsg.replacingOccurrences(of: "selection", with: "n") + String(dataNoteId))) as? String {
            //: mDefaultAttr["underLine"] = underLine
            mDefaultAttr[(user_yearManMsg.replacingOccurrences(of: "selection", with: "n") + String(dataNoteId))] = underLine
        }

        //: if element.tag.lowercased() == "jump" {
        if element.tag.lowercased() == (main_floorKey.replacingOccurrences(of: "yet", with: "um")) {
            //: if let color = element.value(forAttribute: "color") as? String {
            if let color = element.value(forAttribute: (String(constMovementMessage))) as? String {
                //: mDefaultAttr["color"] = color
                mDefaultAttr[(String(constMovementMessage))] = color
                //: } else {
            } else {
                //: mDefaultAttr["color"] = "#0084FF"
                mDefaultAttr[(String(constMovementMessage))] = (String(appEnergyPath))
            }

            //: if _jumpArray == nil && !self.jumps.isEmpty {
            if _jumpArray == nil && !self.jumps.isEmpty {
                //: _jumpArray = NSMutableArray()
                _jumpArray = NSMutableArray()
                //: _jumpArray?.addObjects(from: self.jumps)
                _jumpArray?.addObjects(from: self.jumps)
            }

            //: if let jumpArray = _jumpArray, jumpArray.count > 0 {
            if let jumpArray = _jumpArray, jumpArray.count > 0 {
                //: mDefaultAttr[kJumpInfo] = jumpArray[0]
                mDefaultAttr[noti_onName] = jumpArray[0]
                //: jumpArray.removeObject(at: 0)
                jumpArray.removeObject(at: 0)
            }
        }

        //: if children.count > 0 {
        if children.count > 0 {
            //: for child in children {
            for child in children {
                //: if let childElement = child as? ONOXMLElement {
                if let childElement = child as? ONOXMLElement {
                    //: parse(
                    scarper(
                        //: element: childElement, into: attrArray,
                        element: childElement, into: attrArray,
                        //: defaultB: newIsB, defaultAttr: mDefaultAttr)
                        defaultB: newIsB, defaultAttr: mDefaultAttr
                    )
                }
            }
            //: } else {
        } else {
            //: let text = element.stringValue() ?? ""
            let text = element.stringValue() ?? ""
            //: let eleTag = element.parent?.tag ?? ""
            let eleTag = element.parent?.tag ?? ""

            //: if eleTag == "title" {
            if eleTag == (String(k_haveKey)) {
                //: var attributes = mDefaultAttr
                var attributes = mDefaultAttr
                //: attributes["font"] = UIFont.systemFont(
                attributes[(String(k_estimatedKey))] = UIFont.systemFont(
                    //: ofSize: 16, weight: .regular)
                    ofSize: 16, weight: .regular)
                //: if mDefaultAttr["color"] == nil {
                if mDefaultAttr[(String(constMovementMessage))] == nil {
                    //: attributes["color"] = "#333333"
                    attributes[(String(constMovementMessage))] = (String(notiClearlyUrl) + String(show_hungPath))
                }

                //: attrArray.add([
                attrArray.add([
                    //: "type": "text",
                    String(bytes: kHelloMsg.map{$0^113}, encoding: .utf8)!: String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!,
                    //: "text": "\(text)\n",
                    String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!: "\(text)\n",
                    //: "attr": attributes,
                    String(bytes: mainBoneValue.map{ticketHuman(military: $0)}, encoding: .utf8)!: attributes,
                    //: ])
                ])

                //: } else if eleTag == "img" {
            } else if eleTag == (appLittleReduceName.replacingOccurrences(of: "shot", with: "i")) {
                //: let imgInfo: [String: Any] = [
                let imgInfo: [String: Any] = [
                    //: "type": "img",
                    String(bytes: kHelloMsg.map{$0^113}, encoding: .utf8)!: (appLittleReduceName.replacingOccurrences(of: "shot", with: "i")),
                    //: "name": element.stringValue() ?? "",
                    String(bytes: noti_globalPackValue.map{identifySeed(bass: $0)}, encoding: .utf8)!: element.stringValue() ?? "",
                    //: "maxFont": UIFont.systemFont(ofSize: 16, weight: .regular),
                    String(bytes: app_applyStr.map{quickMotion(successful: $0)}, encoding: .utf8)!: UIFont.systemFont(ofSize: 16, weight: .regular),
                    //: "size": NSValue(cgSize: CGSize.zero),
                    String(bytes: showBeautyKey.map{oppositeReserve(partner: $0)}, encoding: .utf8)!: NSValue(cgSize: CGSize.zero),
                    //: "margin": NSValue(uiEdgeInsets: UIEdgeInsets.zero),
                    String(bytes: dataSkipMsg.map{recommendBlind(movement: $0)}, encoding: .utf8)!: NSValue(uiEdgeInsets: UIEdgeInsets.zero),
                ]

                //: if !imgInfo.isEmpty && !(element.stringValue() ?? "").isEmpty {
                if !imgInfo.isEmpty && !(element.stringValue() ?? "").isEmpty {
                    //: if attrArray.count > 0 {
                    if attrArray.count > 0 {
                        //: if let preInfo = attrArray.lastObject as? [String: Any],
                        if let preInfo = attrArray.lastObject as? [String: Any],
                           //: let preText = preInfo["text"] as? String,
                           let preText = preInfo[String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!] as? String,
                           //: !preText.isEmpty && !preText.hasSuffix("\n")
                           !preText.isEmpty && !preText.hasSuffix("\n")
                        {
                            //: var attributes = mDefaultAttr
                            var attributes = mDefaultAttr
                            //: attributes["font"] = UIFont.systemFont(
                            attributes[(String(k_estimatedKey))] = UIFont.systemFont(
                                //: ofSize: 3, weight: .thin)
                                ofSize: 3, weight: .thin)
                            //: attrArray.add([
                            attrArray.add([
                                //: "type": "text",
                                String(bytes: kHelloMsg.map{$0^113}, encoding: .utf8)!: String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!,
                                //: "text": "\n\n",
                                String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!: "\n\n",
                                //: "attr": attributes,
                                String(bytes: mainBoneValue.map{ticketHuman(military: $0)}, encoding: .utf8)!: attributes,
                                //: ])
                            ])
                        }
                    }

                    //: attrArray.add(imgInfo)
                    attrArray.add(imgInfo)
                    //: containImg = true
                    containImg = true
                }

                //: } else {
            } else {
                //: if !text.isEmpty {
                if !text.isEmpty {
                    //: attrArray.add([
                    attrArray.add([
                        //: "type": "text",
                        String(bytes: kHelloMsg.map{$0^113}, encoding: .utf8)!: String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!,
                        //: "text": text,
                        String(bytes: app_nutPlayerUrl.map{problemJoin(pending: $0)}, encoding: .utf8)!: text,
                        //: "attr": mDefaultAttr,
                        String(bytes: mainBoneValue.map{ticketHuman(military: $0)}, encoding: .utf8)!: mDefaultAttr,
                        //: ])
                    ])
                }
            }
        }
    }
}
