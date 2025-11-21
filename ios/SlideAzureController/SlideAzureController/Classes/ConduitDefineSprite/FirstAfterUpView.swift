
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let user_shotMessage:[Character] = ["I","n","c","r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let const_burnMessage:[Character] = ["D","e"]
fileprivate let constDisableFormat:[Character] = ["c","r","e","a","s","e","："]

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_photoStr:[UInt8] = [0xfd,0xfa,0xfd,0xe0,0xbc,0xf7,0xfb,0xf0,0xf1,0xe6,0xae,0xbd,0xb4,0xfc,0xf5,0xe7,0xb4,0xfa,0xfb,0xe0,0xb4,0xf6,0xf1,0xf1,0xfa,0xb4,0xfd,0xf9,0xe4,0xf8,0xf1,0xf9,0xf1,0xfa,0xe0,0xf1,0xf0]

private func hereSolar(button num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "bg_talk_closed_tc" :*/
fileprivate let appOperateAroundStr:[Character] = ["b","g","_","t","a"]
fileprivate let appLateFeeElectronicMessage:[Character] = ["l","k","_","c","l","o","s","e","d","_","t","c"]

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let constLoadText:String = "bg_tnap fort"
fileprivate let const_grayPath:String = "fileed"
fileprivate let k_homeUrl:String = "intimatmin"

/*: "btn_intimate_close" :*/
fileprivate let const_amberId:[Character] = ["b","t","n","_","i","n","t","i","m","a","t","e","_","c","l","o","s","e"]

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let show_haveId:[UInt8] = [0x5b,0x7d,0x8a,0x7d,0x82,0x7b,0x34,0x7b,0x7d,0x7a,0x88,0x87,0x34,0xf7,0x94,0x95,0x81,0x75,0x7f,0x7d,0x82,0x7b,0x34,0x77,0x75,0x80,0x80,0x87,0x34,0x75,0x82,0x78,0x34,0x87,0x79,0x82,0x78,0x7d,0x82,0x7b,0x34,0x84,0x75,0x7d,0x78,0x34,0x81,0x79,0x87,0x87,0x75,0x7b,0x79,0x87,0x34,0x77,0x75,0x82,0x34,0x7d,0x82,0x77,0x86,0x79,0x75,0x87,0x79,0x34,0x7d,0x82,0x88,0x7d,0x81,0x75,0x77,0x8d,0x92]

fileprivate func tradeCurProfessional(since num: UInt8) -> UInt8 {
    let value = Int(num) - 20
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let kBagMsg:String = "identity bird common1 coin"
fileprivate let k_referUrl:String = "ntishot"
fileprivate let main_containerKey:String = "acadministrative"

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let app_womanResumeSectionMsg:[UInt8] = [0xe4,0xcb,0x8d,0xce,0xc2,0xc4,0xc3,0xde,0x8d,0xcc,0xdf,0xc8,0x8d,0xc3,0xc2,0xd9,0x8d,0xce,0xc2,0xc3,0xde,0xd8,0xc0,0xc8,0xc9,0x8d,0xda,0xc4,0xd9,0xc5,0xc4,0xc3,0x8d,0xcc,0x8d,0xce,0xc8,0xdf,0xd9,0xcc,0xc4,0xc3,0x8d,0xdd,0xc8,0xdf,0xc4,0xc2,0xc9,0x8d,0xc2,0xcb,0x8d,0xd9,0xc4,0xc0,0xc8,0x81,0x8d,0xd9,0xc5,0xc8,0x8d,0xc4,0xc3,0xd9,0xc4,0xc0,0xcc,0xce,0xd4,0x8d,0xc1,0xc8,0xdb,0xc8,0xc1,0x8d,0xda,0xc4,0xc1,0xc1,0x8d,0xcf,0xc8,0x8d,0xdf,0xc8,0xc9,0xd8,0xce,0xc8,0xc9,0x83]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FirstAfterUpView.swift
//  SlideAzureController
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class FirstAfterUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(user_shotMessage)).localized, (String(const_burnMessage) + String(constDisableFormat)).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.countoSubviews()
        //: self.setupSubViewsConstraint()
        self.deputize()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_photoStr.map{hereSolar(button: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc")
        imag.image = UIImage.locationName(name: (String(appOperateAroundStr) + String(appLateFeeElectronicMessage)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.locationName(name: (String(constLoadText.prefix(4)) + "alk_cl" + const_grayPath.replacingOccurrences(of: "file", with: "os") + "_tc_" + k_homeUrl.replacingOccurrences(of: "min", with: "e")))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(SymbolThen.self, forCellReuseIdentifier: SymbolThen.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(const_amberId))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(proximateNestleThroughSnapBirthday), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension FirstAfterUpView {
    //: @objc private func closeBtnClick() {
    @objc private func proximateNestleThroughSnapBirthday() {
        //: dismiss()
        location()
    }

    //: func show() {
    func luculent() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
    }

    //: @objc func dismiss() {
    @objc func location() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension FirstAfterUpView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: SymbolThen.className(), for: indexPath) as! SymbolThen
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.costOwn(msg: String(bytes: show_haveId.map{tradeCurProfessional(since: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.costOwn(msg: (String(kBagMsg.suffix(6)) + " = 1 i" + k_referUrl.replacingOccurrences(of: "shot", with: "m") + main_containerKey.replacingOccurrences(of: "administrative", with: "y")).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.costOwn(msg: String(bytes: app_womanResumeSectionMsg.map{$0^173}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 16)
        titleLab.font = UIFont.pingfang(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension FirstAfterUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func countoSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func deputize() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
