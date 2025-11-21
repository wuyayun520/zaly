
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let user_thumbPath:[Character] = ["P","e","r","s","o","n"]
fileprivate let main_objectValue:String = "ok filter fore mobile promptal info"
fileprivate let dataElectKey:[Character] = ["r","m","a","t","i","o","n"]

/*: "male" :*/
fileprivate let notiConnectionTitle:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let const_pushStr:String = "lope"
fileprivate let main_ionTarValue:String = "shadowale"

/*: "sex" :*/
fileprivate let appEarStr:[Character] = ["s","e","x"]

/*: "nickname" :*/
fileprivate let appTheoryId:String = "writeickwriteame"

/*: "birthday" :*/
fileprivate let mainCountoName:String = "bobject"
fileprivate let const_barText:[Character] = ["r","t","h","d","a","y"]

/*: "User :*/
fileprivate let notiConversationPath:String = "remain procedure courseUser"

/*: "invite_code" :*/
fileprivate let showVanishBagKey:[UInt8] = [0x21,0x26,0x2e,0x21,0x2c,0x1d,0x17,0x1b,0x27,0x1c,0x1d]

fileprivate func splitSeparate(topic num: UInt8) -> UInt8 {
    let value = Int(num) - 184
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArcanumViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class ArcanumViewController: WeddingLovelyRecognizerDelegate {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        rankSlow(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: DismissReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            DismissReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: DismissReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            DismissReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(user_thumbPath) + String(main_objectValue.suffix(7)) + String(dataElectKey)).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        lab()
        //: setupSubViewsConstraint()
        reward()
        //: bindInteraction()
        factor()
        //: addTapGestureRecognizer()
        workIn()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: TickAfterView = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = TickAfterView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension ArcanumViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func popbackResult() {
        //: super.naviPopback()
        super.popbackResult()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(const_routeStr)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: notiConnectionTitle.reversed(), encoding: .utf8)! : (const_pushStr.replacingOccurrences(of: "lope", with: "f") + main_ionTarValue.replacingOccurrences(of: "shadow", with: "em")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        const_pathMsg.tabKeep(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func post() {
        //: if DismissReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
        if DismissReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            tick()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = DismissReactiveCompatible.share.userFillInfoMode.sex
        params[(String(appEarStr))] = DismissReactiveCompatible.share.userFillInfoMode.sex
        //: params["nickname"] = DismissReactiveCompatible.share.userFillInfoMode.nickName
        params[(appTheoryId.replacingOccurrences(of: "write", with: "n"))] = DismissReactiveCompatible.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", DismissReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", DismissReactiveCompatible.share.userFillInfoMode.birthDay))-\(DismissReactiveCompatible.share.userFillInfoMode.birthYear)"
        params[(mainCountoName.replacingOccurrences(of: "object", with: "i") + String(const_barText))] = "\(String(format: "%.2d", DismissReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", DismissReactiveCompatible.share.userFillInfoMode.birthDay))-\(DismissReactiveCompatible.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = CongressionalMedalOfHonorThen()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        exitSchedule()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func customToday() {
        //: getRandomNickname()
        tick()
        //: DismissReactiveCompatible.share.userFillInfoMode.setBirth()
        DismissReactiveCompatible.share.userFillInfoMode.translationThinkBirth()
        //: DismissReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        DismissReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        post()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func tick() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: DismissReactiveCompatible.share.userFillInfoMode.nickName = "User\(randCode)"
        DismissReactiveCompatible.share.userFillInfoMode.nickName = (String(notiConversationPath.suffix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension ArcanumViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func lab() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func reward() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func factor() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: SmallInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(main_partyMsg)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: notiConnectionTitle.reversed(), encoding: .utf8)! : (const_pushStr.replacingOccurrences(of: "lope", with: "f") + main_ionTarValue.replacingOccurrences(of: "shadow", with: "em")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                const_pathMsg.tabKeep(eventID: eventID)

                // 校验验证码
                //: if DismissReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                if DismissReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": DismissReactiveCompatible.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: showVanishBagKey.map{splitSeparate(topic: $0)}, encoding: .utf8)!: DismissReactiveCompatible.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    FirRequestTool.titlePage(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.post()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.post()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(k_addId)_\(DismissReactiveCompatible.share.userFillInfoMode.sex == FenceSequence.male.rawValue ? String(bytes: notiConnectionTitle.reversed(), encoding: .utf8)! : (const_pushStr.replacingOccurrences(of: "lope", with: "f") + main_ionTarValue.replacingOccurrences(of: "shadow", with: "em")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                const_pathMsg.tabKeep(eventID: eventID)
                //: self.func__skipBtnAction()
                self.customToday()
            }
        }
    }
}
