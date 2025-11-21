// __DEBUG__
// __CLOSE_PRINT__
/******************************************************************************
 *
 *  本文件声明了 SparkCellData 类。
 *  消息单元数据源作为多种细化数据源的父类，提供了各类消息单元数据源属性与行为的基本模板。
 *  本文件中的数据源类是所有消息数据的基类，各个类型的数据源都继承与本类或者本类的子类。
 *  当您想要自定义消息时，也许将自定义消息的数据源继承于本类或者本类的子类。
 *
 ******************************************************************************/

//: import UIKit
import UIKit

// MARK: - 类型别名和回调
//: public typealias TDownloadProgress = (_ curSize: Int, _ totalSize: Int) -> Void
public typealias TDownloadProgress = (_ curSize: Int, _ totalSize: Int) -> Void
//: public typealias TDownloadResponse = (_ code: Int, _ desc: String, _ path: String) -> Void
public typealias TDownloadResponse = (_ code: Int, _ desc: String, _ path: String) -> Void

// MARK: - 枚举定义
/**
 * 消息翻译状态
 */
//: @objc public enum TMsgTranslateStatus: UInt {
@objc public enum ArtVarArg: UInt {
    //: case MsgTranslate_init = 0          
    case MsgTranslate_init = 0          // 默认状态
    //: case MsgTranslate_translating       
    case MsgTranslate_translating       // 翻译中
    //: case MsgTranslate_fail              
    case MsgTranslate_fail              // 翻译失败
    //: case MsgTranslate_succeed           
    case MsgTranslate_succeed           // 翻译成功
}

/**
 *  消息方向枚举
 *  消息方向影响气泡图标、气泡位置等 UI 风格。
 */
//: @objc public enum TMsgDirection: UInt {
@objc public enum DoingceColumnConvertible: UInt {
    //: case MsgDirectionIncoming = 0   
    case MsgDirectionIncoming = 0   // 消息接收
    //: case MsgDirectionOutgoing       
    case MsgDirectionOutgoing       // 消息发送
}

// MARK: - SparkCellData

/**
 * 【模块名称】SparkCellData
 * 【功能说明】聊天消息单元数据源，配合消息控制器实现消息收发的业务逻辑。
 *  用于存储消息管理与逻辑实现所需要的各类数据与信息。包括消息状态、消息发送者 ID 与头像等一系列数据。
 *  同时信息数据单元整合并调用了 IM SDK，能够通过 SDK 提供的接口实现消息的业务逻辑。
 *  数据源帮助实现了 MVVM 架构，使数据与 UI 进一步解耦，同时使 UI 层更加细化、可定制化。
 */
//: @objcMembers public class SparkCellData: TCommonCellData {
@objcMembers public class SparkCellData: AccumulationReactiveCompatible {
    
    // MARK: - 基本属性
    
    /// 消息唯一 ID
    //: public var msgID: String?
    public var msgID: String?
    
    /// 拓展信息
    //: public var extraDict: [String: Any]?
    public var extraDict: [String: Any]?
    
    /// 信息发送者 ID
    //: public var identifier: String?
    public var identifier: String?
    
    /// 信息发送者头像 url
    //: public var avatarUrl: URL?
    public var avatarUrl: URL?
    
    /// 信息发送者头像图像
    //: public var avatarImage: UIImage?
    public var avatarImage: UIImage?
    
    /// 信息发送者昵称
    /// 昵称与 ID 不一定相同，在聊天界面默认展示昵称。
    //: public var name: String?
    public var name: String?
    
    /// 名称展示 flag
    /// 好友聊天时，默认不在消息中展示昵称。
    /// 群组聊天时，对于群组内其他用户发送的信息，展示昵称。
    /// true：展示昵称；false：不展示昵称。
    //: public var showName: Bool = false
    public var showName: Bool = false
    
    /// 显示是否选中 flag
    //: public var selected: Bool = false
    public var selected: Bool = false
    
    /// 消息 @ 用户列表
    //: public var atUserList: NSMutableArray = NSMutableArray()
    public var atUserList: NSMutableArray = NSMutableArray()
    
    // MARK: - 消息状态和方向
    
    /// 消息方向
    /// 消息方向影响气泡图标、气泡位置等 UI 风格。
    /// MsgDirectionIncoming 消息接收
    /// MsgDirectionOutgoing 消息发送
    //: public var direction: TMsgDirection = .MsgDirectionIncoming
    public var direction: DoingceColumnConvertible = .MsgDirectionIncoming
    
    /// 消息状态
    /// Msg_Status_Init 消息创建
    /// Msg_Status_Sending 消息发送中
    /// Msg_Status_Sending_2 消息发送中_2，推荐使用
    /// Msg_Status_Succ 消息发送成功
    /// Msg_Status_Fail 消息发送失败
    //: public var status: TMsgStatus = .Msg_Status_Init
    public var status: TMsgStatus = .Msg_Status_Init
    
    /// 收益
    //: public var msgIncome: CGFloat = 0
    public var msgIncome: CGFloat = 0
    
    /// 业务消息类型
    /// messageType 消息类型：1系统消息 2官方小秘 3自动打招呼 4主动打招呼 5付费消息 6普通消息 7主动打招呼未回复 8.主打招呼回复 9，自动打招呼未回复 10, 自动打招呼回复11.发送礼物消息 12互相关注消息 13 取消关注 22家族邀请跳转消息 29问题回答消息
    //: public var messageType: Int = 0
    public var messageType: Int = 0
    
    // MARK: - 翻译相关
    
    /// 消息翻译状态
    /// MsgTranslate_init              默认状态
    /// MsgTranslate_translating  翻译中
    /// MsgTranslate_fail,             翻译失败
    /// MsgTranslate_succeed,    翻译成功
    //: public var translateStatus: TMsgTranslateStatus = .MsgTranslate_init
    public var translateStatus: ArtVarArg = .MsgTranslate_init
    
    /// 翻译后的消息内容
    //: public var translatedContent: String? {
    public var translatedContent: String? {
        //: didSet {
        didSet {
            // 保持与OC版本一致的行为
        }
    }
    
    // MARK: - 消息对象和内容
    
    /// 内层消息
    /// IM SDK 提供的消息对象。内含各种获取消息信息的成员函数，包括获取优先级、获取元素索引、获取离线消息配置信息等。
    //: public var innerMessage: V2TIMMessage!
    public var innerMessage: V2TIMMessage!
    
    /// 消息体内容
    //: public var msgModel: AbTalkingChatMsgBaseModel = AbTalkingChatMsgBaseModel()
    public var msgModel: ServiceModel = ServiceModel()
    
    // MARK: - UI样式属性
    
    /// 昵称字体
    /// 当需要显示昵称时，从该变量设置/获取昵称字体。
    //: public var nameFont: UIFont!
    public var nameFont: UIFont!
    
    /// 昵称颜色
    /// 当需要显示昵称时，从该变量设置/获取昵称颜色。
    //: public var nameColor: UIColor!
    public var nameColor: UIColor!
    
    /// 消息单元布局
    /// 包括消息边距、气泡内边距、头像边距、头像大小等 UI 布局。
    //: public var cellLayout: MessageCellLayout!
    public var cellLayout: MailSpillLayoutReactiveCompatible!
    
    // MARK: - 静态属性（类属性）
    
    /// 接收时昵称颜色
    /// 当需要显示昵称，且消息 direction 为 MsgDirectionIncoming 时使用
    //: private static var _incommingNameColor: UIColor?
    private static var _incommingNameColor: UIColor?
    //: public class var incommingNameColor: UIColor {
    public class var incommingNameColor: UIColor {
        //: get {
        get {
            //: if _incommingNameColor == nil {
            if _incommingNameColor == nil {
                //: _incommingNameColor = UIColor.lightGray
                _incommingNameColor = UIColor.lightGray
            }
            //: return _incommingNameColor!
            return _incommingNameColor!
        }
        //: set {
        set {
            //: _incommingNameColor = newValue
            _incommingNameColor = newValue
        }
    }
    
    /// 接收时昵称字体
    /// 当需要显示昵称，且消息 direction 为 MsgDirectionIncoming 时使用
    //: private static var _incommingNameFont: UIFont?
    private static var _incommingNameFont: UIFont?
    //: public class var incommingNameFont: UIFont {
    public class var incommingNameFont: UIFont {
        //: get {
        get {
            //: if _incommingNameFont == nil {
            if _incommingNameFont == nil {
                //: _incommingNameFont = UIFont.systemFont(ofSize: 14)
                _incommingNameFont = UIFont.systemFont(ofSize: 14)
            }
            //: return _incommingNameFont!
            return _incommingNameFont!
        }
        //: set {
        set {
            //: _incommingNameFont = newValue
            _incommingNameFont = newValue
        }
    }
    
    /// 发送时昵称颜色
    /// 当需要显示昵称，且消息 direction 为 MsgDirectionOutgoing 时使用。
    //: private static var _outgoingNameColor: UIColor?
    private static var _outgoingNameColor: UIColor?
    //: public class var outgoingNameColor: UIColor {
    public class var outgoingNameColor: UIColor {
        //: get {
        get {
            //: if _outgoingNameColor == nil {
            if _outgoingNameColor == nil {
                //: _outgoingNameColor = UIColor.lightGray
                _outgoingNameColor = UIColor.lightGray
            }
            //: return _outgoingNameColor!
            return _outgoingNameColor!
        }
        //: set {
        set {
            //: _outgoingNameColor = newValue
            _outgoingNameColor = newValue
        }
    }
    
    /// 发送时昵称字体
    /// 当需要显示昵称，且消息 direction 为 MsgDirectionOutgoing 时使用。
    //: private static var _outgoingNameFont: UIFont?
    private static var _outgoingNameFont: UIFont?
    //: public class var outgoingNameFont: UIFont {
    public class var outgoingNameFont: UIFont {
        //: get {
        get {
            //: if _outgoingNameFont == nil {
            if _outgoingNameFont == nil {
                //: _outgoingNameFont = UIFont.systemFont(ofSize: 14)
                _outgoingNameFont = UIFont.systemFont(ofSize: 14)
            }
            //: return _outgoingNameFont!
            return _outgoingNameFont!
        }
        //: set {
        set {
            //: _outgoingNameFont = newValue
            _outgoingNameFont = newValue
        }
    }
    
    // MARK: - 初始化方法
    
    /// 根据消息方向（收/发）初始化消息单元
    /// 除了基本消息的初始化外，还包括根据方向设置方向变量、昵称字体等。
    /// 同时为子类提供可继承的行为。
    ///
    /// - Parameter direction: 消息方向。MsgDirectionIncoming：消息接收；MsgDirectionOutgoing：消息发送。
    //: public init(direction: TMsgDirection) {
    public init(direction: DoingceColumnConvertible) {
        //: super.init()
        super.init()
        
        //: self.direction = direction
        self.direction = direction
        //: self.status = .Msg_Status_Init
        self.status = .Msg_Status_Init
        //: self.avatarImage = UIImage.placeImgSquare()
        self.avatarImage = UIImage.regularPolygon()
        //: self.translateStatus = .MsgTranslate_init
        self.translateStatus = .MsgTranslate_init
        
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.cellLayout = MessageCellLayout(isIncomming: true)
            self.cellLayout = MailSpillLayoutReactiveCompatible(isIncomming: true)
            //: self.nameFont = type(of: self).incommingNameFont
            self.nameFont = type(of: self).incommingNameFont
            //: self.nameColor = type(of: self).incommingNameColor
            self.nameColor = type(of: self).incommingNameColor
        //: } else {
        } else {
            //: self.cellLayout = MessageCellLayout(isIncomming: false)
            self.cellLayout = MailSpillLayoutReactiveCompatible(isIncomming: false)
            //: self.nameFont = type(of: self).outgoingNameFont
            self.nameFont = type(of: self).outgoingNameFont
            //: self.nameColor = type(of: self).outgoingNameColor
            self.nameColor = type(of: self).outgoingNameColor
        }
    }
    
    //: public override init() {
    public override init() {
        //: super.init()
        super.init()
    }
    
    // MARK: - 方法实现
    
    /// 内容大小
    /// 返回一个气泡内容的视图大小。
    //: public func contentSize() -> CGSize {
    public func am() -> CGSize {
        //: return CGSize.zero
        return CGSize.zero
    }
    
    /// 计算Cell高度
    //: public override func heightOfWidth(_ width: CGFloat) -> CGFloat {
    public override func skin(_ width: CGFloat) -> CGFloat {
        //: var height = self.cellLayout.messageInsets.top 
        var height = self.cellLayout.messageInsets.top // 气泡与顶部的距离
        //: let containerSize = self.contentSize() 
        let containerSize = self.am() // 实际气泡的高度
        //: height += containerSize.height
        height += containerSize.height
        //: height += self.cellLayout.messageInsets.bottom 
        height += self.cellLayout.messageInsets.bottom // 气泡与底部的距离
        //: let coinH: CGFloat = self.msgIncome > 0 ? 20 : 0
        let coinH: CGFloat = self.msgIncome > 0 ? 20 : 0
        //: height += coinH
        height += coinH
        
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if NameureThen.clip(self.direction,
                                                             //: msgType: self.messageType,
                                                             msgType: self.messageType,
                                                             //: msgTime: self.innerMessage?.timestamp) {
                                                             msgTime: self.innerMessage?.timestamp) {
            //: height += 20
            height += 20
        }
        
        //: if self.showName {
        if self.showName {
            //: height += 22
            height += 22
        }
        
        //: return max(65, height)
        return max(65, height)
    }
} 
