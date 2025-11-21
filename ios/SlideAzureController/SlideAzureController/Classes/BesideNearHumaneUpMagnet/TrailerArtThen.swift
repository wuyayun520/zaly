
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let kProcessingMessage:String = "border single m maker inLaunch"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TrailerArtThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class TrailerArtThen: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(kProcessingMessage.suffix(6)) + "Image"))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}
