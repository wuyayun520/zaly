
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constJumpMsg:[UInt8] = [0xf9,0xfe,0xf9,0xe4,0xb8,0xf3,0xff,0xf4,0xf5,0xe2,0xaa,0xb9,0xb0,0xf8,0xf1,0xe3,0xb0,0xfe,0xff,0xe4,0xb0,0xf2,0xf5,0xf5,0xfe,0xb0,0xf9,0xfd,0xe0,0xfc,0xf5,0xfd,0xf5,0xfe,0xe4,0xf5,0xf4]

private func pictureThenServe(data num: UInt8) -> UInt8 {
    return num ^ 144
}

/*: "momentId" :*/
fileprivate let k_appealValue:[UInt8] = [0x64,0x49,0x74,0x6e,0x65,0x6d,0x6f,0x6d]

/*: "lastId" :*/
fileprivate let main_movementAgentData:String = "lastIdwould him bass story"

/*: "limit" :*/
fileprivate let mainThatStructureName:String = "limiabove"

/*: "list" :*/
fileprivate let noti_picNorFormat:[Character] = ["l","i","s","t"]

/*: "more>>" :*/
fileprivate let main_reText:String = "connect effective editor currently makemore>>"

/*: "Comment on success" :*/
fileprivate let user_extentSinceId:String = "unite justice then superComm"
fileprivate let k_darkHelpDesignFormat:String = "n susection thread"
fileprivate let notiHeatMsg:String = "ccesumsum"

/*: "replyId" :*/
fileprivate let showImageMessage:[Character] = ["r","e","p","l","y","I","d"]

/*: "type" :*/
fileprivate let kHiddenData:[UInt8] = [0x72,0x7f,0x76,0x63]

private func parkBalance(dominant num: UInt8) -> UInt8 {
    return num ^ 6
}

/*: "comment" :*/
fileprivate let dataIntervalStr:String = "coititent"

/*: "number" :*/
fileprivate let constPiWindowTitle:[UInt8] = [0x42,0x49,0x41,0x36,0x39,0x46]

fileprivate func emptyBite(contact num: UInt8) -> UInt8 {
    let value = Int(num) - 212
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Delete Post" :*/
fileprivate let mainRecommendationValue:[Character] = ["D","e","l","e","t","e"," ","P","o","s","t"]

/*: "model" :*/
fileprivate let app_findTitle:[UInt8] = [0xd,0xf,0x4,0x5,0xc]

/*: "The content cannot be empty!" :*/
fileprivate let app_benchBusinessKey:[Character] = ["T","h","e"," ","c","o","n","t","e"]
fileprivate let dataPlyMotionContent:String = "warm create lack disknt can"
fileprivate let data_attachUrl:String = " empty!collect long"

/*: "content" :*/
fileprivate let appScorePath:String = "colargeen"
fileprivate let dataToolMutualTitle:String = "T"

/*: "Delete" :*/
fileprivate let dataStarContent:[Character] = ["D","e","l","e","t","e"]

/*: "Delete Comment?" :*/
fileprivate let constMemberPath:String = "line formal league speaker telephoneDelete"
fileprivate let app_diskMessage:[Character] = [" ","C","o","m","m","e","n","t","?"]

/*: "Cancel" :*/
fileprivate let data_docBadContent:[Character] = ["C","a","n","c","e","l"]

/*: "Reply" :*/
fileprivate let dataDiscussionTitle:String = "pattern allegedReply"

/*: "Details" :*/
fileprivate let noti_closeUrl:String = "Detailsticket exclusive"

/*: "icon_moment_nor_report" :*/
fileprivate let dataThemKey:String = "plat warning becomeicon_m"
fileprivate let noti_movePath:String = "filter assertt_nor_"

/*: "Comment" :*/
fileprivate let notiSceneData:String = "Commentstaff assign clothes fee below"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WallRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: typealias DeletePostback = () -> Void
typealias DeletePostback = () -> Void

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentDetailVC: TalkingBaseViewController {
class WallRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: var delegete: DeletePostback?
    var delegete: DeletePostback?
    //: var momentModel = TalkingMomentModel()
    var momentModel = IceModelType()
    //: var commentList = Array<TalkingCommentModel>()
    var commentList = [SomethingHandyJSON]()
    //: let inputViewHeight = 56+kDeviceSafeBottomHeight
    let inputViewHeight = 56 + appInviteValue
    //: var lastId  = "0"
    var lastId = "0"
    //: var limit  = 10
    var limit = 10
    //: let quickCommentReplyIndex = -100
    let quickCommentReplyIndex = -100
    /// 点击评论按钮，滑动到评论区域
    //: var toCommentView = false
    var toCommentView = false

    //: init(model: TalkingMomentModel) {
    init(model: IceModelType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: momentModel = model
        momentModel = model
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constJumpMsg.map{pictureThenServe(data: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        narrowed()
        //: setupSubViewsConstraint()
        clew()
        //: requestMomentDetail()
        takeUp()
        //: requestCommentList()
        canton()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: (TalkingApplication.shared as! TalkingApplication).cancelTimer(selectorString: maleInviteCallSceneSEL_String_2)
        (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).nameless(selectorString: user_firstId)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.grouped)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData), style: UITableView.Style.grouped)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = false
        table.showsVerticalScrollIndicator = false
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.register(TalkingCommentReplyItemCell.self, forCellReuseIdentifier: TalkingCommentReplyItemCell.className())
        table.register(SampleSymbolViewCell.self, forCellReuseIdentifier: SampleSymbolViewCell.className())

        //: return table
        return table
        //: }()
    }()

    //: lazy var commentNumberLabel: UILabel = {
    lazy var commentNumberLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .bigGallery(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: return label
        return label
        //: }()
    }()

    //: lazy var comInputView: TalkingCommentInputView = {
    lazy var comInputView: RevenueViewDelegate = {
        //: let text = TalkingCommentInputView.init()
        let text = RevenueViewDelegate()
        //: text.delegate = self
        text.delegate = self
        //: return text
        return text
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: .clear, forState: .normal)
        btn.openColor(color: .clear, forState: .normal)
        //: btn.addTarget( self, action: #selector(dismissClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(inEnableeCase), for: .touchUpInside)
        //: self.view.addSubview(btn)
        self.view.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMomentDetailVC {
extension WallRecognizerDelegate {
    //: func requestMomentDetail() {
    func takeUp() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: k_appealValue.reversed(), encoding: .utf8)!] = momentModel.mid

        //: TalkingMomentRequestTool.req_MomentDetail(params: dict) { succeed, result, errorModel in
        BlendThen.ultramontanism(params: dict) { succeed, result, errorModel in

            //: if succeed {
            if succeed {
                //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if var model = JSONDeserializer<IceModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: model.isMomentDetail = true
                    model.isMomentDetail = true
                    //: model.caculateItemHeight()
                    model.before()
                    //: self.momentModel = model
                    self.momentModel = model
                    //: self.setupMomentView()
                    self.resistanceCurrency()
                    // 场景二：男性用户邀请通话弹窗监听
                    //: (TalkingApplication.shared as! TalkingApplication).showMaleInviteCallView_2(uid: model.uid ?? "", videoUrl: model.videoUrl, headPic: model.headPic ?? "")
                    (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).afterWith(uid: model.uid ?? "", videoUrl: model.videoUrl, headPic: model.headPic ?? "")
                }
                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentList() {
    func canton() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: k_appealValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["lastId"] = lastId
        dict[(String(main_movementAgentData.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(mainThatStructureName.replacingOccurrences(of: "above", with: "t"))] = limit
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()

        //: TalkingMomentRequestTool.req_CommentList(params: dict) { succeed, result, errorModel in
        BlendThen.quote(params: dict) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(noti_picNorFormat))] as! [Any]

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<SomethingHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.running()
                        //: var replyArray: [TalkingCommentReplyModel] = []
                        var replyArray: [FirHandyJSON] = []
                        //: for j in 0..<model.comment.count {
                        for j in 0 ..< model.comment.count {
                            //: var replymodel = model.comment[j]
                            var replymodel = model.comment[j]
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.transit()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: if model.totalReply > 3 {
                        if model.totalReply > 3 {
                            //: var replymodel = TalkingCommentReplyModel.init()
                            var replymodel = FirHandyJSON()
                            //: replymodel.allCountContent = String(format: "more>>")
                            replymodel.allCountContent = String(format: (String(main_reText.suffix(6))))
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.transit()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: model.comment = replyArray
                        model.comment = replyArray
                        //: self.commentList.append(model)
                        self.commentList.append(model)
                    }
                }

                //: if array.count>0 {
                if array.count > 0 {
                    //: let model = self.commentList.last
                    let model = self.commentList.last
                    //: self.lastId = model?.cid ?? "0"
                    self.lastId = model?.cid ?? "0"
                    //: self.mainTableView.reloadData()
                    self.mainTableView.reloadData()
                    //: self.mainTableView.endRefresh()
                    self.mainTableView.combineIn()
                    //: if array.count<self.limit {
                    if array.count < self.limit {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: } else {
                } else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.toCommentView {
                if self.toCommentView {
                    //: self.toCommentView = false
                    self.toCommentView = false
                    //: self.scrollToCommentView()
                    self.nearFlow()
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentWithParams(params: Dictionary<String, Any>, index: Int) {
    func extraWith(params: [String: Any], index: Int) {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()

        //: TalkingMomentRequestTool.req_SendComment(params: params) { [self] succeed, result, errorModel in
        BlendThen.vehicle(params: params) { [self] succeed, result, _ in

            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()

            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Comment on success".localized)
                self.showGuidanceName(showMsg: (String(user_extentSinceId.suffix(4)) + "ent o" + String(k_darkHelpDesignFormat.prefix(4)) + notiHeatMsg.replacingOccurrences(of: "sum", with: "s")).localized)
                //: if params["replyId"] != nil {
                if params[(String(showImageMessage))] != nil {
                    //: var model = TalkingCommentModel()
                    var model = SomethingHandyJSON()
                    //: if index == self.quickCommentReplyIndex {
                    if index == self.quickCommentReplyIndex {
                        //: } else {
                    } else {
                        //: model = self.commentList[index]
                        model = self.commentList[index]
                    }

                    //: if model.uid!.count > 0 {
                    if model.uid!.count > 0 {
                        //: if var replyModel = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                        if var replyModel = JSONDeserializer<FirHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                            //: model.totalReply += 1
                            model.totalReply += 1
                            //: var array = model.comment
                            var array = model.comment
//                            if array.count>3 {
//                                array.remove(at: array.count-2)
//                            }
                            //: replyModel.caculateReplyItemHeight()
                            replyModel.transit()
                            //: array.insert(replyModel, at: 0)
                            array.insert(replyModel, at: 0)

//                            if array.count>3 {
//                                array.removeLast()
//                                var tempModel = FirHandyJSON.init()
//                                tempModel.allCountContent = String(format: "%d comments >", model.totalReply)
//                                tempModel.caculateReplyItemHeight()
//                                array.append(tempModel)
//                            }
                            //: model.comment = array
                            model.comment = array
                            //: self.commentList[index] = model
                            self.commentList[index] = model
                        }
                    }

                    //: } else {
                } else {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<SomethingHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.running()
                        //: if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                        if model.uid == DismissReactiveCompatible.share.loginUserMode.userID {
                            //: model.headPicFrame = DismissReactiveCompatible.share.loginUserMode.headPicFrame
                            model.headPicFrame = DismissReactiveCompatible.share.loginUserMode.headPicFrame
                        }
                        //: self.commentList.insert(model, at: 0)
                        self.commentList.insert(model, at: 0)
                    }
                }
                //: self.momentModel.replyNum!  += 1
                self.momentModel.replyNum! += 1
                //: self.setupMomentView()
                self.resistanceCurrency()
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                NotificationCenter.default.post(name: noti_currencyMessage, object: self, userInfo: [String(bytes: kHiddenData.map{parkBalance(dominant: $0)}, encoding: .utf8)!: (dataIntervalStr.replacingOccurrences(of: "it", with: "m")).localized, String(bytes: constPiWindowTitle.map{emptyBite(contact: $0)}, encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: k_appealValue.reversed(), encoding: .utf8)!: self.momentModel.mid ?? ""])
            }
        }
    }

    /// 子评论列表
    //: func requestReplyList(cid: String, lastId: String, limit: Int, index: IndexPath) {
    func instanceIndex(cid: String, lastId: String, limit: Int, index: IndexPath) {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: ProgressHUD.dismiss()
        InsertProgressHUD.detectDismiss()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["replyId"] = cid
        dict[(String(showImageMessage))] = cid
        //: dict["lastId"] = lastId
        dict[(String(main_movementAgentData.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(mainThatStructureName.replacingOccurrences(of: "above", with: "t"))] = limit

        //: TalkingMomentRequestTool.req_CommentDetailList(params: dict) { succeed, result, errorModel in
        BlendThen.layerBone(params: dict) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(noti_picNorFormat))] as! [Any]
                //: var cmodel = self.commentList[index.section]
                var cmodel = self.commentList[index.section]
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<FirHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateReplyItemHeight()
                        model.transit()
                        //: cmodel.comment.insert(model, at: cmodel.comment.count-1)
                        cmodel.comment.insert(model, at: cmodel.comment.count - 1)
                    }
                }
                //: if array.count == 0 {
                if array.count == 0 {
                    //: cmodel.comment.removeLast()
                    cmodel.comment.removeLast()
                }
                //: self.commentList[index.section] = cmodel
                self.commentList[index.section] = cmodel
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingMomentDetailVC {
extension WallRecognizerDelegate {
    //: func footerRefresh() {
    func anQuote() {
        //: if self.lastId == "0" {
        if self.lastId == "0" {
            //: return
            return
        }
        //: requestCommentList()
        canton()
    }

    //: func scrollToCommentView() {
    func nearFlow() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: ScreenWidth, height: ScreenHeight-CGFloat(self.inputViewHeight)-kDeviceSafeBottomHeight-StatusBarNavigationBarHeight), animated: true)
            self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: main_logStr, height: main_nameData - CGFloat(self.inputViewHeight) - appInviteValue - constAgentJumpValue), animated: true)
        }
    }

    //: @objc func BlockBtnClick() {
    @objc func reject() {
        //: if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
        if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = DoingcePopView(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete Post".localized])
            vc.reasonPostList(cellTitleList: [(String(mainRecommendationValue)).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ProgressHUD.show()
                InsertProgressHUD.momentShow()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = self.momentModel.mid
                dict["id"] = self.momentModel.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                BlendThen.pinEnable(params: dict) { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    InsertProgressHUD.detectDismiss()
                    //: if succeed {
                    if succeed {
                        //: self.delegete?()
                        self.delegete?()
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                        //: NotificationCenter.default.post(name: DELETE_MINE_POST_NOTIFICATION, object: self, userInfo: ["model": self.momentModel])
                        NotificationCenter.default.post(name: mainInfoEventReplaceData, object: self, userInfo: [String(bytes: app_findTitle.map{$0^96}, encoding: .utf8)!: self.momentModel])
                    }
                }
            }

            //: } else {
        } else {
            //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            let reportView = PositionView(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            //: reportView.showReportViewIn(view: nil)
            reportView.priceBlack(view: nil)
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: comInputView.inputTextView.resignFirstResponder()
        comInputView.inputTextView.resignFirstResponder()
    }

    //: @objc func dismissClick() {
    @objc func inEnableeCase() {
        //: comInputView.inputTextView.text = ""
        comInputView.inputTextView.text = ""
        //: comInputView.resignkeyBoard()
        comInputView.ridBoard()
    }
}

// MARK: - CommentViewDelegate

//: extension TalkingMomentDetailVC: CommentInputViewDelegate {
extension WallRecognizerDelegate: CommentViewDelegate {
    //: func func__replyTextMsg(msgStr: String, row: IndexPath) {
    func crop(msgStr: String, row: IndexPath) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.enablece(showMsg: (String(app_benchBusinessKey) + String(dataPlyMotionContent.suffix(6)) + "not be" + String(data_attachUrl.prefix(7))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: k_appealValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(appScorePath.replacingOccurrences(of: "large", with: "nt") + dataToolMutualTitle.lowercased())] = msgStr

        //: let model = self.commentList[row.section]
        let model = self.commentList[row.section]
        //: let replymodel = model.comment[row.row]
        let replymodel = model.comment[row.row]
        //: dict["replyId"] = replymodel.cid
        dict[(String(showImageMessage))] = replymodel.cid
        //: requestCommentWithParams(params: dict, index: row.section)
        extraWith(params: dict, index: row.section)
    }

    //: func func__sendTextMsg(msgStr: String, index: Int) {
    func factorIndex(msgStr: String, index: Int) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.enablece(showMsg: (String(app_benchBusinessKey) + String(dataPlyMotionContent.suffix(6)) + "not be" + String(data_attachUrl.prefix(7))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: k_appealValue.reversed(), encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(appScorePath.replacingOccurrences(of: "large", with: "nt") + dataToolMutualTitle.lowercased())] = msgStr
        //: if index >= 0 {
        if index >= 0 {
            //: let model = self.commentList[index]
            let model = self.commentList[index]
            //: dict["replyId"] = model.cid
            dict[(String(showImageMessage))] = model.cid
            //: } else if index == quickCommentReplyIndex {
        } else if index == quickCommentReplyIndex {}

        //: requestCommentWithParams(params: dict, index: index)
        extraWith(params: dict, index: index)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func soleBelow(heightToBottom: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: if heightToBottom>100 {
        if heightToBottom > 100 {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: self.view.frame.size.height-heightToBottom-inputViewHeight)
            backBtn.frame = CGRect(x: 0, y: 0, width: main_logStr, height: self.view.frame.size.height - heightToBottom - inputViewHeight)
            //: backBtn.isHidden = false
            backBtn.isHidden = false
        }
        //: else {
        else {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            //: backBtn.isHidden = true
            backBtn.isHidden = true
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func when(height: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: backBtn.frame.size.height-height)
        backBtn.frame = CGRect(x: 0, y: 0, width: main_logStr, height: backBtn.frame.size.height - height)
        //: backBtn.isHidden = false
        backBtn.isHidden = false
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 删除个人评论
    //: func deleteReplay(cid: String) {
    func evaluateDelay(cid: String) {
        //: if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
        if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = DoingcePopView(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete".localized])
            vc.reasonPostList(cellTitleList: [(String(dataStarContent)).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.attribAlert(title: "Delete Comment?".localized, attributedMessage: NSMutableAttributedString.init(), leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
                AllowanceReactiveCompatible.barrierBlock(title: (String(constMemberPath.suffix(6)) + String(app_diskMessage)).localized, attributedMessage: NSMutableAttributedString(), leftBtnTitle: (String(data_docBadContent)).localized, rightBtnTitle: (String(dataStarContent)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()

                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AllowanceReactiveCompatible.minuteOriginBridge()
                    //: ProgressHUD.show()
                    InsertProgressHUD.momentShow()
                    //: var dict = Dictionary<String, Any>()
                    var dict = [String: Any]()
                    //: dict["id"] = cid
                    dict["id"] = cid
                    //: TalkingMomentRequestTool.req_DeleteMomentReply(params: dict) { succeed, result, errorModel in
                    BlendThen.pointInTimeBy(params: dict) { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        InsertProgressHUD.detectDismiss()
                        //: if succeed {
                        if succeed {
                            //: for (index, model) in self.commentList.enumerated() {
                            for (index, model) in self.commentList.enumerated() {
                                //: if cid == model.cid {
                                if cid == model.cid {
                                    //: self.commentList.remove(at: index)
                                    self.commentList.remove(at: index)
                                    //: break
                                    break
                                }
                            }
                            //: self.mainTableView.reloadData()
                            self.mainTableView.reloadData()
                            //: self.momentModel.replyNum!  -= 1
                            self.momentModel.replyNum! -= 1
                            //: self.setupMomentView()
                            self.resistanceCurrency()
                            //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                            NotificationCenter.default.post(name: noti_currencyMessage, object: self, userInfo: [String(bytes: kHiddenData.map{parkBalance(dominant: $0)}, encoding: .utf8)!: (dataIntervalStr.replacingOccurrences(of: "it", with: "m")).localized, String(bytes: constPiWindowTitle.map{emptyBite(contact: $0)}, encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: k_appealValue.reversed(), encoding: .utf8)!: self.momentModel.mid ?? ""])
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingMomentDetailVC: UITableViewDelegate, UITableViewDataSource {
extension WallRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return self.commentList.count
        return self.commentList.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: return model.comment.count
        return model.comment.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if model.comment.count == 1 {
        if model.comment.count == 1 {
            //: return replymodel.itemHeight! + 5
            return replymodel.itemHeight! + 5
        }
        //: return replymodel.itemHeight!
        return replymodel.itemHeight!
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingCommentReplyItemCell.className()
        let identifier = SampleSymbolViewCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingCommentReplyItemCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SampleSymbolViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingCommentReplyItemCell(style: .default, reuseIdentifier: identifier)
            cell = SampleSymbolViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: if model.comment.count>0 {
        if model.comment.count > 0 {
            //: let replymodel = model.comment[indexPath.row]
            let replymodel = model.comment[indexPath.row]
            //: cell?.configCell(model: replymodel)
            cell?.parentAllow(model: replymodel)
        }
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]

        //: var height = CGFloat()
        var height = CGFloat()
        //: if (model.comment.count == 1) {
        if model.comment.count == 1 {
            //: height = replymodel.itemHeight! + 5
            height = replymodel.itemHeight! + 5
            //: } else {
        } else {
            //: height = replymodel.itemHeight!
            height = replymodel.itemHeight!
        }
        //: let tcell: TalkingCommentReplyItemCell = cell as! TalkingCommentReplyItemCell
        let tcell: SampleSymbolViewCell = cell as! SampleSymbolViewCell
        //: tcell.shearTableViewSection(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
        tcell.row(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if replymodel.allCountContent  == "more>>" {
        if replymodel.allCountContent == (String(main_reText.suffix(6))) {
            //: let lastmodel = model.comment[model.comment.count-2]
            let lastmodel = model.comment[model.comment.count - 2]
            //: requestReplyList(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            instanceIndex(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            //: } else {
        } else {
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
            self.comInputView.variety(holder: (String(dataDiscussionTitle.suffix(5))).localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView: TalkingCommentItemCell = TalkingCommentItemCell.init(style: .default, reuseIdentifier: nil)
        let headeView = ArtView(style: .default, reuseIdentifier: nil)
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: headeView.configCell(model: model)
        headeView.pure(model: model)
        //: headeView.commentReplyBlock = { [weak self] nickname in
        headeView.commentReplyBlock = { [weak self] nickname in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
            self.comInputView.variety(holder: (String(dataDiscussionTitle.suffix(5))).localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
        }
        //: headeView.DeleteReplyBlock = {[weak self] cid in
        headeView.DeleteReplyBlock = { [weak self] cid in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteReplay(cid: cid)
            self.evaluateDelay(cid: cid)
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: if model.comment.count == 0 {
        if model.comment.count == 0 {
            //: return model.itemHeight!-8
            return model.itemHeight! - 8
        }
        //: return model.itemHeight!
        return model.itemHeight!
    }
}

// MARK: - Layout

//: extension TalkingMomentDetailVC {
extension WallRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func narrowed() {
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "Details".localized
        self.title = (String(noti_closeUrl.prefix(7))).localized

        //: let btn=UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        //: if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
        if self.momentModel.uid == DismissReactiveCompatible.share.loginUserMode.userID {
            //: btn.setTitle("Delete".localized, for: .normal)
            btn.setTitle((String(dataStarContent)).localized, for: .normal)
            //: btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            //: btn.setTitleColor(.appTitleColor(), for: .normal)
            btn.setTitleColor(.dialog(), for: .normal)
            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
            btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
            //: } else {
        } else {
            //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_nor_report"), for: .normal)
            btn.setImage(UIImage.locationName(name: (String(dataThemKey.suffix(6)) + "omen" + String(noti_movePath.suffix(6)) + "report")), for: .normal)
        }
        //: btn.addTarget(self, action: #selector(BlockBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(reject), for: .touchUpInside)
        //: let item=UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: self.view.addSubview(comInputView)
        self.view.addSubview(comInputView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func clew() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(0)
            make.top.equalTo(self.view).offset(0)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: comInputView.snp.makeConstraints { make in
        comInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(inputViewHeight)
            make.height.equalTo(inputViewHeight)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func queryedWait() {
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.nextRating { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.anQuote()
        }
    }

    //: func setupMomentView() {
    func resistanceCurrency() {
        //: let view = UIView.init()
        let view = UIView()
        //: let cell: TalkingMomentItemCell = TalkingMomentItemCell.init(style: .default, reuseIdentifier: nil)
        let cell = TillReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: cell.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: momentModel.itemHeight ?? 56 - 12 )
        cell.frame = CGRect(x: 0, y: 0, width: main_logStr, height: momentModel.itemHeight ?? 56 - 12)
        //: cell.initwith(isListTableCell: false)
        cell.playerCell(isListTableCell: false)
        //: cell.configCell(model: momentModel)
        cell.situation(model: momentModel)
        //: cell.playVideo()
        cell.anMark()
        //: view.frame = cell.frame
        view.frame = cell.frame
        //: view.addSubview(cell)
        view.addSubview(cell)

        //: if (momentModel.replyNum! > 0) {
        if momentModel.replyNum! > 0 {
            //: commentNumberLabel.text = String(format: "Comment".localized + " \(momentModel.replyNum!)")
            commentNumberLabel.text = String(format: (String(notiSceneData.prefix(7))).localized + " \(momentModel.replyNum!)")
            //: view.addSubview(commentNumberLabel)
            view.addSubview(commentNumberLabel)
            //: commentNumberLabel.snp.makeConstraints { make in
            commentNumberLabel.snp.makeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(momentModel.itemHeight!+16)
                make.top.equalTo(momentModel.itemHeight! + 16)
                //: make.size.equalTo(CGSize(width: ScreenWidth, height: 22))
                make.size.equalTo(CGSize(width: main_logStr, height: 22))
            }
            //: view.height = momentModel.itemHeight!+38
            view.height = momentModel.itemHeight! + 38
        }

        //: self.mainTableView.tableHeaderView = view
        self.mainTableView.tableHeaderView = view
    }
}
