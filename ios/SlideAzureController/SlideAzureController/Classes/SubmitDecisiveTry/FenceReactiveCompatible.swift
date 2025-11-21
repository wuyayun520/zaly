// __DEBUG__
// __CLOSE_PRINT__
//
//  FenceReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationVC: TalkingBaseViewController {
class FenceReactiveCompatible: WeddingLovelyRecognizerDelegate {

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.bitRead()
        //: self.createUIConstraint()
        self.educe()
    }
    
    // MARK: - Lazy load
    //: lazy var mainView: TalkingFinalVerificationView = {
    lazy var mainView: FenceView = {
        //: let view = TalkingFinalVerificationView()
        let view = FenceView()
        //: return view
        return view
    //: }()
    }()
}

// MARK: - Event
//: extension TalkingFinalVerificationVC {
extension FenceReactiveCompatible {
    //: override func naviPopback() {
    override func popbackResult() {
        /// 注册时真人认证
        //: for index in 0..<(self.navigationController?.viewControllers.count)! {
        for index in 0..<(self.navigationController?.viewControllers.count)! {
            //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingLoginEditAuthAndVideoVC.self) == true {
            if self.navigationController?.viewControllers[index] .isKind(of: TimeOfLifeRecognizerDelegate.self) == true {
                //: let vc = (self.navigationController?.viewControllers[index] as? TalkingLoginEditAuthAndVideoVC)!
                let vc = (self.navigationController?.viewControllers[index] as? TimeOfLifeRecognizerDelegate)!
                //: self.navigationController?.popToViewController(vc, animated: true)
                self.navigationController?.popToViewController(vc, animated: true)
                //: return
                return
            }
        }
        
        //: self.navigationController?.popToRootViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: - UI
//: extension TalkingFinalVerificationVC {
extension FenceReactiveCompatible {
    //: func createUI() {
    func bitRead() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
    }
    
    //: func createUIConstraint() {
    func educe() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
