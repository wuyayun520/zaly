
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiPlatKey:[UInt8] = [0x2e,0x29,0x2e,0x33,0x6f,0x24,0x28,0x23,0x22,0x35,0x7d,0x6e,0x67,0x2f,0x26,0x34,0x67,0x29,0x28,0x33,0x67,0x25,0x22,0x22,0x29,0x67,0x2e,0x2a,0x37,0x2b,0x22,0x2a,0x22,0x29,0x33,0x22,0x23]

/*: "Face verification" :*/
fileprivate let appEffectUrl:String = "Face template or remaining rocket fragment"
fileprivate let noti_uniteName:[Character] = ["v","e","r","i","f","i","c","a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RatioViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoVC: TalkingBaseViewController {
class RatioViewController: WeddingLovelyRecognizerDelegate {
    //: var takedPhotoImg: UIImage?
    var takedPhotoImg: UIImage?

    //: init(photoImage: UIImage) {
    init(photoImage: UIImage) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.takedPhotoImg = photoImage
        self.takedPhotoImg = photoImage
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiPlatKey.map{$0^71}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        rankSlow(isOpen: false)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        rankSlow(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Face verification".localized
        title = (String(appEffectUrl.prefix(5)) + String(noti_uniteName)).localized
        //: self.createUI()
        self.evaluate()
        //: self.createUIConstraint()
        self.positiveConstraint()
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingVerificationTakePhotoView = {
    lazy var mainView: EngineeringReactiveCompatible = {
        //: let view = TalkingVerificationTakePhotoView()
        let view = EngineeringReactiveCompatible()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingVerificationTakePhotoVC {
extension RatioViewController {
    //: func requestSubmitPhoto(photo: UIImage) {
    func speedy(photo: UIImage) {
        // 图片压缩成data  auth_pic : data
        //: ProgressHUD.show(superView: view)
        InsertProgressHUD.superConnect(superView: view)
        //: TalkingUserRequestManager.func__realVerifyUploadPic(pic: photo) { succeed, result, errorModel in
        ThresholdLevelRequestManager.uploadNote(pic: photo) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()

            //: if succeed == true {
            if succeed == true {
                //: DismissReactiveCompatible.share.loginUserMode.isTPAuth = "1"
                DismissReactiveCompatible.share.loginUserMode.isTPAuth = "1"
                //: let vc = TalkingEditProfilesVC()
                let vc = CutProfilesVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: ProgressHUD.toast(errorModel?.errorMsg)
                InsertProgressHUD.overDeadline(errorModel?.errorMsg)
            }
        }
    }
}

// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

//: extension TalkingVerificationTakePhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension RatioViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: func retakePhoto() {
    func user() {
        //: let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        let isAvailable = UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)
        //: let imagePicker = UIImagePickerController()
        let imagePicker = UIImagePickerController()
        //: imagePicker.sourceType = .photoLibrary
        imagePicker.sourceType = .photoLibrary
        //: if isAvailable {
        if isAvailable {
            //: imagePicker.sourceType = .camera
            imagePicker.sourceType = .camera
        }
        //: imagePicker.delegate = self
        imagePicker.delegate = self
        //: present(imagePicker, animated: true, completion: {})
        present(imagePicker, animated: true, completion: {})
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)

        //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
        if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            //: mainView.rightPhotoImageView.image = photo
            mainView.rightPhotoImageView.image = photo
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoVC {
extension RatioViewController {
    //: func createUI() {
    func evaluate() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: mainView.rightPhotoImageView.image = self.takedPhotoImg
        mainView.rightPhotoImageView.image = self.takedPhotoImg
        //: mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) -> Void in
        mainView.submitClickBlock = { [weak self] (_ photoImage: UIImage) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.requestSubmitPhoto(photo: photoImage)
            self.speedy(photo: photoImage)
            //: return
        }
        //: mainView.retakeClickBlock = { [weak self] () -> Void in
        mainView.retakeClickBlock = { [weak self] () in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.retakePhoto()
            self.user()
            //: return
        }
    }

    //: func createUIConstraint() {
    func positiveConstraint() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
