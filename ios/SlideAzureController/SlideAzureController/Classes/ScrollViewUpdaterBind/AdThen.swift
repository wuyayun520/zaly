
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_multiMessage:[UInt8] = [0xcf,0xc8,0xcf,0xd2,0x8e,0xc5,0xc9,0xc2,0xc3,0xd4,0x9c,0x8f,0x86,0xce,0xc7,0xd5,0x86,0xc8,0xc9,0xd2,0x86,0xc4,0xc3,0xc3,0xc8,0x86,0xcf,0xcb,0xd6,0xca,0xc3,0xcb,0xc3,0xc8,0xd2,0xc3,0xc2]

private func theorySequenceExpression(sub num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "#8A79F9" :*/
fileprivate let show_computeFormat:String = "#8A79F9include catch water"

/*: "Select language" :*/
fileprivate let showFaceData:String = "ice instruction and accompanySele"
fileprivate let show_likeMessage:String = "anseedage"

/*: "Cancel" :*/
fileprivate let kEyeName:[Character] = ["C"]
fileprivate let app_containerKey:String = "amouthel"

/*: "7166F9" :*/
fileprivate let noti_matchKey:[Character] = ["7","1","6","6","F"]
fileprivate let showProduceTitle:[Character] = ["9"]

/*: "Confirm" :*/
fileprivate let notiExtendOccurTitle:[Character] = ["C","o","n","f","i"]
fileprivate let main_coordinatorMsg:String = "rago"

/*: "type" :*/
fileprivate let kRefStoneName:String = "commonype"

/*: "content" :*/
fileprivate let constMaxStr:String = "cotermeterm"

/*: "mf/user/editCountryLang" :*/
fileprivate let main_iceCoalData:String = "mf/user/my receive hop failure pattern"
fileprivate let kDominantCapableUrl:String = "edibox"
fileprivate let showEventStr:String = "press awake fireryLang"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdThen.swift
//  Pods
//
//  Created by Charlotte on 2025/9/12.
//

//: import UIKit
import UIKit

//: typealias AddSuccessTagBlock = () ->()
typealias AddSuccessTagBlock = () -> Void

//: class EditLanguageChoiceView: UIView {
class AdThen: UIView {
    //: var addSuccessTagBlock: AddSuccessTagBlock!
    var addSuccessTagBlock: AddSuccessTagBlock!

    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: var nameData = [LanguageModel]()
    var nameData = [FenceMeasurable]()

    //: var maxSelete = 1
    var maxSelete = 1

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.stand()
        //: self.setupSubViewsConstraint()
        self.swaddlingClothes()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_multiMessage.map{theorySequenceExpression(sub: $0)}, encoding: .utf8)!)
    }

    //: private lazy var BGView: UIView = {
    private lazy var BGView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 32
        v.layer.cornerRadius = 32
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLb: UILabel = {
    private lazy var titleLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        //: lb.textColor = UIColor.init(hex: "#8A79F9")
        lb.textColor = UIColor(hex: (String(show_computeFormat.prefix(7))))
        //: lb.text = "Select language".localized
        lb.text = (String(showFaceData.suffix(4)) + "ct l" + show_likeMessage.replacingOccurrences(of: "seed", with: "gu")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Cancel".localized, for: .normal)
        v.setTitle((String(kEyeName) + app_containerKey.replacingOccurrences(of: "mouth", with: "nc")).localized, for: .normal)
        //: v.setTitleColor(UIColor.init(hex: "7166F9"), for: .normal)
        v.setTitleColor(UIColor(hex: (String(noti_matchKey) + String(showProduceTitle))), for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 16)
        v.titleLabel?.font = UIFont.bonePlace(fontSize: 16)
        //: v.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(front), for: .touchUpInside)
        //: v.layer.cornerRadius = 22.5
        v.layer.cornerRadius = 22.5
        //: v.clipsToBounds = true
        v.clipsToBounds = true
        //: v.layer.borderWidth = 2
        v.layer.borderWidth = 2
        //: v.layer.borderColor = UIColor.init(hex: "7166F9")?.cgColor
        v.layer.borderColor = UIColor(hex: (String(noti_matchKey) + String(showProduceTitle)))?.cgColor

        //: return v
        return v
        //: }()
    }()

    //: private lazy var confirmBtn: UIButton = {
    private lazy var confirmBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Confirm".localized, for: .normal)
        v.setTitle((String(notiExtendOccurTitle) + main_coordinatorMsg.replacingOccurrences(of: "ago", with: "m")).localized, for: .normal)
        //: v.setTitleColor(.white, for: .normal)
        v.setTitleColor(.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        v.titleLabel?.font = UIFont.pingfang(fontSize: 16)
        //: v.layer.cornerRadius = 22.5
        v.layer.cornerRadius = 22.5
        //: v.clipsToBounds = true
        v.clipsToBounds = true
        //: v.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 120, height: 45)), for: .normal)
        v.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: 120, height: 45)), for: .normal)
        //: v.addTarget(self, action: #selector(confrimAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(accountSlide), for: .touchUpInside)

        //: return v
        return v
        //: }()
    }()

    //: lazy var msgContentView: UIView = {
    lazy var msgContentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    //: lazy var tagview: LanguageTagView = {
    lazy var tagview: FirstLayoutDelegate = {
        //: let tag = LanguageTagView.init()
        let tag = FirstLayoutDelegate()
        //: return tag
        return tag
        //: }()
    }()
}

//: extension EditLanguageChoiceView {
extension AdThen {
    //: func setMessage(_ messarray: [LanguageModel]) {
    func source(_ messarray: [FenceMeasurable]) {
        //: tagview.titles = messarray
        tagview.titles = messarray
        //: tagview.maxSelete = self.maxSelete
        tagview.maxSelete = self.maxSelete
        //: tagview.freshView()
        tagview.recordBy()
    }

    //: @objc func backAction() {
    @objc func front() {
        //: dismiss()
        scope()
    }

    //: @objc func confrimAction() {
    @objc func accountSlide() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = maxSelete == 3 ? 3:2
        dict[(kRefStoneName.replacingOccurrences(of: "common", with: "t"))] = maxSelete == 3 ? 3 : 2
        //: var content = ""
        var content = ""
        //: var name = ""
        var name = ""
        //: var secondName = [String]()
        var secondName = [String]()
        //: for (i,model) in tagview.seleteCellArray.enumerated() {
        for (i, model) in tagview.seleteCellArray.enumerated() {
            //: if tagview.seleteCellArray.count <= 1 {
            if tagview.seleteCellArray.count <= 1 {
                //: content.append(model.code ?? "")
                content.append(model.code ?? "")
                //: name = model.name ?? ""
                name = model.name ?? ""
                //: secondName.append(name)
                secondName.append(name)
                //: } else {
            } else {
                //: content.append(model.code ?? "")
                content.append(model.code ?? "")
                //: if i < tagview.seleteCellArray.count-1 {
                if i < tagview.seleteCellArray.count - 1 {
                    //: content.append(",")
                    content.append(",")
                }
                //: secondName.append(model.name ?? "")
                secondName.append(model.name ?? "")
            }
        }
        //: dict["content"] = content
        dict[(constMaxStr.replacingOccurrences(of: "term", with: "nt"))] = content
        //: if content.count <= 0 {
        if content.count <= 0 {
            //: self.dismiss()
            self.scope()
            //: return
            return
        }
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/editCountryLang"
        reqModel.requestPath = (String(main_iceCoalData.prefix(8)) + kDominantCapableUrl.replacingOccurrences(of: "box", with: "t") + "Count" + String(showEventStr.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, _, _ in

            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()

            //: if succeed {
            if succeed {
                //: if self.maxSelete == 3 {
                if self.maxSelete == 3 {
                    //: DismissReactiveCompatible.share.loginUserMode.customSecondLang = secondName
                    DismissReactiveCompatible.share.loginUserMode.customSecondLang = secondName
                    //: } else {
                } else {
                    //: DismissReactiveCompatible.share.loginUserMode.customFirstLang = name
                    DismissReactiveCompatible.share.loginUserMode.customFirstLang = name
                }

                //: self.addSuccessTagBlock?()
                self.addSuccessTagBlock?()
            }
            //: self.dismiss()
            self.scope()
        }
    }

    //: func show() {
    func head() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func scope() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }
}

//: extension EditLanguageChoiceView {
extension AdThen {
    //: func setupSubviews() {
    func stand() {
        //: backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear

        // 添加子视图
        //: addSubview(BGView)
        addSubview(BGView)
        //: BGView.addSubview(cancelBtn)
        BGView.addSubview(cancelBtn)
        //: BGView.addSubview(confirmBtn)
        BGView.addSubview(confirmBtn)
        //: BGView.addSubview(titleLb)
        BGView.addSubview(titleLb)
        //: BGView.addSubview(msgContentView)
        BGView.addSubview(msgContentView)
        //: msgContentView.addSubview(tagview)
        msgContentView.addSubview(tagview)
    }

    //: func setupSubViewsConstraint() {
    func swaddlingClothes() {
        //: BGView.snp.makeConstraints { make in
        BGView.snp.makeConstraints { make in
            //: make.leading.equalTo(27)
            make.leading.equalTo(27)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 417))
            make.height.equalTo(actualWidth(w: 417))
        }
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(24)
            make.leading.equalToSuperview().offset(24)
            //: make.bottom.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
            //: make.size.equalTo(CGSize(width: 120, height: 45))
            make.size.equalTo(CGSize(width: 120, height: 45))
        }
        //: confirmBtn.snp.makeConstraints { make in
        confirmBtn.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-24)
            make.trailing.equalToSuperview().offset(-24)
            //: make.size.bottom.equalTo(cancelBtn)
            make.size.bottom.equalTo(cancelBtn)
        }
        //: msgContentView.snp.makeConstraints { make in
        msgContentView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalTo(titleLb.snp.bottom).offset(10)
            make.top.equalTo(titleLb.snp.bottom).offset(10)
            //: make.bottom.equalTo(cancelBtn.snp.top).offset(-10)
            make.bottom.equalTo(cancelBtn.snp.top).offset(-10)
        }

        //: tagview.snp.makeConstraints { make in
        tagview.snp.makeConstraints { make in
            //: make.leading.equalTo(msgContentView)
            make.leading.equalTo(msgContentView)
            //: make.trailing.equalTo(msgContentView)
            make.trailing.equalTo(msgContentView)
            //: make.top.equalTo(titleLb.snp.bottom).offset(20)
            make.top.equalTo(titleLb.snp.bottom).offset(20)
            //: make.bottom.equalTo(msgContentView).offset(-8)
            make.bottom.equalTo(msgContentView).offset(-8)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: tagview.setframe(frame: tagview.frame)
        tagview.atAnimalFrame(frame: tagview.frame)
        //: tagview.tagContentAlignment = .left
        tagview.tagContentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: tagview.tagContentAlignment = .right
            tagview.tagContentAlignment = .right
        }
        //: tagview.backgroundColor = .white
        tagview.backgroundColor = .white
    }
}

//: struct LanguageModel: HandyJSON {
struct FenceMeasurable: HandyJSON {
    //: var name: String?
    var name: String?
    //: var code: String?
    var code: String?

    //: var isSelete = false
    var isSelete = false

    //: func equals (compareTo: LanguageModel) -> Bool {
    func enable(compareTo: FenceMeasurable) -> Bool {
        //: return
        return
            //: self.code == compareTo.code
            self.code == compareTo.code
    }
}
