// __DEBUG__
// __CLOSE_PRINT__
//
//  File.swift
//  SlideAzureController
//
//  Created by Hemming on 2024/10/10.
//

//: import Foundation
import Foundation

//: extension Dictionary {
extension Dictionary {
    //: @inlinable public static func + (lhs: Dictionary, rhs: Dictionary) -> Dictionary {
    @inlinable public static func + (lhs: Dictionary, rhs: Dictionary) -> Dictionary {
        //: var dic = lhs
        var dic = lhs
        //: for (k,v) in rhs {
        for (k,v) in rhs {
            //: dic[k] = v
            dic[k] = v
        }
        //: return dic
        return dic
    }
    
    //: @inlinable public static func += (lhs: inout Dictionary, rhs: Dictionary) {
    @inlinable public static func += (lhs: inout Dictionary, rhs: Dictionary) {
        //: for (k,v) in rhs {
        for (k,v) in rhs {
            //: lhs[k] = v
            lhs[k] = v
        }
    }
    
    /// 从JSON字符串创建字典
    /// - Parameter jsonString: JSON字符串
    /// - Returns: 解析后的字典，失败返回nil
    //: public static func dictionary(withJsonString jsonString: String?) -> [String: Any]? {
    public static func theSeek(withJsonString jsonString: String?) -> [String: Any]? {
        //: guard let jsonString = jsonString else {
        guard let jsonString = jsonString else {
            //: return nil
            return nil
        }
        //: guard let jsonData = jsonString.data(using: .utf8) else {
        guard let jsonData = jsonString.data(using: .utf8) else {
            //: return nil
            return nil
        }
        //: do {
        do {
            //: let dic = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
            let dic = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
            //: return dic as? [String: Any]
            return dic as? [String: Any]
        //: } catch {
        } catch {
            // NSLog("json解析失败：\(error) \nfor:\(jsonString)")
            //: return nil
            return nil
        }
    }
}

// MARK: - 为了兼容OC代码，保留NSDictionary的扩展
//: extension NSDictionary {
extension NSDictionary {
    /// 从JSON字符串创建字典（兼容OC）
    /// - Parameter jsonString: JSON字符串
    /// - Returns: 解析后的字典，失败返回nil
    //: @objc public class func dictionary(withJsonString jsonString: String?) -> NSDictionary? {
    @objc public class func dictionaryToTitle(withJsonString jsonString: String?) -> NSDictionary? {
        //: guard let result = Dictionary<String, Any>.dictionary(withJsonString: jsonString) else {
        guard let result = Dictionary<String, Any>.theSeek(withJsonString: jsonString) else {
            //: return nil
            return nil
        }
        //: return NSDictionary(dictionary: result)
        return NSDictionary(dictionary: result)
    }
}