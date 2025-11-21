
//: Declare String Begin

/*: "ExistentPopView deinit" :*/
fileprivate let const_neverValue:[Character] = ["Q","u","o","t","e","D","e","t","a","i","l","P","o","p","V","i"]
fileprivate let show_staffKey:String = "error charm view personalityew d"
fileprivate let showRugTitle:[Character] = ["e","i","n","i","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let showComeName:[UInt8] = [0x51,0x56,0x51,0x5c,0x10,0x4b,0x57,0x4c,0x4d,0x5a,0x22,0x11,0x8,0x50,0x49,0x5b,0x8,0x56,0x57,0x5c,0x8,0x4a,0x4d,0x4d,0x56,0x8,0x51,0x55,0x58,0x54,0x4d,0x55,0x4d,0x56,0x5c,0x4d,0x4c]

fileprivate func licenseHoney(log num: UInt8) -> UInt8 {
    let value = Int(num) - 232
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
//  ExistentPopView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class ExistentPopView: UIView {
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(const_neverValue) + String(show_staffKey.suffix(4)) + String(showRugTitle)))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.library()
        //: self.setupSubViewsConstraint()
        self.halfPush()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showComeName.map{licenseHoney(log: $0)}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.bigGallery(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.dialog()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension ExistentPopView {
    //: func show() {
    func selectedDown() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
    }

    //: @objc func dismiss() {
    @objc func night() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension ExistentPopView {
    // 添加视图
    //: private func setupSubviews() {
    private func library() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.doingTo()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func halfPush() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
