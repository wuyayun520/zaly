
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_deedValue:[UInt8] = [0xd6,0xd1,0xd6,0xcb,0x97,0xdc,0xd0,0xdb,0xda,0xcd,0x85,0x96,0x9f,0xd7,0xde,0xcc,0x9f,0xd1,0xd0,0xcb,0x9f,0xdd,0xda,0xda,0xd1,0x9f,0xd6,0xd2,0xcf,0xd3,0xda,0xd2,0xda,0xd1,0xcb,0xda,0xdb]

/*: "Not reaching the required level" :*/
fileprivate let constExpressionOffPersonalityUrl:[UInt8] = [0x1a,0x3b,0x20,0x74,0x26,0x31,0x35,0x37,0x3c,0x3d,0x3a,0x33,0x74,0x20,0x3c,0x31,0x74,0x26,0x31,0x25,0x21,0x3d,0x26,0x31,0x30,0x74,0x38,0x31,0x22,0x31,0x38]

private func gameGallery(currency num: UInt8) -> UInt8 {
    return num ^ 84
}

/*: "text_fee" :*/
fileprivate let const_veryUrl:String = "joint shine range patterntext_"
fileprivate let kLocationText:[Character] = ["f","e","e"]

/*: "video_fee" :*/
fileprivate let kParticlePlaceGapContent:String = "video_male half someone tool no"
fileprivate let main_installId:String = "frepresentative"

/*: "voice_fee" :*/
fileprivate let showSoulName:String = "voice_nail certain wide"
fileprivate let mainErrMsg:String = "froad"

/*: "value" :*/
fileprivate let user_editorUrl:String = "VALUE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CeremonialView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemaleChatSetView: UIView {
class CeremonialView: UIView {
    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [PriceHandyJSON] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = TalkingPopView()
    var popView = TransferPopView()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = appInviteValue
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: PriceHandyJSON) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.readingSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_deedValue.map{$0^191}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.doingTo()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(RunningThen.self, forCellReuseIdentifier: RunningThen.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension CeremonialView: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: RunningThen.className(), for: indexPath) as! RunningThen
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: PriceHandyJSON = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.fit(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: PriceHandyJSON = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(DismissReactiveCompatible.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(DismissReactiveCompatible.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.enablece(showMsg: String(bytes: constExpressionOffPersonalityUrl.map{gameGallery(currency: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        guide(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func guide(model: PriceHandyJSON) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (String(const_veryUrl.suffix(5)) + String(kLocationText))
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (String(kParticlePlaceGapContent.prefix(6)) + main_installId.replacingOccurrences(of: "representative", with: "ee"))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (String(showSoulName.prefix(6)) + mainErrMsg.replacingOccurrences(of: "road", with: "ee"))
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(user_editorUrl.lowercased())] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        FlyerThen.orientation(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.cuttingEdgeDismiss()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.enablece(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension CeremonialView {
    // 添加视图
    //: private func setupSubviews() {
    private func readingSubviews() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: main_nameData, width: main_logStr, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.streetSmart(view: self)
        //: popView.showInView(view: DepictionThen.getWindow())
        popView.withoutView(view: DepictionThen.fossilization())
    }

    //: @objc func dismissView() {
    @objc func cuttingEdgeDismiss() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: main_nameData, width: main_logStr, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.locationCan()
        }
    }

    //: func showView() {
    func social() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: main_nameData - self.contentHeight, width: main_logStr, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
