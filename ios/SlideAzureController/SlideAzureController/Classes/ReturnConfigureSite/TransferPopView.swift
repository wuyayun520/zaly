
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_iconMsg:[UInt8] = [0xe8,0xef,0xe8,0xf5,0xa9,0xe2,0xee,0xe5,0xe4,0xf3,0xbb,0xa8,0xa1,0xe9,0xe0,0xf2,0xa1,0xef,0xee,0xf5,0xa1,0xe3,0xe4,0xe4,0xef,0xa1,0xe8,0xec,0xf1,0xed,0xe4,0xec,0xe4,0xef,0xf5,0xe4,0xe5]

private func competeAir(sale num: UInt8) -> UInt8 {
    return num ^ 129
}

/*: "UITableViewCellContentView" :*/
fileprivate let main_tabName:String = "UITableViapplication drop filter"
fileprivate let data_concentrationPath:String = "ewCellmanager right policy no"
fileprivate let noti_netData:[Character] = ["n","t","V","i","e","w"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransferPopView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/8.
//

//: import UIKit
import UIKit

//: typealias EndPopBlock = () -> Void
typealias EndPopBlock = () -> Void

//: class TalkingPopView: UIView {
class TransferPopView: UIView {
    //: var endPopBlock: EndPopBlock!
    var endPopBlock: EndPopBlock!

    //: var subView: UIView?
    var subView: UIView?

    //: var isRemoveTapGes: Bool = false {
    var isRemoveTapGes: Bool = false {
        //: didSet {
        didSet {
            //: guard isRemoveTapGes == true else {return}
            guard isRemoveTapGes == true else { return }
            //: guard self.gestureRecognizers?.count ?? 0 > 0 else { return }
            guard self.gestureRecognizers?.count ?? 0 > 0 else { return }
            //: self.removeGestureRecognizer((self.gestureRecognizers?.first)!)
            self.removeGestureRecognizer((self.gestureRecognizers?.first)!)
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6000)
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6000)

        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissView))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(locationCan))
        //: tapGesture.delegate = self
        tapGesture.delegate = self
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_iconMsg.map{competeAir(sale: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: func initWithView(view: UIView) {
    func streetSmart(view: UIView) {
        //: subView = view
        subView = view
        //: self.addSubview(subView ?? UIView.init())
        self.addSubview(subView ?? UIView())
    }

    //: @objc func dismissView() {
    @objc func locationCan() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { _ in
        } completion: { _ in
            //: if self.endPopBlock != nil {
            if self.endPopBlock != nil {
                //: self.endPopBlock()
                self.endPopBlock()
            }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.subView = nil
            self.subView = nil
        }
    }

    //: func showView() {
    func destroyFor() {
        //: self.currentViewController()?.view.endEditing(true)
        self.exitSchedule()?.view.endEditing(true)
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: }, completion: nil)
        }, completion: nil)
    }

    //: func showInView(view: UIView) {
    func withoutView(view: UIView) {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: self.alpha = 0
        self.alpha = 0
        //: view.addSubview(self)
        view.addSubview(self)
        //: view.bringSubviewToFront(self)
        view.bringSubviewToFront(self)
        //: showView()
        destroyFor()
    }
}

//: extension TalkingPopView: UIGestureRecognizerDelegate {
extension TransferPopView: UIGestureRecognizerDelegate {
    // MARK: - tapGesture delegate

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    func gestureRecognizer(_: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        //: let classStr = NSStringFromClass((touch.view?.classForCoder)!)
        let classStr = NSStringFromClass((touch.view?.classForCoder)!)
        //: if classStr == "UITableViewCellContentView" {
        if classStr == (String(main_tabName.prefix(9)) + String(data_concentrationPath.prefix(6)) + "Conte" + String(noti_netData)) {
            //: return false
            return false
            //: }else {
        } else {
            //: return true
            return true
        }
    }
}
