
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_suitId:[UInt8] = [0xae,0xa9,0xae,0xb3,0xef,0xa4,0xa8,0xa3,0xa2,0xb5,0xfd,0xee,0xe7,0xaf,0xa6,0xb4,0xe7,0xa9,0xa8,0xb3,0xe7,0xa5,0xa2,0xa2,0xa9,0xe7,0xae,0xaa,0xb7,0xab,0xa2,0xaa,0xa2,0xa9,0xb3,0xa2,0xa3]

private func totalerestFair(both num: UInt8) -> UInt8 {
    return num ^ 199
}

/*: "nav_back_black_nor" :*/
fileprivate let k_opportunityId:[Character] = ["n","a","v","_","b","a","c","k","_"]
fileprivate let appJustFormat:String = "blamaybe"
fileprivate let constElectTitle:[Character] = ["k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class DisableThen: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.atomicQuantity7()
        //: self.setupSubViewsConstraint()
        self.baseballClub()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_suitId.map{totalerestFair(both: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.locationName(name: (String(k_opportunityId) + appJustFormat.replacingOccurrences(of: "maybe", with: "c") + String(constElectTitle))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(enroll), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension DisableThen {
    //: @objc func registerBackAction() {
    @objc func enroll() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        exitSchedule()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension DisableThen {
    //: private func setupSubviews() {
    private func atomicQuantity7() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func baseballClub() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(dataPointTitle)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
