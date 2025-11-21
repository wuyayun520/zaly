
#import <Foundation/Foundation.h>

@interface HourCountoData : NSObject

@end

@implementation HourCountoData

+ (NSData *)HourCountoDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)HourCountoDataToCache:(Byte *)data {
    int boot = data[0];
    Byte jaw = data[1];
    int indorseState = data[2];
    for (int i = indorseState; i < indorseState + boot; i++) {
        int value = data[i] - jaw;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[indorseState + boot] = 0;
    return data + indorseState;
}

+ (NSString *)StringFromHourCountoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HourCountoDataToCache:data]];
}

//: status
+ (NSString *)appItValue {
    /* static */ NSString *appItValue = nil;
    if (!appItValue) {
		NSString *origin = @"0604049077786578797753";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appItValue = [self StringFromHourCountoData:value];
    }
    return appItValue;
}

//: extra
+ (NSString *)mainImplementationFormat {
    /* static */ NSString *mainImplementationFormat = nil;
    if (!mainImplementationFormat) {
		NSString *origin = @"05310bd74eca4c35b8933d96a9a5a39228";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainImplementationFormat = [self StringFromHourCountoData:value];
    }
    return mainImplementationFormat;
}

//: msgIncome
+ (NSString *)showConditionKey {
    /* static */ NSString *showConditionKey = nil;
    if (!showConditionKey) {
		NSString *origin = @"0949068c1fdab6bcb092b7acb8b6ae51";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showConditionKey = [self StringFromHourCountoData:value];
    }
    return showConditionKey;
}

//: Net Error, Try again later
+ (NSString *)userObserveName {
    /* static */ NSString *userObserveName = nil;
    if (!userObserveName) {
		NSString *origin = @"1a4a053fed98afbe6a8fbcbcb9bc766a9ebcc36aabb1abb3b86ab6abbeafbc2d";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userObserveName = [self StringFromHourCountoData:value];
    }
    return userObserveName;
}

//: ArtVarArg
+ (NSString *)user_advanceId {
    /* static */ NSString *user_advanceId = nil;
    if (!user_advanceId) {
		NSString *origin = @"135d0cdcc968523ab1060ffbb1aad0c4b1cfbecbd0c9bed1c2b0d1bed1d2d04a";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_advanceId = [self StringFromHourCountoData:value];
    }
    return user_advanceId;
}

//: TMsgTranslatedContent
+ (NSString *)noti_repeatedName {
    /* static */ NSString *noti_repeatedName = nil;
    if (!noti_repeatedName) {
		NSString *origin = @"155009c4f50d4c30e7a49dc3b7a4c2b1bec3bcb1c4b5b493bfbec4b5bec4df";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_repeatedName = [self StringFromHourCountoData:value];
    }
    return noti_repeatedName;
}

//: msgInfo
+ (NSString *)main_windowLowerContent {
    /* static */ NSString *main_windowLowerContent = nil;
    if (!main_windowLowerContent) {
		NSString *origin = @"07280c5bb98029adee36122c959b8f71968e97eb";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_windowLowerContent = [self StringFromHourCountoData:value];
    }
    return main_windowLowerContent;
}

//: Reply
+ (NSString *)kEnableerId {
    /* static */ NSString *kEnableerId = nil;
    if (!kEnableerId) {
		NSString *origin = @"055e0c816e9ff79a9ada8b4db0c3cecad7f2";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kEnableerId = [self StringFromHourCountoData:value];
    }
    return kEnableerId;
}

//: Trans
+ (NSString *)user_launchMessage {
    /* static */ NSString *user_launchMessage = nil;
    if (!user_launchMessage) {
		NSString *origin = @"0559071f2218f9adcbbac7cc3d";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_launchMessage = [self StringFromHourCountoData:value];
    }
    return user_launchMessage;
}

//: targetText
+ (NSString *)mainSwitchceData {
    /* static */ NSString *mainSwitchceData = nil;
    if (!mainSwitchceData) {
		NSString *origin = @"0a480ba44e6d7366fca890bca9baafadbc9cadc0bc7d";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSwitchceData = [self StringFromHourCountoData:value];
    }
    return mainSwitchceData;
}

//: params
+ (NSString *)showNoticeMsg {
    /* static */ NSString *showNoticeMsg = nil;
    if (!showNoticeMsg) {
		NSString *origin = @"064f059651bfb0c1b0bcc243";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showNoticeMsg = [self StringFromHourCountoData:value];
    }
    return showNoticeMsg;
}

//: Copy
+ (NSString *)const_markerPath {
    /* static */ NSString *const_markerPath = nil;
    if (!const_markerPath) {
		NSString *origin = @"04020c1a8b6dadfc6e862c314571727bbd";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        const_markerPath = [self StringFromHourCountoData:value];
    }
    return const_markerPath;
}

//: From_Account
+ (NSString *)dataContextName {
    /* static */ NSString *dataContextName = nil;
    if (!dataContextName) {
		NSString *origin = @"0c310c0779cfeecc6e71f58077a3a09e90729494a0a69fa574";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dataContextName = [self StringFromHourCountoData:value];
    }
    return dataContextName;
}

//: msgId
+ (NSString *)userReasonKickLeavePath {
    /* static */ NSString *userReasonKickLeavePath = nil;
    if (!userReasonKickLeavePath) {
		NSString *origin = @"054f0bd8b7a4803062c279bcc2b698b330";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userReasonKickLeavePath = [self StringFromHourCountoData:value];
    }
    return userReasonKickLeavePath;
}

//: replayId
+ (NSString *)show_windowId {
    /* static */ NSString *show_windowId = nil;
    if (!show_windowId) {
		NSString *origin = @"08020962b19539a4fa7467726e637b4b66b8";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_windowId = [self StringFromHourCountoData:value];
    }
    return show_windowId;
}

//: Retry
+ (NSString *)show_memberMsg {
    /* static */ NSString *show_memberMsg = nil;
    if (!show_memberMsg) {
		NSString *origin = @"05420a6fd0559d66e68a94a7b6b4bb33";
		NSData *data = [HourCountoData HourCountoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_memberMsg = [self StringFromHourCountoData:value];
    }
    return show_memberMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeavyViewController.m
//  UIKit
//
//  Created by annidyfeng on 2019/7/1.
//  Copyright © 2018年 Tencent. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TUIMessageController.h"
#import "HeavyViewController.h"
//: #import "SlideAzureController/SlideAzureController-Swift.h"
#import "SlideAzureController/SlideAzureController-Swift.h"

//: @interface TUIMessageController () <TMessageCellDelegate>
@interface HeavyViewController () <RelativeDelegate>
//: @property (nonatomic, strong) SparkCellData *menuUIMsg;
@property (nonatomic, strong) SparkCellData *menuUIMsg;
//: @property (nonatomic, strong) SparkCellData *reSendUIMsg;
@property (nonatomic, strong) SparkCellData *reSendUIMsg;
//: @property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
//: @property (nonatomic, assign) BOOL isLoadingMsg;
@property (nonatomic, assign) BOOL isLoadingMsg;
//: @property (nonatomic, assign) BOOL isInVC;
@property (nonatomic, assign) BOOL isInVC;
//: @property (nonatomic, assign) BOOL isActive;
@property (nonatomic, assign) BOOL isActive;
/// 长按菜单是否展示
//: @property (nonatomic, assign) BOOL menuIsShow;
@property (nonatomic, assign) BOOL menuIsShow;
 //资料卡片信息
//: @property (nonatomic, strong) NSArray *waitUserCardDataArray;
@property (nonatomic, strong) NSArray *waitUserCardDataArray;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

///没有更多消息
//: @property (nonatomic, assign) BOOL noMoreMsg;
@property (nonatomic, assign) BOOL noMoreMsg;
///腾讯查消息的节点
//: @property (nonatomic, strong) V2TIMMessage *msgForGet;
@property (nonatomic, strong) V2TIMMessage *msgForGet;


//: @end
@end

//: @implementation TUIMessageController
@implementation HeavyViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setupViews];
    [self info];
    //: self.isActive = YES;
    self.isActive = YES;
}


//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: self.isInVC = YES;
    self.isInVC = YES;
    //: [self readedReport];
    [self display];
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [self readedReport];
    [self display];
    //: self.isInVC = NO;
    self.isInVC = NO;
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
}

//: - (void)readedReport {
- (void)display {
    //: if (self.isInVC && self.isActive) {
    if (self.isInVC && self.isActive) {
        //: if (self.currentChatType == TalkingIMChatType_group ||
        if (self.currentChatType == TalkingIMChatType_group ||
            //: self.currentChatType == TalkingIMChatType_meeting) {
            self.currentChatType == TalkingIMChatType_meeting) {
            //: if (self.targetID.length > 0) {
            if (self.targetID.length > 0) {
                //: [[V2TIMManager sharedInstance] markGroupMessageAsRead:self.targetID succ:^{
                [[V2TIMManager sharedInstance] markGroupMessageAsRead:self.targetID succ:^{

                //: } fail:^(int code, NSString *msg) {
                } fail:^(int code, NSString *msg) {

                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (self.targetID.length > 0) {
            if (self.targetID.length > 0) {
                //: [[V2TIMManager sharedInstance] markC2CMessageAsRead:self.targetID succ:^{
                [[V2TIMManager sharedInstance] markC2CMessageAsRead:self.targetID succ:^{
                    //: NSLog(@"");
                //: } fail:^(int code, NSString *msg) {
                } fail:^(int code, NSString *msg) {
                    //: NSLog(@"");
                //: }];
                }];
            }
        }




    }
}

//: - (void)limitReadReport {
- (void)heatBarrierTopReport {
    //: static uint64_t lastTs = 0;
    static uint64_t lastTs = 0;
    //: uint64_t curTs = [[NSDate date] timeIntervalSince1970];
    uint64_t curTs = [[NSDate date] timeIntervalSince1970];
    // 超过 1s && 非首次 立即上报已读
    //: if (curTs - lastTs >= 1 && lastTs) {
    if (curTs - lastTs >= 1 && lastTs) {
        //: lastTs = curTs;
        lastTs = curTs;
        //: [self readedReport];
        [self display];
    //: } else {
    } else {
        // 低于 1s || 首次  延迟 1s 合并上报
        //: static BOOL delayReport = NO;
        static BOOL delayReport = NO;
        //: if (delayReport) {
        if (delayReport) {
            //: return;
            return;
        }
        //: delayReport = YES;
        delayReport = YES;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.5 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.5 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [self readedReport];
            [self display];
            //: delayReport = NO;
            delayReport = NO;
        //: });
        });
    }
}

//: - (void)applicationBecomeActive {
- (void)showActive {
    //: self.isActive = YES;
    self.isActive = YES;
    //: [self readedReport];
    [self display];
}

//: - (void)applicationEnterBackground {
- (void)circleBackground {
    //: self.isActive = NO;
    self.isActive = NO;
}

//: - (void)setupViews {
- (void)info {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationBecomeActive)
                                             selector:@selector(showActive)
                                                 //: name:UIApplicationDidBecomeActiveNotification
                                                 name:UIApplicationDidBecomeActiveNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationBecomeActive)
                                             selector:@selector(showActive)
                                                 //: name:UIApplicationWillEnterForegroundNotification
                                                 name:UIApplicationWillEnterForegroundNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationEnterBackground)
                                             selector:@selector(circleBackground)
                                                 //: name:UIApplicationDidEnterBackgroundNotification
                                                 name:UIApplicationDidEnterBackgroundNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(menuWillHide:)
                                             selector:@selector(waitted:)
                                                 //: name:UIMenuControllerWillHideMenuNotification
                                                 name:UIMenuControllerWillHideMenuNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onNewMessage:) name:[NSNotificationTool getChatNewMsgNoti] object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pullIn:) name:[NotificationReactiveCompatible spanReply] object:nil];

    //: self.tableView.scrollsToTop = NO;
    self.tableView.scrollsToTop = NO;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];


    //: _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    //: _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    //: self.tableView.tableHeaderView = _indicatorView;
    self.tableView.tableHeaderView = _indicatorView;

    //: _heightCache = [NSMutableArray array];
    _heightCache = [NSMutableArray array];
    //: _uiMsgs = [[NSMutableArray alloc] init];
    _uiMsgs = [[NSMutableArray alloc] init];
    //: _firstLoad = YES;
    _firstLoad = YES;
}

//: - (void)setTargetID:(NSString *)targetID{
- (void)setTargetID:(NSString *)targetID{
    //: _targetID = targetID;
    _targetID = targetID;
    //: if (self.currentChatType == TalkingIMChatType_meeting) {
    if (self.currentChatType == TalkingIMChatType_meeting) {
        //: self.tableView.tableHeaderView = nil;
        self.tableView.tableHeaderView = nil;
    }
    //: [self loadMessage];
    [self roundPath];
}

//: #pragma mark --- 拉取消息
#pragma mark --- 拉取消息
//: - (void)loadMessage {
- (void)roundPath {
    //: if(_isLoadingMsg || _noMoreMsg) {
    if(_isLoadingMsg || _noMoreMsg) {
        //: return;
        return;
    }

    //: _isLoadingMsg = YES;
    _isLoadingMsg = YES;
    //: int msgCount = 20;
    int msgCount = 20;
    //: if (self.currentChatType == TalkingIMChatType_meeting) { 
    if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室一次性获取50条，不分页
        //: msgCount = 50;
        msgCount = 50;
    }

    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;;
    //: if (self.currentChatType == TalkingIMChatType_group ||
    if (self.currentChatType == TalkingIMChatType_group ||
        //: self.currentChatType == TalkingIMChatType_meeting) { 
        self.currentChatType == TalkingIMChatType_meeting) { // 群聊
        //: [[V2TIMManager sharedInstance] getGroupHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
        [[V2TIMManager sharedInstance] getGroupHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: [self getMessages:msgs msgCount:msgCount];
            [self messagesTablePoint:msgs realise:msgCount];
            //: if (self.currentChatType == TalkingIMChatType_meeting) { 
            if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室不分页
                //: self.noMoreMsg = YES;
                self.noMoreMsg = YES;
            }

        //: } fail:^(int code, NSString *msg) {
        } fail:^(int code, NSString *msg) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: self.isLoadingMsg = NO;
            self.isLoadingMsg = NO;
            //: if ([AfterThen shared].isConnection) { 
            if ([AfterThen shared].isConnection) { //推送点进来会报错
                //: NSString *str = [@"Net Error, Try again later" localized];
                NSString *str = [[HourCountoData userObserveName] uniteLocalized];
                //: [self func__showStatusBarErrorMsgWithShowMsg:[str localized]];
                [self enableceWithShowMsg:[str uniteLocalized]];
            }
            //: [self.indicatorView stopAnimating];
            [self.indicatorView stopAnimating];
        //: }];
        }];

    //: } else if (self.currentChatType == TalkingIMChatType_private ||
    } else if (self.currentChatType == TalkingIMChatType_private ||
               //: self.currentChatType == TalkingIMChatType_system ||
               self.currentChatType == TalkingIMChatType_system ||
               //: self.currentChatType == TalkingIMChatType_service) { 
               self.currentChatType == TalkingIMChatType_service) { // 单聊
        //: [[V2TIMManager sharedInstance] getC2CHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
        [[V2TIMManager sharedInstance] getC2CHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: [self getMessages:msgs msgCount:msgCount];
            [self messagesTablePoint:msgs realise:msgCount];

        //: } fail:^(int code, NSString *msg) {
        } fail:^(int code, NSString *msg) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: self.isLoadingMsg = NO;
            self.isLoadingMsg = NO;
            //: if ([AfterThen shared].isConnection) {
            if ([AfterThen shared].isConnection) {
                //: if (DismissReactiveCompatible.share.appStatus == 0) {
                if (DismissReactiveCompatible.share.appStatus == 0) {
                    //: NSString *str = [@"Net Error, Try again later" localized];
                    NSString *str = [[HourCountoData userObserveName] uniteLocalized];
                    //: [self func__showStatusBarErrorMsgWithShowMsg:[str localized]];
                    [self enableceWithShowMsg:[str uniteLocalized]];
                }
            }
            //: [self.indicatorView stopAnimating];
            [self.indicatorView stopAnimating];
        //: }];
        }];

    //: } else {
    } else {
        //: NSLog(@"error");
    }
}

//: - (void)getMessages:(NSArray *)msgs msgCount:(int)msgCount {
- (void)messagesTablePoint:(NSArray *)msgs realise:(int)msgCount {

    //: if (msgs.count != 0) {
    if (msgs.count != 0) {
        //TX的节点
        //: self.msgForGet = msgs[msgs.count - 1];
        self.msgForGet = msgs[msgs.count - 1];
    }
    //拉取完毕
    //: if (msgs.count < msgCount) {
    if (msgs.count < msgCount) {
        //: self.noMoreMsg = YES;
        self.noMoreMsg = YES;
        //: self.indicatorView.height = 0;
        self.indicatorView.height = 0;
    }
    //UI-msgs
    //过滤消息
    //: NSMutableArray *array = [NSMutableArray arrayWithArray:msgs];
    NSMutableArray *array = [NSMutableArray arrayWithArray:msgs];
    //: for (NSInteger k = array.count - 1; k >= 0; --k) {
    for (NSInteger k = array.count - 1; k >= 0; --k) {
        //: V2TIMMessage *msg = array[k];
        V2TIMMessage *msg = array[k];
        //: if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            //: continue;
            continue;
        }
        //由后台发送的消息，如果是本人的，要过滤,避免和本地消息重复
        //: NSString *extra = [[NSString alloc]initWithData:msg.customElem.data encoding:NSUTF8StringEncoding];
        NSString *extra = [[NSString alloc]initWithData:msg.customElem.data encoding:NSUTF8StringEncoding];
        //: NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
        NSDictionary *dic = [NSDictionary dictionaryToTitleWithJsonString:extra];
        //: NSString *userId = [NSString stringWithFormat:@"%@",dic[@"From_Account"]];
        NSString *userId = [NSString stringWithFormat:@"%@",dic[[HourCountoData dataContextName]]];
        //: if ([userId isEqualToString:DismissReactiveCompatible.share.loginUserMode.userID]) {
        if ([userId isEqualToString:DismissReactiveCompatible.share.loginUserMode.userID]) {
            //: [array removeObject:msg];
            [array removeObject:msg];
            //: continue;
            continue;
        }
    }

    //: msgs = [array copy];
    msgs = [array copy];
    //: NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:msgs];
    NSMutableArray *uiMsgs = [self action:msgs];

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        // 记录新数据加载前偏移量
        //: CGFloat oldContentH = self.tableView.contentSize.height;
        CGFloat oldContentH = self.tableView.contentSize.height;
        //: CGFloat oldOffset = self.tableView.contentOffset.y;
        CGFloat oldOffset = self.tableView.contentOffset.y;

        // 更新数据源并刷新表格
        //: if (uiMsgs.count > 0) {
        if (uiMsgs.count > 0) {
            //: NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, uiMsgs.count)];
            NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, uiMsgs.count)];
            //: [self.uiMsgs insertObjects:uiMsgs atIndexes:indexSet];
            [self.uiMsgs insertObjects:uiMsgs atIndexes:indexSet];
            //: [self.heightCache removeAllObjects];
            [self.heightCache removeAllObjects];
        }
        //: [self.tableView reloadData];
        [self.tableView reloadData];
        //: [self.tableView layoutIfNeeded];
        [self.tableView layoutIfNeeded];

        //: if (uiMsgs.count > 0) {
        if (uiMsgs.count > 0) {
            //: CGFloat currContentH = self.tableView.contentSize.height;
            CGFloat currContentH = self.tableView.contentSize.height;
            //: if (self.firstLoad) { 
            if (self.firstLoad) { // 首次加载 滚动到底部
                //: CGFloat frameHeight = self.tableView.frame.size.height;
                CGFloat frameHeight = self.tableView.frame.size.height;
                //: if (currContentH > frameHeight) {
                if (currContentH > frameHeight) {
                    //: [self.tableView setContentOffset:CGPointMake(0, currContentH - frameHeight) animated:NO];
                    [self.tableView setContentOffset:CGPointMake(0, currContentH - frameHeight) animated:NO];
                }

            //: } else { 
            } else { // 加载更多 保持原位置
                //: [self.tableView setContentOffset:CGPointMake(0, oldOffset + (currContentH - oldContentH)) animated:NO];
                [self.tableView setContentOffset:CGPointMake(0, oldOffset + (currContentH - oldContentH)) animated:NO];
            }
        }

        //: self.isLoadingMsg = NO;
        self.isLoadingMsg = NO;
        //: [self.indicatorView stopAnimating];
        [self.indicatorView stopAnimating];
        //: self.firstLoad = NO;
        self.firstLoad = NO;
    //: });
    });
}

//: - (void)printfTXMsgs:(NSArray *)msgs {
- (void)printfSmoothMsgs:(NSArray *)msgs {


    //: NSInteger index = 0;
    NSInteger index = 0;
    //: for (V2TIMMessage *msgModel in msgs) {
    for (V2TIMMessage *msgModel in msgs) {
        //: if ([msgModel isKindOfClass:[V2TIMMessage class]]) {
        if ([msgModel isKindOfClass:[V2TIMMessage class]]) {
            //: NSString *extra = [[NSString alloc]initWithData:msgModel.customElem.data encoding:NSUTF8StringEncoding];
            NSString *extra = [[NSString alloc]initWithData:msgModel.customElem.data encoding:NSUTF8StringEncoding];
            //: NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
            NSDictionary *dic = [NSDictionary dictionaryToTitleWithJsonString:extra];

            //: BOOL direction = msgModel.isSelf;
            BOOL direction = msgModel.isSelf;

            //            if ([dic[@"rYMsgType"] isEqualToString:@"GJ:Sess:AutoGreet:TxtCustom"] || [dic[@"content"] isEqualToString:@"111"]) {
            //                direction = [dic[@"extra"][@"msgInfo"][@"changeDirection"] boolValue];
            //
            //                if (direction) {
            //                    NSLog(@"自动打招呼消息 右侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                } else {
            //                    NSLog(@"自动打招呼消息 左侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                }
            //            }


            //            NSLog(@"dic = %@, time = %lld",dic,msgModel.timestamp.timeIntervalSince1970);
        }
        //: index ++;
        index ++;
    }


}

//: - (void)onNewMessage:(NSNotification *)notification
- (void)pullIn:(NSNotification *)notification
{
    //: V2TIMMessage *msg = notification.object;
    V2TIMMessage *msg = notification.object;

    //: if ([msg.sender isEqualToString:DismissReactiveCompatible.share.loginUserMode.userID]) {
    if ([msg.sender isEqualToString:DismissReactiveCompatible.share.loginUserMode.userID]) {
        //过滤本人发送的消息
        //: return;
        return;
    }

    //: NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:@[msg]];
    NSMutableArray *uiMsgs = [self action:@[msg]];
    //: if (uiMsgs.count > 0) {
    if (uiMsgs.count > 0) {
        //生成需要插入的 index。即行号从 _uiMsgs.count - 1到 _uiMsgs.count + uiMsgs.count +1。 section 恒为 0。
        //: [self.tableView beginUpdates];
        [self.tableView beginUpdates];
        //: for (SparkCellData *uiMsg in uiMsgs) {
        for (SparkCellData *uiMsg in uiMsgs) {
            //: [self.uiMsgs addObject:uiMsg];
            [self.uiMsgs addObject:uiMsg];
            //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
            [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                                  //: withRowAnimation:UITableViewRowAnimationFade];
                                  withRowAnimation:UITableViewRowAnimationFade];
        }
        //: [self.tableView endUpdates];
        [self.tableView endUpdates];
        // 查看历史消息的时候根据当前 contentOffset 判断是否需要滑动到底部
        //: if ((self.tableView.contentSize.height - self.tableView.contentOffset.y) < [DepictionThen getScreenHeight] * 1.5) {
        if ((self.tableView.contentSize.height - self.tableView.contentOffset.y) < [DepictionThen existHeight] * 1.5) {
            //: [self scrollToBottom:YES];
            [self input:YES];
        }
        //: [self limitReadReport];
        [self heatBarrierTopReport];
    }
}

//: - (NSMutableArray *)transUIMsgFromIMMsg:(NSArray *)msgs
- (NSMutableArray *)action:(NSArray *)msgs
{
    //: NSMutableArray *uiMsgs = [NSMutableArray array];
    NSMutableArray *uiMsgs = [NSMutableArray array];
    //: for (NSInteger k = msgs.count - 1; k >= 0; --k) {
    for (NSInteger k = msgs.count - 1; k >= 0; --k) {
        //: V2TIMMessage *msg = msgs[k];
        V2TIMMessage *msg = msgs[k];
        //: if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            //: continue;
            continue;
        }

        // 时间信息
        //: CalendarThen *dateMsg = [self transSystemMsgFromDate:msg.timestamp];
        CalendarThen *dateMsg = [self list:msg.timestamp];
        // 外部自定义的消息
        //: if ([self.delegate respondsToSelector:@selector(messageController:onNewMessage:)]) {
        if ([self.delegate respondsToSelector:@selector(receive:action:)]) {
            //: SparkCellData *data = [self.delegate messageController:self onNewMessage:msg];
            SparkCellData *data = [self.delegate receive:self action:msg];
            //: if(msg.groupID.length > 0 && ![data isKindOfClass:[CalendarThen class]]){
            if(msg.groupID.length > 0 && ![data isKindOfClass:[CalendarThen class]]){
                //: data.showName = YES;
                data.showName = YES;
            }

            //: if (data) {
            if (data) {

                //: data.innerMessage = msg;
                data.innerMessage = msg;
                //: data.msgID = msg.msgID;
                data.msgID = msg.msgID;
                //: switch (msg.status) {
                switch (msg.status) {
                    //: case 1: 
                    case 1: // V2TIM_MSG_STATUS_SENDING
                        //: data.status = Msg_Status_Sending_2;
                        data.status = Msg_Status_Sending_2;
                        //: break;
                        break;
                    //: case 2: 
                    case 2: // V2TIM_MSG_STATUS_SEND_SUCC
                        //: data.status = Msg_Status_Succ;
                        data.status = Msg_Status_Succ;
                        //: break;
                        break;
                    //: case 3: 
                    case 3: // V2TIM_MSG_STATUS_SEND_FAIL
                        //: data.status = Msg_Status_Fail;
                        data.status = Msg_Status_Fail;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (dateMsg) {
                if (dateMsg) {
                    //: _msgForDate = msg;
                    _msgForDate = msg;
                    //: [uiMsgs addObject:dateMsg];
                    [uiMsgs addObject:dateMsg];
                }
                //: [uiMsgs addObject:data];
                [uiMsgs addObject:data];
                //: continue;
                continue;
            }
        }
    }
    //: return uiMsgs;
    return uiMsgs;
}


//: #pragma mark - Table view data source
#pragma mark - Table view data source
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _uiMsgs.count;
    return _uiMsgs.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: SparkCellData *data = _uiMsgs[indexPath.row];
    SparkCellData *data = _uiMsgs[indexPath.row];

    //: CGFloat height = 0;
    CGFloat height = 0;
    //: if(_heightCache.count > indexPath.row) {
    if(_heightCache.count > indexPath.row) {
        //: height = [_heightCache[indexPath.row] floatValue];
        height = [_heightCache[indexPath.row] floatValue];
    }
    //    缓存存在问题待处理
    //    if (height > 0 && ![data isKindOfClass:[AbTalkingChatMatchMsgCellData class]] && ![data isKindOfClass:[TalkingChatTipsMsgCellData class]]) {
    //        return height;
    //    }
    //: height = [data heightOfWidth:[UIScreen mainScreen].bounds.size.height];
    height = [data skin:[UIScreen mainScreen].bounds.size.height];
    //: [_heightCache insertObject:[NSNumber numberWithFloat:height] atIndex:indexPath.row];
    [_heightCache insertObject:[NSNumber numberWithFloat:height] atIndex:indexPath.row];
    //: return height;
    return height;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: SparkCellData *data;
    SparkCellData *data;
    //: data = _uiMsgs[indexPath.row];
    data = _uiMsgs[indexPath.row];

    //: WireView *cell = nil;
    WireView *cell = nil;
    //: if ([self.delegate respondsToSelector:@selector(messageController:onShowMessageData:)]) {
    if ([self.delegate respondsToSelector:@selector(burnManager:layerSuite:)]) {
        //: cell = [self.delegate messageController:self onShowMessageData:data];
        cell = [self.delegate burnManager:self layerSuite:data];
        //: if (cell) {
        if (cell) {
            //: cell.delegate = self;
            cell.delegate = self;
            //: return cell;
            return cell;
        }
    }
    //: if (!data.reuseId) {
    if (!data.reuseId) {

        //: if([data isKindOfClass:[CalendarThen class]]) {
        if([data isKindOfClass:[CalendarThen class]]) {
            //: data.reuseId = WireView.TSystemMessageCell_ReuseId;
            data.reuseId = WireView.TSystemMessageCell_ReuseId;
        }
        //: else {
        else {
            //: return [WireView new];
            return [WireView new];
        }
    }
    //: cell = [tableView dequeueReusableCellWithIdentifier:data.reuseId forIndexPath:indexPath];
    cell = [tableView dequeueReusableCellWithIdentifier:data.reuseId forIndexPath:indexPath];
    //: if (!cell) {
    if (!cell) {

        //: cell = [[WireView alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:data.reuseId];
        cell = [[WireView alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:data.reuseId];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: [cell fillWith:_uiMsgs[indexPath.row]];
    [cell namePostWith:_uiMsgs[indexPath.row]];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

//: - (void)scrollToBottom:(BOOL)animate {
- (void)input:(BOOL)animate {
    //: if (_uiMsgs.count > 0 && self.menuIsShow == NO) {
    if (_uiMsgs.count > 0 && self.menuIsShow == NO) {
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self->_uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
            [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self->_uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
        //: });
        });
    }

}

//: - (void)didTapViewController
- (void)isContainerMedia
{
    //: if(_delegate && [_delegate respondsToSelector:@selector(didTapInMessageController:)]) {
    if(_delegate && [_delegate respondsToSelector:@selector(sinceWithout:)]) {
        //: [_delegate didTapInMessageController:self];
        [_delegate sinceWithout:self];
    }
}

//: #pragma mark - 自定义方法
#pragma mark - 自定义方法
/// 发送消息
/// - Parameter msg: cellData
//: - (void)sendCustomMessage:(SparkCellData *)msg {
- (void)contrast:(SparkCellData *)msg {

    //: if (self.currentChatType == TalkingIMChatType_meeting) {
    if (self.currentChatType == TalkingIMChatType_meeting) {
        //: if (_uiMsgs.count > 7000) {
        if (_uiMsgs.count > 7000) {
            //: V2TIMMessage *msg = _uiMsgs.firstObject;
            V2TIMMessage *msg = _uiMsgs.firstObject;
            //: [[V2TIMManager sharedInstance] deleteMessages:@[msg] succ:nil fail:nil];
            [[V2TIMManager sharedInstance] deleteMessages:@[msg] succ:nil fail:nil];
            //: [_uiMsgs removeObject:msg];
            [_uiMsgs removeObject:msg];
        }
    }

    //: [self.tableView beginUpdates];
    [self.tableView beginUpdates];
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: SparkCellData *dateMsg = nil;
    SparkCellData *dateMsg = nil;
    //: if (msg.status == Msg_Status_Init) {
    if (msg.status == Msg_Status_Init) {
        //: if (imMsg) {
        if (imMsg) {
            //: dateMsg = [self transSystemMsgFromDate:imMsg.timestamp];
            dateMsg = [self list:imMsg.timestamp];
        }
    //: } else if (imMsg) {
    } else if (imMsg) {
        //重发
        //: dateMsg = [self transSystemMsgFromDate:[NSDate date]];
        dateMsg = [self list:[NSDate date]];
        //: NSInteger row = [_uiMsgs indexOfObject:msg];
        NSInteger row = [_uiMsgs indexOfObject:msg];
        //: [_heightCache removeObjectAtIndex:row];
        [_heightCache removeObjectAtIndex:row];
        //: [_uiMsgs removeObjectAtIndex:row];
        [_uiMsgs removeObjectAtIndex:row];
        //: [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                              //: withRowAnimation:UITableViewRowAnimationFade];
                              withRowAnimation:UITableViewRowAnimationFade];

        //: [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
        [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];

    //: } else {
    } else {
        //: [self.tableView endUpdates];
        [self.tableView endUpdates];
        //: NSLog(@"Unknown message state");
        //: return;
        return;
    }
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: BOOL isGroup = self.currentChatType == TalkingIMChatType_meeting || self.currentChatType == TalkingIMChatType_group;
    BOOL isGroup = self.currentChatType == TalkingIMChatType_meeting || self.currentChatType == TalkingIMChatType_group;
    //: NSInteger sender = DismissReactiveCompatible.share.loginUserMode.userID.integerValue;
    NSInteger sender = DismissReactiveCompatible.share.loginUserMode.userID.integerValue;
    //: NSString *msgID;
    NSString *msgID;
    //: if (isGroup) {
    if (isGroup) {
        //: msgID = [[V2TIMManager sharedInstance] insertGroupMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
        msgID = [[V2TIMManager sharedInstance] insertGroupMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    //: } else {
    } else {
        //: msgID = [[V2TIMManager sharedInstance] insertC2CMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
        msgID = [[V2TIMManager sharedInstance] insertC2CMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    }

    // 展示 UI 界面
    //: msg.status = Msg_Status_Sending;
    msg.status = Msg_Status_Sending;
    //: msg.name = [msg.innerMessage nickName];
    msg.name = [msg.innerMessage nickName];
    //: msg.avatarUrl = [NSURL URLWithString:[msg.innerMessage faceURL]];
    msg.avatarUrl = [NSURL URLWithString:[msg.innerMessage faceURL]];
    //: msg.msgID = msgID;
    msg.msgID = msgID;
    //: if(dateMsg) {
    if(dateMsg) {
        //: _msgForDate = imMsg;
        _msgForDate = imMsg;
        //: [_uiMsgs addObject:dateMsg];
        [_uiMsgs addObject:dateMsg];
        //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                              //: withRowAnimation:UITableViewRowAnimationFade];
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    //: if (isGroup && ![msg isKindOfClass:[CalendarThen class]]) {
    if (isGroup && ![msg isKindOfClass:[CalendarThen class]]) {
        //: msg.showName = YES;
        msg.showName = YES;
    }
    //: [_uiMsgs addObject:msg];
    [_uiMsgs addObject:msg];
    //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                          //: withRowAnimation:UITableViewRowAnimationFade];
                          withRowAnimation:UITableViewRowAnimationFade];
    //: [self.tableView endUpdates];
    [self.tableView endUpdates];
    //: [self scrollToBottom:YES];
    [self input:YES];

    //: int delay = 1;
    int delay = 1;

    //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: if(msg.status == Msg_Status_Sending) {
        if(msg.status == Msg_Status_Sending) {
            //: [self changeCustomMsg:msg status:Msg_Status_Sending_2];
            [self face:msg appBy:Msg_Status_Sending_2];
        }
    //: });
    });
}

/// 更改cellData加载状态
/// - Parameters:
///   - msg: cellData
///   - status: 加载状态
//: - (void)changeCustomMsg:(SparkCellData *)msg status:(TMsgStatus)status {
- (void)face:(SparkCellData *)msg appBy:(TMsgStatus)status {
    //: msg.status = status;
    msg.status = status;
    //: NSInteger index = [_uiMsgs indexOfObject:msg];
    NSInteger index = [_uiMsgs indexOfObject:msg];
    //: if ([self.tableView numberOfRowsInSection:0] > index) {
    if ([self.tableView numberOfRowsInSection:0] > index) {
        //: WireView *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        WireView *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        //: if (cell != nil) {
        if (cell != nil) {
            //: [cell fillWith:msg];
            [cell namePostWith:msg];
        }
    //: } else {
    } else {
        //: NSLog(@"缺少cell");
    }
}

/// 修改消息本地数据
/// - Parameters:
///   - extral: 需要保存的数据
///   - msg: cellData
//: - (void)modifyCustomMessageDataWithExtral:(NSDictionary *)extral cellData:(SparkCellData *)msg {
- (void)turbinateBoneData:(NSDictionary *)extral filter:(SparkCellData *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: NSDictionary *dict = [AcousticPowerThen parseTXMessageDataWithData:imMsg.customElem.data];
    NSDictionary *dict = [AcousticPowerThen leaveDoingiceWithData:imMsg.customElem.data];
    //: NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    //: NSMutableDictionary *newExtraDict = tempDict[@"extra"];
    NSMutableDictionary *newExtraDict = tempDict[[HourCountoData mainImplementationFormat]];

    //: if ([newExtraDict containsObjectForKey:@"msgInfo"] && [extral containsObjectForKey:@"msgInfo"]) {
    if ([newExtraDict containsObjectForKey:[HourCountoData main_windowLowerContent]] && [extral containsObjectForKey:[HourCountoData main_windowLowerContent]]) {
        //: newExtraDict[@"msgInfo"] = extral[@"msgInfo"];
        newExtraDict[[HourCountoData main_windowLowerContent]] = extral[[HourCountoData main_windowLowerContent]];
    }
    //: if ([newExtraDict containsObjectForKey:@"params"] && [extral containsObjectForKey:@"params"]) {
    if ([newExtraDict containsObjectForKey:[HourCountoData showNoticeMsg]] && [extral containsObjectForKey:[HourCountoData showNoticeMsg]]) {
        //: newExtraDict[@"params"] = extral[@"params"];
        newExtraDict[[HourCountoData showNoticeMsg]] = extral[[HourCountoData showNoticeMsg]];
    }

    // 更新消息本地保存的数据
    //: tempDict[@"extra"] = newExtraDict;
    tempDict[[HourCountoData mainImplementationFormat]] = newExtraDict;
    //: NSString *extraString = [tempDict jsonStringEncoded];
    NSString *extraString = [tempDict jsonStringEncoded];
    //: NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
    //: imMsg.customElem.data = cData;
    imMsg.customElem.data = cData;
    //: [[V2TIMManager sharedInstance] modifyMessage:imMsg completion:^(int code, NSString *desc, V2TIMMessage *msg) {
    [[V2TIMManager sharedInstance] modifyMessage:imMsg completion:^(int code, NSString *desc, V2TIMMessage *msg) {
    //: }];
    }];

    // 更新内存模型
    //: msg.msgModel = [[AbTalkingChatMsgBaseModel alloc] initWithDictionary:newExtraDict error:nil];
    msg.msgModel = [[ServiceModel alloc] initWithDictionary:newExtraDict error:nil];
}

/// 更改自定义消息发送状态
/// - Parameters:
///   - msg: 消息数据
///   - msgId: 本人发送，接口返回的消息ID（可能为nil）
///   - incon: 收益
///   - status: 消息发送状态
//: - (void)changeCustomMsg:(SparkCellData *)msg msgId:(NSString *)msgId msgIncome:(NSNumber *)income status:(TMsgStatus)status {
- (void)usanceLeftHandednessNetIncreaseThin:(SparkCellData *)msg present:(NSString *)msgId push:(NSNumber *)income direction:(TMsgStatus)status {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        NSMutableDictionary *tempDic = [HeavyViewController oppositenessMessage:msg];
        //: [tempDic setObject:@(status).description forKey:@"status"];
        [tempDic setObject:@(status).description forKey:[HourCountoData appItValue]];
        //: [tempDic setObject:income forKey:@"msgIncome"];
        [tempDic setObject:income forKey:[HourCountoData showConditionKey]];
        //: if (msgId != nil) { [tempDic setObject:msgId forKey:@"msgId"]; }
        if (msgId != nil) { [tempDic setObject:msgId forKey:[HourCountoData userReasonKickLeavePath]]; }
        //: NSError *error = nil;
        NSError *error = nil;
        //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        //: [msg.innerMessage setLocalCustomData:jsonData];
        [msg.innerMessage setLocalCustomData:jsonData];

        //: msg.status = status;
        msg.status = status;
        //: msg.msgIncome = income.floatValue;
        msg.msgIncome = income.floatValue;
        //: msg.msgModel.msgInfo.msgId = msgId;
        msg.msgModel.msgInfo.msgId = msgId;
        //: [self inner_reloadCellWithMessage:msg];
        [self innerArray:msg];
    //: });
    });
}

//: #pragma mark - 私密照片
#pragma mark - 私密照片
/// 更改私密照片消息的状态
/// - Parameters:
///   - msg: 图片消息
///   - model: 私密照片模型
//: - (void)changeIntimatePhotoMsg:(SparkCellData *)msg photoModel:(AbTalkingChatMsgIntimatePhotoModel *)model {
- (void)background:(SparkCellData *)msg color:(RootMemberModel *)model {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: if (model == nil) { return; }
        if (model == nil) { return; }
        //: [AbTalkingChatMsgIntimatePhotoModel saveIntimatePhoto:model forMsgID:msg.msgID];
        [RootMemberModel can:model root:msg.msgID];
        //: msg.msgModel.msgInfo.intimatePhoto = model;
        msg.msgModel.msgInfo.intimatePhoto = model;
        //: [self inner_reloadCellWithMessage:msg];
        [self innerArray:msg];
    //: });
    });
}

//: #pragma mark - 私密视频
#pragma mark - 私密视频
/// 更改私密视频消息的状态
/// - Parameters:
///   - msg: 视频消息
///   - model: 私密视频模型
//: - (void)changeIntimateVideoMsg:(SparkCellData *)msg videoModel:(AbTalkingChatMsgVideoModel *)model {
- (void)method:(SparkCellData *)msg gravitationalForce:(HistoricalModel *)model {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: if (model == nil) { return; }
        if (model == nil) { return; }
        //: [AbTalkingChatMsgVideoModel saveIntimateVideo:model forMsgID:msg.msgID];
        [HistoricalModel block:model unwelcome:msg.msgID];
        //: msg.msgModel.msgInfo.video = model;
        msg.msgModel.msgInfo.video = model;
        //: [self inner_reloadCellWithMessage:msg];
        [self innerArray:msg];
    //: });
    });
}

//: #pragma mark - 索要礼物
#pragma mark - 索要礼物
/// 更改索要礼物消息的状态
//: - (void)changeIntimateGiftMsg:(SparkCellData *)msg {
- (void)judge:(SparkCellData *)msg {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [WantGiftModel saveAskForGiftWithMsgID:msg.msgID];
        [ExampleWishWellModel streetSmartId:msg.msgID];
        //: msg.msgModel.msgInfo.wantGift.sendStatus = 1;
        msg.msgModel.msgInfo.wantGift.sendStatus = 1;
        //: [self inner_reloadCellWithMessage:msg];
        [self innerArray:msg];
    //: });
    });
}

//: #pragma mark - 翻译
#pragma mark - 翻译
/// 翻译消息，更新本地消息状态
/// - Parameters:
///   - msg: 消息数据
///   - transContent: 翻译后的内容
///   - status: 当前翻译状态
//: - (void)translateMessage:(SparkCellData *)msg translatedContent:(NSString *)transContent status:(ArtVarArg)status {
- (void)component:(SparkCellData *)msg anBlock:(NSString *)transContent attractiveForce:(ArtVarArg)status {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: NSString *content = transContent.length > 0? transContent:@"";
        NSString *content = transContent.length > 0? transContent:@"";
        //: NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        NSMutableDictionary *tempDic = [HeavyViewController oppositenessMessage:msg];
        //: [tempDic setObject:@(status) forKey:@"ArtVarArg"];
        [tempDic setObject:@(status) forKey:[HourCountoData user_advanceId]];
        //: [tempDic setObject:content forKey:@"TMsgTranslatedContent"];
        [tempDic setObject:content forKey:[HourCountoData noti_repeatedName]];

        //: NSError *error = nil;
        NSError *error = nil;
        //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        //: [msg.innerMessage setLocalCustomData:jsonData];
        [msg.innerMessage setLocalCustomData:jsonData];
        //: msg.translateStatus = status;
        msg.translateStatus = status;
        //: msg.translatedContent = content;
        msg.translatedContent = content;

        //: [self inner_reloadCellWithMessage:msg];
        [self innerArray:msg];
    //: });
    });
}

/// 获取本地自定义消息字典
/// - Parameter msg: 消息数据
//: + (NSMutableDictionary *)getLocalCustomDictionaryWithMessage:(SparkCellData *)msg {
+ (NSMutableDictionary *)oppositenessMessage:(SparkCellData *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: NSString *customStr = [[NSString alloc]initWithData:imMsg.localCustomData encoding:NSUTF8StringEncoding];
    NSString *customStr = [[NSString alloc]initWithData:imMsg.localCustomData encoding:NSUTF8StringEncoding];
    //: NSDictionary *customDic = @{};
    NSDictionary *customDic = @{};
    //: if (customStr != nil && customStr.length > 0) {
    if (customStr != nil && customStr.length > 0) {
        //: customDic = [NSDictionary dictionaryWithJsonString:customStr];
        customDic = [NSDictionary dictionaryToTitleWithJsonString:customStr];
    }
    //: NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] initWithDictionary:customDic];
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] initWithDictionary:customDic];

    //: return tempDic;
    return tempDic;
}

//: - (void)deleteCustomMessage:(SparkCellData *)msg {
- (void)filterAmericanism:(SparkCellData *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: SparkCellData *dateMsg = nil;
    SparkCellData *dateMsg = nil;
    //: dateMsg = [self transSystemMsgFromDate:[NSDate date]];
    dateMsg = [self list:[NSDate date]];
    //: NSInteger row = [_uiMsgs indexOfObject:msg];
    NSInteger row = [_uiMsgs indexOfObject:msg];
    //: [_heightCache removeObjectAtIndex:row];
    [_heightCache removeObjectAtIndex:row];
    //: [_uiMsgs removeObjectAtIndex:row];
    [_uiMsgs removeObjectAtIndex:row];
    //: [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                          //: withRowAnimation:UITableViewRowAnimationFade];
                          withRowAnimation:UITableViewRowAnimationFade];

    //: [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
    [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];

}


/// 刷新cell
/// - Parameter msg: 消息数据
//: - (void)inner_reloadCellWithMessage:(SparkCellData *)msg {
- (void)innerArray:(SparkCellData *)msg {
    //: NSInteger index = [_uiMsgs indexOfObject:msg];
    NSInteger index = [_uiMsgs indexOfObject:msg];
    //: if ([self.tableView numberOfRowsInSection:0] > index) {
    if ([self.tableView numberOfRowsInSection:0] > index) {
        //: WireView *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        WireView *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        //: if (cell != nil) {
        if (cell != nil) {
            //: [cell fillWith:msg];
            [cell namePostWith:msg];
            //: [UIView performWithoutAnimation:^{
            [UIView performWithoutAnimation:^{
                //: [self.tableView reloadRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] withRowAnimation:UITableViewRowAnimationNone];
                [self.tableView reloadRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] withRowAnimation:UITableViewRowAnimationNone];
            //: }];
            }];
        }
    //: } else {
    } else {
        //: NSLog(@"缺少cell");
    }
}

//: - (CalendarThen *)transSystemMsgFromDate:(NSDate *)date
- (CalendarThen *)list:(NSDate *)date
{
    //: if(_msgForDate == nil || fabs([date timeIntervalSinceDate:_msgForDate.timestamp]) > (5 * 60)) {
    if(_msgForDate == nil || fabs([date timeIntervalSinceDate:_msgForDate.timestamp]) > (5 * 60)) {
        //: CalendarThen *system = [[CalendarThen alloc] initWithDirection:DoingceColumnConvertibleMsgDirectionOutgoing];
        CalendarThen *system = [[CalendarThen alloc] initWithDirection:DoingceColumnConvertibleMsgDirectionOutgoing];
        //: system.contentStr = [NSDate tx_messageTimeStringWithShowDetail:YES date:date];
        system.contentStr = [NSDate thirdDateWithShowDetail:YES date:date];
        //: system.reuseId = WireView.TSystemMessageCell_ReuseId;
        system.reuseId = WireView.TSystemMessageCell_ReuseId;
        //: return system;
        return system;
    }
    //: return nil;
    return nil;
}

///滚动时，隐藏键盘
//: - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{

    //: [self didTapViewController];
    [self isContainerMedia];

}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //: if(!_noMoreMsg && scrollView.contentOffset.y <= 40) {
    if(!_noMoreMsg && scrollView.contentOffset.y <= 40) {
        //: if(!_indicatorView.isAnimating) {
        if(!_indicatorView.isAnimating) {
            //: [_indicatorView startAnimating];
            [_indicatorView startAnimating];
        }
    }
    //: else {
    else {
        //: if(_indicatorView.isAnimating) {
        if(_indicatorView.isAnimating) {
            //: [_indicatorView stopAnimating];
            [_indicatorView stopAnimating];
        }
    }
}

//: - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //: if(scrollView.contentOffset.y <= 40) {
    if(scrollView.contentOffset.y <= 40) {
        //: [self loadMessage];
        [self roundPath];
    }
}

//: #pragma mark - message cell delegate
#pragma mark - message cell delegate

//: - (void)onSelectMessageWithCell:(WireView *)cell{
- (void)penumbraCellWithCell:(WireView *)cell {
    //: if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageContent:)]) {
    if ([self.delegate respondsToSelector:@selector(dimension:waveAngle:)]) {
        //: [self.delegate messageController:self onSelectMessageContent:cell];
        [self.delegate dimension:self waveAngle:cell];
    }
}

//: #pragma mark - cell长按手势
#pragma mark - cell长按手势

//: - (void)onLongPressMessageWithCell:(WireView *)cell{
- (void)houseWithCell:(WireView *)cell {

    //: SparkCellData *data = cell.messageData;
    SparkCellData *data = cell.messageData;
    //: if ([[self requiredResponseWithLongGestureRecognizer] containsObject:[data class]] == NO) {
    if ([[self beginRecognizer] containsObject:[data class]] == NO) {
        //: return;
        return;
    }

    //: BOOL hasJumps = NO;
    BOOL hasJumps = NO;
    //: if ([data isKindOfClass:[CellReactiveCompatible class]]) {
    if ([data isKindOfClass:[CellReactiveCompatible class]]) {
        //: CellReactiveCompatible *textCellData = (CellReactiveCompatible *)data;
        CellReactiveCompatible *textCellData = (CellReactiveCompatible *)data;

        //: if (textCellData.hasJump) {
        if (textCellData.hasJump) {
            //: hasJumps = YES;
            hasJumps = YES;
        }
    }

    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    // 只有文字才有复制功能
    //: if (([data isKindOfClass:[GroupTitleChatCellPortraitDataThen class]] ||
    if (([data isKindOfClass:[GroupTitleChatCellPortraitDataThen class]] ||
         //: [data isKindOfClass:[CellReactiveCompatible class]]) && hasJumps == NO) {
         [data isKindOfClass:[CellReactiveCompatible class]]) && hasJumps == NO) {
        // 过滤掉音视频通话文本消息
        //: if (data.msgModel.msgInfo.callCmd == nil) {
        if (data.msgModel.msgInfo.callCmd == nil) {
            //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Copy".localized action:@selector(onCopyMsg:)]];
            [items addObject:[[UIMenuItem alloc] initWithTitle:[HourCountoData const_markerPath].uniteLocalized action:@selector(angling:)]];
            // 私聊 && 接收消息 && 消息未翻译成功
            //: if ([data isKindOfClass:[CellReactiveCompatible class]] &&
            if ([data isKindOfClass:[CellReactiveCompatible class]] &&
                //: data.direction == DoingceColumnConvertibleMsgDirectionIncoming &&
                data.direction == DoingceColumnConvertibleMsgDirectionIncoming &&
                //: data.translateStatus != ArtVarArgMsgTranslate_succeed) {
                data.translateStatus != ArtVarArgMsgTranslate_succeed) {
                //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Trans".localized action:@selector(onTranslateMsg:)]];
                [items addObject:[[UIMenuItem alloc] initWithTitle:[HourCountoData user_launchMessage].uniteLocalized action:@selector(applicationses:)]];
            }
        }
    }

    //: if ([self canReplyResponseWithLongGestureRecognizer:data]) {
    if ([self window:data]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Reply".localized action:@selector(onReplyMsg:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[HourCountoData kEnableerId].uniteLocalized action:@selector(allMsg:)]];
    }

    //: if (items.count == 0) {
    if (items.count == 0) {
        //: return;
        return;
    }

    //: self.menuIsShow = YES;
    self.menuIsShow = YES;
    //: BOOL isFirstResponder = NO;
    BOOL isFirstResponder = NO;
    //: if(_delegate && [_delegate respondsToSelector:@selector(messageController:willShowMenuInCell:)]) {
    if(_delegate && [_delegate respondsToSelector:@selector(conversation:license:)]) {
        //: isFirstResponder = [_delegate messageController:self willShowMenuInCell:cell];
        isFirstResponder = [_delegate conversation:self license:cell];
    }
    //: if(isFirstResponder) {
    if(isFirstResponder) {
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuDidHide:) name:UIMenuControllerDidHideMenuNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hid:) name:UIMenuControllerDidHideMenuNotification object:nil];
    //: } else {
    } else {
        //: [self becomeFirstResponder];
        [self becomeFirstResponder];
    }
    //: UIMenuController *controller = [UIMenuController sharedMenuController];
    UIMenuController *controller = [UIMenuController sharedMenuController];
    //: controller.menuItems = items;
    controller.menuItems = items;
    //: _menuUIMsg = data;
    _menuUIMsg = data;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [controller setTargetRect:cell.container.bounds inView:cell.container];
        [controller setTargetRect:cell.container.bounds inView:cell.container];
        //: [controller setMenuVisible:YES animated:YES];
        [controller setMenuVisible:YES animated:YES];
    //: });
    });
}

///长按支持手势的cell数据
//: - (NSArray *)requiredResponseWithLongGestureRecognizer {
- (NSArray *)beginRecognizer {
    //: return @[[GroupTitleChatCellPortraitDataThen class],
    return @[[GroupTitleChatCellPortraitDataThen class],
             //: [CellReactiveCompatible class],
             [CellReactiveCompatible class],
             //: [RangeCellData class],
             [RangeCellData class],
             //: [EngineeringCellData class],
             [EngineeringCellData class],
             //: [NumberensityReactiveCompatible class],
             [NumberensityReactiveCompatible class],
             //: [ResolveCellData class],
             [ResolveCellData class],
             //: [RangeThen class]];
             [RangeThen class]];
}

//: - (void)onRetryMessageWithCell:(WireView *)cell{
- (void)nestledWithCell:(WireView *)cell {

    //: if ([self.delegate respondsToSelector:@selector(messageController:onRetryMessageContent:)]) {
    if ([self.delegate respondsToSelector:@selector(first:plus:)]) {
        //: [self.delegate messageController:self onRetryMessageContent:cell];
        [self.delegate first:self plus:cell];
    }

}

//: - (void)onSelectMessageAvatarWithCell:(WireView *)cell{
- (void)norAboveCell:(WireView *)cell {
    //: if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(white:phoneMessageAvatar:)]) {
        //: [self.delegate messageController:self onSelectMessageAvatar:cell];
        [self.delegate white:self phoneMessageAvatar:cell];
    }
}

//: -(BOOL)canPerformAction:(SEL)action withSender:(id)sender
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: if (action == @selector(onDelete:) ||
    if (action == @selector(onDelete:) ||
        //: action == @selector(onRevoke:) ||
        action == @selector(onRevoke:) ||
        //: action == @selector(onReSend:) ||
        action == @selector(onReSend:) ||
        //: action == @selector(onCopyMsg:) ||
        action == @selector(angling:) ||
        //: action == @selector(onTranslateMsg:) ||
        action == @selector(applicationses:) ||
        //: action == @selector(onMulitSelect:) ||
        action == @selector(onMulitSelect:) ||
        //: action == @selector(onReplyMsg:)){
        action == @selector(allMsg:)){
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (void)menuDidHide:(NSNotification*)notification
- (void)hid:(NSNotification*)notification
{
    //: if(_delegate && [_delegate respondsToSelector:@selector(didHideMenuInMessageController:)]){
    if(_delegate && [_delegate respondsToSelector:@selector(imageSave:)]){
        //: [_delegate didHideMenuInMessageController:self];
        [_delegate imageSave:self];
    }
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerDidHideMenuNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerDidHideMenuNotification object:nil];
}

//: - (void)menuWillHide:(NSNotification *)notif {
- (void)waitted:(NSNotification *)notif {
    //: self.menuIsShow = NO;
    self.menuIsShow = NO;
}

//: #pragma mark - 复制消息
#pragma mark - 复制消息
//: - (void)onCopyMsg:(id)sender {
- (void)angling:(id)sender {
    //: NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    //: if (index == NSNotFound)
    if (index == NSNotFound)
        //: return;
        return;

    //: if ([_menuUIMsg isKindOfClass:[GroupTitleChatCellPortraitDataThen class]] ||
    if ([_menuUIMsg isKindOfClass:[GroupTitleChatCellPortraitDataThen class]] ||
        //: [_menuUIMsg isKindOfClass:[CellReactiveCompatible class]]) {
        [_menuUIMsg isKindOfClass:[CellReactiveCompatible class]]) {
        //: CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)_menuUIMsg;
        CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)_menuUIMsg;
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: NSString *content = txtMsg.contentStr;
        NSString *content = txtMsg.contentStr;
        //: if ([content containsString:@"<at>"]) {
        if ([content containsString:@"<at>"]) {

            //: content = [content stringByReplacingOccurrencesOfString:@"<at>" withString:@""];
            content = [content stringByReplacingOccurrencesOfString:@"<at>" withString:@""];
        }
        //: if ([content containsString:@"</at>"]) {
        if ([content containsString:@"</at>"]) {
            //: content = [content stringByReplacingOccurrencesOfString:@"</at>" withString:@""];
            content = [content stringByReplacingOccurrencesOfString:@"</at>" withString:@""];
        }

        //        if (!FZUtils.isEmptyString(content)) {
        //            content = [content convertGJEmoji];
        //        }

        //: pasteboard.string = content;
        pasteboard.string = content;
    }

}
//: #pragma mark - 引用消息
#pragma mark - 引用消息
//: - (BOOL)canReplyResponseWithLongGestureRecognizer:(SparkCellData *)cellData {
- (BOOL)window:(SparkCellData *)cellData {
    //: if (self.currentChatType != TalkingIMChatType_private) {
    if (self.currentChatType != TalkingIMChatType_private) {
        //: return NO;
        return NO;
    }
    //: if (cellData.direction == DoingceColumnConvertibleMsgDirectionOutgoing && cellData.status != Msg_Status_Succ) {
    if (cellData.direction == DoingceColumnConvertibleMsgDirectionOutgoing && cellData.status != Msg_Status_Succ) {
        //: return NO;
        return NO;
    }
    //: if ([DismissReactiveCompatible.share.loginUserMode.sex isEqualToString: @"1"] && self.isRecharge != 1) { // 男性 && 未充值过
    if ([DismissReactiveCompatible.share.loginUserMode.sex isEqualToString: @"1"] && self.isRecharge != 1) { // 男性 && 未充值过
        //: return NO;
        return NO;
    }
    //: if (cellData.messageType == 3) { 
    if (cellData.messageType == 3) { // 过滤系统代发打招呼消息
        //: return NO;
        return NO;
    }
    //: if (cellData.messageType == 29 || cellData.msgModel.params[@"replayId"] != nil) { // 过滤问题回答消息
    if (cellData.messageType == 29 || cellData.msgModel.params[[HourCountoData show_windowId]] != nil) { // 过滤问题回答消息
        //: return NO;
        return NO;
    }
    //: if ([cellData isKindOfClass:[ResolveCellData class]] || [cellData isKindOfClass:[RangeCellData class]]) {
    if ([cellData isKindOfClass:[ResolveCellData class]] || [cellData isKindOfClass:[RangeCellData class]]) {
        //: return YES;
        return YES;
    }
    //: if ([cellData isKindOfClass:[CellReactiveCompatible class]]) {
    if ([cellData isKindOfClass:[CellReactiveCompatible class]]) {
        //: if (cellData.msgModel.msgInfo.callCmd == nil) { 
        if (cellData.msgModel.msgInfo.callCmd == nil) { // 过滤掉音视频通话文本消息
            //: return YES;
            return YES;
        }
    }
    //: if ([cellData isKindOfClass:[NumberensityReactiveCompatible class]]) {
    if ([cellData isKindOfClass:[NumberensityReactiveCompatible class]]) {
        // 普通视频
        //: if (cellData.msgModel.msgInfo.video.burnStatus == -1 && cellData.msgModel.msgInfo.video.lockStatus == -1 && [cellData.msgModel.msgInfo.video.giftId isEqualToString:@"0"]) {
        if (cellData.msgModel.msgInfo.video.burnStatus == -1 && cellData.msgModel.msgInfo.video.lockStatus == -1 && [cellData.msgModel.msgInfo.video.giftId isEqualToString:@"0"]) {
            //: return YES;
            return YES;
        }
    }
    //: if ([cellData isKindOfClass:[EngineeringCellData class]]) {
    if ([cellData isKindOfClass:[EngineeringCellData class]]) {
        // 普通图片
        //: if (cellData.msgModel.msgInfo.intimatePhoto != nil || [cellData.msgModel.msgInfo.customSend.isBurn isEqualToString:@"1"] || (cellData.msgModel.msgInfo.customSend.giftId != nil && ![cellData.msgModel.msgInfo.customSend.giftId isEqualToString:@"0"])) {
        if (cellData.msgModel.msgInfo.intimatePhoto != nil || [cellData.msgModel.msgInfo.customSend.isBurn isEqualToString:@"1"] || (cellData.msgModel.msgInfo.customSend.giftId != nil && ![cellData.msgModel.msgInfo.customSend.giftId isEqualToString:@"0"])) {
            //: return NO;
            return NO;
        }
        //: return YES;
        return YES;
    }

    //: return NO;
    return NO;
}

//: - (void)onReplyMessageWithCell:(WireView *)cell {
- (void)sweepUnderTheRugCheckWithCell:(WireView *)cell {
    //: if ([_delegate respondsToSelector:@selector(messageController:onClickReplyMessage:)]) {
    if ([_delegate respondsToSelector:@selector(fragment:pressDoing:)]) {
        //: [_delegate messageController:self onClickReplyMessage:cell.messageData];
        [_delegate fragment:self pressDoing:cell.messageData];
    }
}
//: - (void)onReplyMsg:(id)sender {
- (void)allMsg:(id)sender {
    //: NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    //: if (index == NSNotFound)
    if (index == NSNotFound)
        //: return;
        return;
    //: CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)_menuUIMsg;
    CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)_menuUIMsg;
    //: if ([_delegate respondsToSelector:@selector(messageController:onReplyMessage:)]) {
    if ([_delegate respondsToSelector:@selector(send:pullUp:)]) {
        //: [_delegate messageController:self onReplyMessage:txtMsg];
        [_delegate send:self pullUp:txtMsg];
    }

}

//: #pragma mark - 翻译消息
#pragma mark - 翻译消息
/// 系统翻译事件
//: - (void)onTranslateMsg:(id)sender {
- (void)applicationses:(id)sender {
    //: [self translateMsgWithCellData:self.menuUIMsg];
    [self photo:self.menuUIMsg];
}

/// 翻译消息
/// - Parameter cellData: 数据
//: - (void)translateMsgWithCellData:(SparkCellData *)cellData {
- (void)photo:(SparkCellData *)cellData {
    //: NSInteger index = [_uiMsgs indexOfObject:cellData];
    NSInteger index = [_uiMsgs indexOfObject:cellData];
    //: if (index == NSNotFound) return;
    if (index == NSNotFound) return;

    //: if (DismissReactiveCompatible.share.appUserConfigMode.enableTranslate == NO) { 
    if (DismissReactiveCompatible.share.appUserConfigMode.enableTranslate == NO) { // 非会员，无法使用翻译
        //: [[PushThen share] func__pushToSubscribePageWebVC];
        [[PushThen share] forceBack];
        //: return;
        return;
    }

    //: if ([cellData isKindOfClass:[CellReactiveCompatible class]]) {
    if ([cellData isKindOfClass:[CellReactiveCompatible class]]) {
        //: CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)cellData;
        CellReactiveCompatible *txtMsg = (CellReactiveCompatible *)cellData;
        //: [self translateMessageToReq:txtMsg andType:0];
        [self search:txtMsg eye:0];

    //: } else if ([cellData isKindOfClass:[GroupTitleChatCellPortraitDataThen class]]) {
    } else if ([cellData isKindOfClass:[GroupTitleChatCellPortraitDataThen class]]) {
        //: GroupTitleChatCellPortraitDataThen *txtMsg = (GroupTitleChatCellPortraitDataThen *)cellData;
        GroupTitleChatCellPortraitDataThen *txtMsg = (GroupTitleChatCellPortraitDataThen *)cellData;
        //: [self translateMessageToReq:txtMsg andType:1];
        [self search:txtMsg eye:1];
    }
}

//: - (void)translateMessageToReq:(SparkCellData *)txtMsg andType:(int)type {
- (void)search:(SparkCellData *)txtMsg eye:(int)type {
    //: [self translateMessage:txtMsg translatedContent:nil status:ArtVarArgMsgTranslate_translating];
    [self component:txtMsg anBlock:nil attractiveForce:ArtVarArgMsgTranslate_translating];
    // 调用翻译接口
    //: [TalkingChatRequestTool req_translateMsgWithMsgId:txtMsg.msgModel.msgInfo.msgId type:type completion:^(BOOL succeed, NSDictionary *dict, NSInteger errorCode) {
    [TamperRequestTool moreAttributeWithMsgId:txtMsg.msgModel.msgInfo.msgId type:type completion:^(BOOL succeed, NSDictionary *dict, NSInteger errorCode) {
        //: if (!succeed) {
        if (!succeed) {
            //: if (errorCode == 403) { 
            if (errorCode == 403) { // 非会员，无法使用翻译
                //: DismissReactiveCompatible.share.appUserConfigMode.enableTranslate = NO;
                DismissReactiveCompatible.share.appUserConfigMode.enableTranslate = NO;
                //: [[PushThen share] func__pushToSubscribePageWebVC];
                [[PushThen share] forceBack];
            }

            //: [self translateMessage:txtMsg translatedContent:@"Retry" status:ArtVarArgMsgTranslate_fail];
            [self component:txtMsg anBlock:[HourCountoData show_memberMsg] attractiveForce:ArtVarArgMsgTranslate_fail];
            //: return;
            return;
        }

        //: NSString *content = @"";
        NSString *content = @"";
        //: if ([dict.allKeys containsObject:@"targetText"]) { content = dict[@"targetText"]; }
        if ([dict.allKeys containsObject:[HourCountoData mainSwitchceData]]) { content = dict[[HourCountoData mainSwitchceData]]; }
        //: [self translateMessage:txtMsg translatedContent:content status:ArtVarArgMsgTranslate_succeed];
        [self component:txtMsg anBlock:content attractiveForce:ArtVarArgMsgTranslate_succeed];
    //: }];
    }];
}


//: @end
@end
