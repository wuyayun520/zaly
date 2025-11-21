
//: Declare String Begin

/*: "ZUhWdWQzVnNiM1ps" :*/
fileprivate let constAccelerateTitle:String = "yesterday multiZUhWd"
fileprivate let constPlainData:String = "kind good snake citynNiM1ps"

/*: "OrKulDHBYyjUHZTy1sS7dw==" :*/
fileprivate let data_makeId:[Character] = ["O","r","K","u","l","D","H","B","Y","y","j","U","H","Z","T","y","1","s","S","7","d","w","=","="]

/*: "null" :*/
fileprivate let data_thinId:[Character] = ["n","u","l","l"]

/*: "(null)" :*/
fileprivate let show_denyFormat:String = "(null)ear plant pitch cookie"

/*: "nil" :*/
fileprivate let notiEyeEditName:[Character] = ["n","i","l"]

/*: "<null>" :*/
fileprivate let k_buttonMsg:[Character] = ["<","n","u","l","l",">"]

/*: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789" :*/
fileprivate let show_splitStr:[UInt8] = [0x9f,0x9c,0x9d,0x9a,0x9b,0x98,0x99,0x96,0x97,0x94,0x95,0x92,0x93,0x90,0x91,0x8e,0x8f,0x8c,0x8d,0x8a,0x8b,0x88,0x89,0x86,0x87,0x84,0xbf,0xbc,0xbd,0xba,0xbb,0xb8,0xb9,0xb6,0xb7,0xb4,0xb5,0xb2,0xb3,0x90,0x91,0x8e,0xaf,0xac,0xad,0xaa,0xab,0xa8,0xa9,0xa6,0xa7,0xa4,0xce,0xcf,0xcc,0xcd,0xca,0xcb,0xc8,0xc9,0xc6,0xc7]

private func complyBoth(withdraw num: UInt8) -> UInt8 {
    return num ^ 254
}

/*: "加密参数=  :*/
fileprivate let userWorkCalledName:String = "sound密参数= "

/*: "解密结果=  :*/
fileprivate let const_lackMKey:String = "解密结果="
fileprivate let appVisitorPath:[Character] = [" "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StringExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import Foundation
import Foundation

//: let UrlKey = "ZUhWdWQzVnNiM1ps"
let kMineLengthData = (String(constAccelerateTitle.suffix(5)) + "WQzV" + String(constPlainData.suffix(7)))

//: let UrlDomin = "OrKulDHBYyjUHZTy1sS7dw=="
let userValueTitle = (String(data_makeId))

//: extension String {
extension String {
    //: var isEmptyString: Bool {
    var isEmptyString: Bool {
        //: guard !self.isEmpty else { return true }
        guard !self.isEmpty else { return true }
        //: guard self != "null" else { return true }
        guard self != (String(data_thinId)) else { return true }
        //: guard self != "(null)" else { return true }
        guard self != (String(show_denyFormat.prefix(6))) else { return true }
        //: guard self != "nil" else { return true }
        guard self != (String(notiEyeEditName)) else { return true }
        //: guard self != "<null>" else { return true }
        guard self != (String(k_buttonMsg)) else { return true }
        //: guard self != "" else { return true }
        guard self != "" else { return true }

        //: let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        //: return trimmedStr.isEmpty
        return trimmedStr.isEmpty
    }

    //: var boolValue: Bool {
    var boolValue: Bool {
        //: return NSString(string: self).boolValue
        return NSString(string: self).boolValue
    }

    //: var intValue: Int {
    var intValue: Int {
        //: Int(self) ?? 0
        Int(self) ?? 0
    }

    /// 字符串的匹配范围
    //: func exMatchStrRange(_ matchStr: String) -> [NSRange] {
    func connectJump(_ matchStr: String) -> [NSRange] {
        //: var selfStr = self as NSString
        var selfStr = self as NSString
        //: var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        //: if matchStr == withStr { withStr = withStr.lowercased() }
        if matchStr == withStr { withStr = withStr.lowercased() } // 临时处理辅助字符串差错
        //: var allRange = [NSRange]()
        var allRange = [NSRange]()
        //: while selfStr.range(of: matchStr).location != NSNotFound {
        while selfStr.range(of: matchStr).location != NSNotFound {
            //: let range = selfStr.range(of: matchStr)
            let range = selfStr.range(of: matchStr)
            //: allRange.append(NSRange(location: range.location, length: range.length))
            allRange.append(NSRange(location: range.location, length: range.length))
            //: selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
            selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
        }

        //: return allRange
        return allRange
    }

    /// 从String中截取出参数
    //: var urlParameters: [String: AnyObject]? {
    var urlParameters: [String: AnyObject]? {
        // 截取是否有参数
        //: guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
        guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
            //: return nil
            return nil
        }
        // 参数字典
        //: var parameters = [String: AnyObject]()
        var parameters = [String: AnyObject]()

        // 遍历参数
        //: queryItems.forEach({ (item) in
        queryItems.forEach { item in
            // 判断参数是否是数组
            //: if let existValue = parameters[item.name], let value = item.value {
            if let existValue = parameters[item.name], let value = item.value {
                // 已存在的值，生成数组
                //: if var existValue = existValue as? [AnyObject] {
                if var existValue = existValue as? [AnyObject] {
                    //: existValue.append(value as AnyObject)
                    existValue.append(value as AnyObject)
                    //: } else {
                } else {
                    //: parameters[item.name] = [existValue, value] as AnyObject
                    parameters[item.name] = [existValue, value] as AnyObject
                }

                //: } else {
            } else {
                //: parameters[item.name] = item.value as AnyObject
                parameters[item.name] = item.value as AnyObject
            }
            //: })
        }

        //: return parameters
        return parameters
    }
}

// MARK: String Encrypt

//: extension String {
extension String {
    /// 随机字符串
    /// - Parameters:
    ///   - length: 长度
    //: static func randomString(length: Int) -> String {
    static func weekBy(length: Int) -> String {
        //: let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789"
        let letters: NSString = String(bytes: show_splitStr.map{complyBoth(withdraw: $0)}, encoding: .utf8)! as NSString
        //: let len = UInt32(letters.length)
        let len = UInt32(letters.length)
        //: var randomString = ""
        var randomString = ""
        //: for _ in 0 ..< length {
        for _ in 0 ..< length {
            //: let rand = arc4random_uniform(len)
            let rand = arc4random_uniform(len)
            //: var nextChar = letters.character(at: Int(rand))
            var nextChar = letters.character(at: Int(rand))
            //: randomString += NSString(characters: &nextChar,length: 1) as String
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        //: return randomString
        return randomString
    }

    //: func aes256Encrypt(key: String) -> String? {
    func calpacKey(key: String) -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (userWorkCalledName.replacingOccurrences(of: "sound", with: "加")) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: key)
        let EncryptData = (inputData as NSData).census(key)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.utilise(EncryptData, custom: UInt((EncryptData as NSData).length))
    }

    //: func aes256Decrypt(key: String) -> String? {
    func socialKey(key: String) -> String? {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.roundTitle(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: key)
        let decryData = (encryData as NSData).level(key)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: printLog(message: "解密结果= \(decryStr)")
        printLog(message: (const_lackMKey.capitalized + String(appVisitorPath)) + "\(decryStr)")
        //: return decryStr
        return decryStr
    }

    //: func urlAes256Encrypt() -> String? {
    func body() -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (userWorkCalledName.replacingOccurrences(of: "sound", with: "加")) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: UrlKey)
        let EncryptData = (inputData as NSData).census(kMineLengthData)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.utilise(EncryptData, custom: UInt((EncryptData as NSData).length))
    }

    //: func urlAes256Decrypt() -> String {
    func until6decrypt() -> String {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.roundTitle(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: UrlKey)
        let decryData = (encryData as NSData).level(kMineLengthData)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: return decryStr ?? ""
        return decryStr ?? ""
    }

    /// 字符串截取，表情乱码（表情长度不对问题）
    //: static func substringByUnicodeIndex(str: String, from: Int, to: Int) -> String {
    static func reminiscence(str: String, from: Int, to: Int) -> String {
        //: let begem = from < 0 ? 0: from
        let begem = from < 0 ? 0 : from
        //: let to = to >= str.unicodeScalars.count ?  str.unicodeScalars.count : to
        let to = to >= str.unicodeScalars.count ? str.unicodeScalars.count : to
        //: guard to >= from else {
        guard to >= from else {
            //: return str
            return str
        }
        //: let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        //: let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        //: return String(str.unicodeScalars[startIndex..<endIndex])
        return String(str.unicodeScalars[startIndex ..< endIndex])
    }

    /// 删除html标签
    //: func deleteHtmlTips() -> String {
    func html() -> String {
        //: let htmlPattern = "<.*?>"
        let htmlPattern = "<.*?>"
        //: return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
        return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
    }
}

//: extension Int {
extension Int {
    //: var boolValue: Bool {
    var boolValue: Bool {
        //: self != 0
        self != 0
    }

    //: var stringValue: String {
    var stringValue: String {
        //: String(self)
        String(self)
    }
}
