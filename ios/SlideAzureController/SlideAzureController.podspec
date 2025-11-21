# data - 2019-7-30 16:22

Pod::Spec.new do |s|
  s.name         = "SlideAzureController"
  s.version      = "1.0.0"
  s.summary      = "iOS SlideAzureController Module."
  s.author       = { "SlideAzureController" => "SlideAzureController.me" }
  s.homepage     = "SlideAzureController"
  s.source       = { :git => "http://SlideAzureController.git", :tag => "#{s.version}" }
  s.platform     = :ios, '13.0'
  s.static_framework = true
  s.requires_arc = true
  s.source_files = 'SlideAzureController/Classes/**/*'
  s.resources = "SlideAzureController/Resources/*.bundle"
  s.vendored_libraries = 'SlideAzureController/Classes/**/*.a'
  
  # 日志库
  s.dependency 'DXMarsXlog', '~> 1.0.0'
  s.dependency 'Alamofire', '~> 5.9.1'
  s.dependency 'SnapKit', '~> 5.7.1'
  s.dependency 'RxSwift', '~> 6.9.0'
  s.dependency 'RxCocoa', '~> 6.9.0'
  s.dependency 'SwiftyJSON', '~> 5.0.2'
  s.dependency 'HandyJSON', '~> 5.0.2'
  s.dependency 'ReachabilitySwift', '~> 5.2.4'
  s.dependency 'SwiftyRSA', '~> 1.7.0'
  s.dependency 'Kingfisher', '~> 7.11.0'
  s.dependency 'Then', '~> 3.0.0'
  s.dependency 'JXBanner', '~> 0.3.6'
  s.dependency 'JXSegmentedView', '~> 1.3.0'
  s.dependency 'WCDB.swift', '~> 2.0.4'
  s.dependency 'WCDBOptimizedSQLCipher', '1.4.2'
  s.dependency 'SwiftyUserDefaults', '~> 5.3.0'
  s.dependency 'NVActivityIndicatorView', '~> 5.1.1'
  s.dependency 'KeychainSwift', '~> 24.0.0'

  s.dependency 'Firebase/Crashlytics', '~> 10.24.0'
  s.dependency 'Firebase/Messaging', '~> 10.24.0'
  s.dependency 'Firebase/Analytics', '~> 10.24.0'
  s.dependency 'Adjust', '~> 4.31.0'
  s.dependency 'TXIMSDK_Plus_iOS_Bitcode', '~> 6.6.3002'
  s.dependency 'TXLiteAVSDK_Professional', '~> 12.5.18359'
  s.dependency 'QCloudCOSXML/Transfer', '6.4.4'
  s.dependency 'GoogleSignIn', '~> 7.1.0'
  s.dependency 'GYSide', '~> 0.0.5'
  s.dependency 'pop', '~> 1.0.12'

  s.dependency 'UICountingLabel', '1.4.1'
  s.dependency 'JSONModel', '~> 1.8.0'
  s.dependency 'SVGAPlayer', '2.3.4'
  s.dependency 'QGVAPlayer', '~> 1.0.16'
  s.dependency 'YYCategories', '~> 1.0.4'
  s.dependency 'SocketRocket', '0.5.1'
  s.dependency 'TZImagePickerController/Basic'
  s.dependency 'JDStatusBarNotification', '~> 2.0.7'
  s.dependency 'MJRefresh', '~> 3.7.5'
  s.dependency 'FLAnimatedImage', '~> 1.0.17'
  s.dependency 'JXPagingView/Paging', '~> 2.1.2'

end
