
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_snapKey:[UInt8] = [0xaa,0xaf,0xaa,0xb5,0x69,0xa4,0xb0,0xa5,0xa6,0xb3,0x7b,0x6a,0x61,0xa9,0xa2,0xb4,0x61,0xaf,0xb0,0xb5,0x61,0xa3,0xa6,0xa6,0xaf,0x61,0xaa,0xae,0xb1,0xad,0xa6,0xae,0xa6,0xaf,0xb5,0xa6,0xa5]

fileprivate func herBlind(say num: UInt8) -> UInt8 {
    let value = Int(num) - 65
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "free_photo_deleteBtn" :*/
fileprivate let showHoneyUserMessage:[Character] = ["f","r","e","e","_"]
fileprivate let showLoseData:[Character] = ["p","h","o","t","o","_","d","e","l","e","t","e","B","t","n"]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let dataNativePath:String = "replace securebtn_"
fileprivate let noti_enableMsg:String = "mic_stfront ya access"
fileprivate let mainNumbSecondSlowName:String = "oable"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellResolveReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: let FreeCollectionViewCell_width = 90.0
let dataBeginId = 90.0

//: class FreeCollectionViewCell: UICollectionViewCell {
class CellResolveReactiveCompatible: UICollectionViewCell {
    // 删除按钮
    //: var deleteBlock: (() -> Void)?
    var deleteBlock: (() -> Void)?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_snapKey.map{herBlind(say: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        picture()
        //: setupSubViewsConstraint()
        personalProperty()
    }

    // MARK: - Setter

    //: var isMoving: Bool {
    var isMoving: Bool {
        //: get {
        get {
            //: return self.isMoving
            return self.isMoving
        }
        //: set {
        set {
            //: self.isMoving = newValue
            self.isMoving = newValue
            //: self.releaseImageView.isHidden = self.isMoving
            self.releaseImageView.isHidden = self.isMoving
        }
    }

    // MARK: - Lazy load

    //: lazy var releaseImageView: UIImageView = {
    lazy var releaseImageView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 4.0
        v.layer.cornerRadius = 4.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let b = UIButton()
        let b = UIButton()
        //: b.setImage(UIImage.BundleImageNamed(name: "free_photo_deleteBtn"), for: .normal)
        b.setImage(UIImage.locationName(name: (String(showHoneyUserMessage) + String(showLoseData))), for: .normal)
        //: b.addTarget(self, action: #selector(deleteButtonClick), for: .touchUpInside)
        b.addTarget(self, action: #selector(universal), for: .touchUpInside)
        //: return b
        return b
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor")
        imag.image = UIImage.locationName(name: (String(dataNativePath.suffix(4)) + "dyna" + String(noti_enableMsg.prefix(6)) + "op_n" + mainNumbSecondSlowName.replacingOccurrences(of: "able", with: "r")))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension FreeCollectionViewCell {
extension CellResolveReactiveCompatible {
    // MARK: - Event

    //: @objc func deleteButtonClick() {
    @objc func universal() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!()
            self.deleteBlock!()
        }
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionViewCell {
extension CellResolveReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func picture() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(releaseImageView)
        self.addSubview(releaseImageView)
        //: self.addSubview(deleteBtn)
        self.addSubview(deleteBtn)
        //: self.addSubview(playimageView)
        self.addSubview(playimageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func personalProperty() {
        //: releaseImageView.snp.makeConstraints { make in
        releaseImageView.snp.makeConstraints { make in
            //: make.top.leading.size.equalToSuperview()
            make.top.leading.size.equalToSuperview()
        }
        //: deleteBtn.snp.makeConstraints { make in
        deleteBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
    }
}
