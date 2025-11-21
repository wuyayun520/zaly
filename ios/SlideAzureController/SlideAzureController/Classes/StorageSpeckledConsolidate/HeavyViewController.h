// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "AbTalkingChatMsgBaseModel.h"
#import "ServiceModel.h"

/******************************************************************************
 *
 *  本文件声明了用于实现消息收发逻辑的控制器类。
 *  消息控制器负责统一显示您发送/收到的消息，同时在您对这些消息进行交互（点击/长按等）时提供响应回调。
 *  消息控制器还负责对您发送的消息进行统一的数据处理，使其变为可以通过 IM SDK 发送的数据格式并进行发送。
 *  也就是说，当您使用本控制器时，您可以省去很大部分的数据处理上的工作，从而能够更快捷、更方便的接入 IM SDK。
 *
 *  PronatorDisabled 协议和 HeavyViewController 类。
 *  HeavyViewController 是聊天界面的核心类，负责聊天界面大部分核心业务逻辑的处理与运算。
 *  该类的详细属性与功能，请参展本文件中 HeavyViewController 的具体声明。
 *
 ******************************************************************************/



//: @class TUIMessageController;
@class HeavyViewController;
//: @class WireView;
@class WireView;
//: @class SparkCellData;
@class SparkCellData;
//: @class V2TIMMessage;
@class V2TIMMessage;

//: typedef NS_ENUM(NSInteger, TalkingIMChatType) {
typedef NS_ENUM(NSInteger, TalkingIMChatType) {
    //: TalkingIMChatType_unDefined = 0,
    TalkingIMChatType_unDefined = 0,
    //: TalkingIMChatType_private = 1,
    TalkingIMChatType_private = 1,
    //: TalkingIMChatType_group = 2,
    TalkingIMChatType_group = 2,
    //: TalkingIMChatType_system = 3,
    TalkingIMChatType_system = 3,
    //: TalkingIMChatType_service = 4, 
    TalkingIMChatType_service = 4, // 官方客服
    //: TalkingIMChatType_meeting = 5, 
    TalkingIMChatType_meeting = 5, // 公共聊天室
    //: TalkingIMChatType_moreMsg = 6, 
    TalkingIMChatType_moreMsg = 6, // 更多消息（超过5天未回复）
//: };
};

/**
 *  消息状态枚举
 */
//: typedef NS_ENUM(NSUInteger, TMsgStatus) {
typedef NS_ENUM(NSUInteger, TMsgStatus) {
    //: Msg_Status_Init, 
    Msg_Status_Init, //消息创建
    //: Msg_Status_Sending, 
    Msg_Status_Sending, //消息发送中
    //: Msg_Status_Sending_2, 
    Msg_Status_Sending_2, //消息发送中_2，推荐使用
    //: Msg_Status_Succ, 
    Msg_Status_Succ, //消息发送成功
    //: Msg_Status_Fail, 
    Msg_Status_Fail, //消息发送失败
//: };
};

/////////////////////////////////////////////////////////////////////////////////
//
//                         PronatorDisabled
//
/////////////////////////////////////////////////////////////////////////////////

/**
 * 我们不建议您直接修改 MessageController 中的回调委托。
 * MessageController 的回调委托在 ChatController 中实现，负责大部分核心功能。如果您对此修改，可能会对一系列回调委托的调用关系造成破坏。
 * 如果您需要实现 onNewMessage、onShowMessageData 的回调，您可以参照 Section\Chat\TUIChatController.h 中的链接与注释进行调用并实现自定义消息处理。
 */
//: @protocol TMessageControllerDelegate <NSObject>
@protocol PronatorDisabled <NSObject>

//: @optional
@optional
/**
 *  控制器点击回调
 *  您可以通过该回调实现：重置 InputControoler，收起键盘。
 *
 *  @param controller 委托者，消息控制器
 */
//: - (void)didTapInMessageController:(TUIMessageController *)controller;
- (void)sinceWithout:(HeavyViewController *)controller;

/**
 *  隐藏长按菜单后的回调函数
 *  您可以根据您的需求个性化实现该委托函数。
 *
 *  @param controller 委托者，消息控制器
 */
//: - (void)didHideMenuInMessageController:(TUIMessageController *)controller;
- (void)imageSave:(HeavyViewController *)controller;

/**
 *  显示长按菜单前的回调函数
 *  您可以根据您的需求个性化实现该委托函数。
 *
 *  @param controller 委托者，消息控制器
 *  @param view 控制器所在view
 */
//: - (BOOL)messageController:(TUIMessageController *)controller willShowMenuInCell:(UIView *)view;
- (BOOL)conversation:(HeavyViewController *)controller license:(UIView *)view;

/**
 *  收到新消息的函数委托
 *  您可以通过该回调实现：根据传入的 data 初始化新消息并进行新消息提醒。
 *
 *  @param controller 委托者，消息控制器
 *  @param data 新消息
 *
 *  @return 返回需要显示的新消息单元。该消息单元的信息与数据，来自于参数中的 data 参数。
 */
//: - (SparkCellData *)messageController:(TUIMessageController *)controller onNewMessage:(V2TIMMessage *)data;
- (SparkCellData *)receive:(HeavyViewController *)controller action:(V2TIMMessage *)data;

/**
 *  显示消息数据委托
 *  您可以通过该回调实现：根据传入的 data 初始化消息气泡并进行显示
 *
 *  @param controller 委托者，消息控制器
 *  @param data 需要显示的消息数据
 *
 *  @return 返回需要显示的消息单元。该消息单元的信息与数据，来自于参数中的 data 参数。
 */
//: - (WireView *)messageController:(TUIMessageController *)controller onShowMessageData:(SparkCellData *)data;
- (WireView *)burnManager:(HeavyViewController *)controller layerSuite:(SparkCellData *)data;

/**
 *  点击消息头像委托
 *  您可以通过该回调实现：跳转到对应用户的详细信息界面。
 *  1、首先拉取用户信息，如果该用户是当前使用者好友，则初始化相应的好友信息界面并进行跳转。
 *  2、如果该用户不是当前使用者好友，则初始化相应的添加好友界面并进行跳转。
 *
 *  @param controller 委托者，消息控制器
 *  @param cell 所点击的消息单元
 */
//: - (void)messageController:(TUIMessageController *)controller onSelectMessageAvatar:(WireView *)cell;
- (void)white:(HeavyViewController *)controller phoneMessageAvatar:(WireView *)cell;

/**
 *  点击消息内容委托
 *
 *  @param controller 委托者，消息控制器
 *  @param cell 所点击的消息单元
 */
//: - (void)messageController:(TUIMessageController *)controller onSelectMessageContent:(WireView *)cell;
- (void)dimension:(HeavyViewController *)controller waveAngle:(WireView *)cell;

/**
 * 长按消息内容弹窗菜单栏，点击菜单选项
 *
 * @param controller 委托者，消息控制器
 * @param menuType 点击的菜单类型，支持的类型: 0 - 多选；1 - 转发。
 * @param data 当前长按的消息数据
 */
//: - (void)messageController:(TUIMessageController *)controller onSelectMessageMenu:(NSInteger)menuType withData:(SparkCellData *)data;
- (void)component:(HeavyViewController *)controller color:(NSInteger)menuType path:(SparkCellData *)data;
/**
 *  点击入群消息中用户名称时的回调委托。例如：“小明加入群组”，本回调在用户点击“小明”时触发。
 *
 *  @param controller 委托者，消息控制器
 *  @param cell 所点击的入群消息单元
 */


/*重发*/
//: - (void)messageController:(TUIMessageController *)controller onRetryMessageContent:(WireView *)cell;
- (void)first:(HeavyViewController *)controller plus:(WireView *)cell;

/*引用*/
//: - (void)messageController:(TUIMessageController *)controller onReplyMessage:(SparkCellData *)cellData;
- (void)send:(HeavyViewController *)controller pullUp:(SparkCellData *)cellData;

/*点击引用*/

//: - (void)messageController:(TUIMessageController *)controller onClickReplyMessage:(SparkCellData *)cellData;
- (void)fragment:(HeavyViewController *)controller pressDoing:(SparkCellData *)cellData;

//: @end
@end

/////////////////////////////////////////////////////////////////////////////////
//
//                         HeavyViewController
//
/////////////////////////////////////////////////////////////////////////////////

/**
 * 腾讯云 TUIKit
 *  【模块名称】HeavyViewController
 *  【功能说明】消息控制器，负责实现消息的接收、发送、显示等一系列业务逻辑。
 * 本类提供了接收/显示新消息、显示/隐藏菜单、点击消息头像等交互操作的回调接口。
 * 同时本类提供了图像、视频、文件信息的发送功能，直接整合调用了 IM SDK 实现发送功能。
 */
//: @interface TUIMessageController : UITableViewController
@interface HeavyViewController : UITableViewController

/**
 *  执行 PronatorDisabled 协议的委托
 */
//: @property (nonatomic, weak) id<TMessageControllerDelegate> delegate;
@property (nonatomic, weak) id<PronatorDisabled> delegate;



/**
 *  滚动至底部
 *  通过对 tableView 进行设置，使当前视图滚动至底部。
 *  建议在需要返回至消息视图底部或者需要浏览最新信息时调用，比如每次发送消息、接收消息、撤回消息、删除消息时。
 *  本函数的实现调用了 tableView 的滑动函数：
 * <pre>
 *  [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
 * </pre>
 *  其中第一个参数出现的 uiMsgs，即当前消息控制器中已接收到并展示的消息数组。
 *
 *  @param animate 动画标志位。YES：启用动画；NO：禁用动画。
 */
//: - (void)scrollToBottom:(BOOL)animate;
- (void)input:(BOOL)animate;



/// 当前会话对方Id
//: @property (nonatomic, copy) NSString *targetID;
@property (nonatomic, copy) NSString *targetID;
/// -1：未充值且有首充优惠；0：未充值没有首充优惠；1：已充值过；
//: @property (nonatomic, assign) NSInteger isRecharge;
@property (nonatomic, assign) NSInteger isRecharge;

/**
 * 批量删除消息
 *
 * @param uiMsgs 待删除的数据
 */
//- (void)deleteMessages:(NSArray<SparkCellData *> *)uiMsgs;

//: #pragma mark - public属性及方法，子类及扩展类可用，主要用于V2TUIMessageController
#pragma mark - public属性及方法，子类及扩展类可用，主要用于V2TUIMessageController
/**
 * 用来显示时间cell
 */
//: @property (nonatomic, strong) V2TIMMessage *msgForDate;
@property (nonatomic, strong) V2TIMMessage *msgForDate;
/**
 * 是否第一次加载
 */
//: @property (nonatomic, assign) BOOL firstLoad;
@property (nonatomic, assign) BOOL firstLoad;

/**
 * 当前数据源
 */
//: @property (nonatomic, strong) NSMutableArray *uiMsgs;
@property (nonatomic, strong) NSMutableArray *uiMsgs;

/**
 * 当前cell高度缓存
 */
//: @property (nonatomic, strong) NSMutableArray *heightCache;
@property (nonatomic, strong) NSMutableArray *heightCache;

/**
 * 下拉指示器
 */
//: @property (nonatomic, strong, readonly) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong, readonly) UIActivityIndicatorView *indicatorView;

/**
 * 批量将V2TIMessage转换成SparkCellData
 */
//: - (NSMutableArray *)transUIMsgFromIMMsg:(NSArray *)msgs;
- (NSMutableArray *)action:(NSArray *)msgs;

/**
 * 没有更多消息
 */
//: @property (nonatomic, assign, readonly) BOOL noMoreMsg;
@property (nonatomic, assign, readonly) BOOL noMoreMsg;


///当前对话类型
//: @property (nonatomic, assign) TalkingIMChatType currentChatType;
@property (nonatomic, assign) TalkingIMChatType currentChatType;

//: #pragma mark - 自定义方法
#pragma mark - 自定义方法
/// 发送消息
/// - Parameter msg: cellData
//: - (void)sendCustomMessage:(SparkCellData *)msg;
- (void)contrast:(SparkCellData *)msg;

/// 修改消息本地数据
/// - Parameters:
///   - extral: 需要保存的数据
///   - msg: cellData
//: - (void)modifyCustomMessageDataWithExtral:(NSDictionary *)extral cellData:(SparkCellData *)msg;
- (void)turbinateBoneData:(NSDictionary *)extral filter:(SparkCellData *)msg;

/// 更改自定义消息发送状态
/// - Parameters:
///   - msg: 消息数据
///   - msgId: 本人发送，接口返回的消息ID（可能为nil）
///   - incon: 收益
///   - status: 消息发送状态
//: - (void)changeCustomMsg:(SparkCellData *)msg msgId:(NSString *)msgId msgIncome:(NSNumber *)income status:(TMsgStatus)status;
- (void)usanceLeftHandednessNetIncreaseThin:(SparkCellData *)msg present:(NSString *)msgId push:(NSNumber *)income direction:(TMsgStatus)status;

/// 更改cellData加载状态
/// - Parameters:
///   - msg: cellData
///   - status: 加载状态
//: - (void)changeCustomMsg:(SparkCellData *)msg status:(TMsgStatus)status;
- (void)face:(SparkCellData *)msg appBy:(TMsgStatus)status;

/// 获取本地自定义消息字典
/// - Parameter msg: 消息数据
//: + (NSMutableDictionary *)getLocalCustomDictionaryWithMessage:(SparkCellData *)msg;
+ (NSMutableDictionary *)oppositenessMessage:(SparkCellData *)msg;

/// 删除失败消息
/// - Parameter msg: cellData
//: - (void)deleteCustomMessage:(SparkCellData *)msg;
- (void)filterAmericanism:(SparkCellData *)msg;

//: #pragma mark - 私密照片
#pragma mark - 私密照片
/// 更改私密照片消息的状态
/// - Parameters:
///   - msg: 图片消息
///   - model: 私密照片模型
//: - (void)changeIntimatePhotoMsg:(SparkCellData *)msg photoModel:(AbTalkingChatMsgIntimatePhotoModel *)model;
- (void)background:(SparkCellData *)msg color:(RootMemberModel *)model;

/// 更改索要礼物消息的状态
//: - (void)changeIntimateGiftMsg:(SparkCellData *)msg;
- (void)judge:(SparkCellData *)msg;

//: #pragma mark - 私密视频
#pragma mark - 私密视频
/// 更改私密视频消息的状态
/// - Parameters:
///   - msg: 视频消息
///   - model: 私密视频模型
//: - (void)changeIntimateVideoMsg:(SparkCellData *)msg videoModel:(AbTalkingChatMsgVideoModel *)model;
- (void)method:(SparkCellData *)msg gravitationalForce:(HistoricalModel *)model;

/// 翻译消息
/// - Parameter cellData: 数据
//: - (void)translateMsgWithCellData:(SparkCellData *)cellData;
- (void)photo:(SparkCellData *)cellData;

//: @end
@end
