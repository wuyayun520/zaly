// __DEBUG__
// __CLOSE_PRINT__
//
//  AssetCamera.h
//
//  Created by sluin on 16/5/4.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: @protocol STFilterCameraDelegate <NSObject>
@protocol YesterdayExceed <NSObject>

// call back in bufferQueue
//: - (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection;
- (void)add:(AVCaptureOutput *)captureOutput path:(CMSampleBufferRef)sampleBuffer showDescriptionWait:(AVCaptureConnection *)connection;

//: @end
@end

/*!
 * 封装相机采集
 */
//: @interface STFilterCamera : NSObject
@interface AssetCamera : NSObject

//: @property (nonatomic , assign) id <STFilterCameraDelegate> delegate;
@property (nonatomic , assign) id <YesterdayExceed> delegate;

//: @property (nonatomic , readonly) dispatch_queue_t bufferQueue;
@property (nonatomic , readonly) dispatch_queue_t bufferQueue;

//: @property (nonatomic , assign) AVCaptureDevicePosition devicePosition; 
@property (nonatomic , assign) AVCaptureDevicePosition devicePosition; // default AVCaptureDevicePositionFront

//: @property (nonatomic , assign) AVCaptureVideoOrientation videoOrientation;
@property (nonatomic , assign) AVCaptureVideoOrientation videoOrientation;

//: @property (nonatomic , assign) BOOL needVideoMirrored;
@property (nonatomic , assign) BOOL needVideoMirrored;

//: @property (nonatomic , strong , readonly) AVCaptureConnection *videoConnection;
@property (nonatomic , strong , readonly) AVCaptureConnection *videoConnection;

//: @property (nonatomic , copy) AVCaptureSessionPreset sessionPreset; 
@property (nonatomic , copy) AVCaptureSessionPreset sessionPreset; // default  

//: @property (nonatomic , strong) AVCaptureVideoPreviewLayer *previewLayer;
@property (nonatomic , strong) AVCaptureVideoPreviewLayer *previewLayer;

//: @property (atomic , assign) BOOL bSessionPause;
@property (atomic , assign) BOOL bSessionPause;

//: @property (nonatomic , assign) int iExpectedFPS;
@property (nonatomic , assign) int iExpectedFPS;

//: @property (nonatomic, readwrite, strong) NSDictionary *videoCompressingSettings;
@property (nonatomic, readwrite, strong) NSDictionary *videoCompressingSettings;

// old
//: @property (nonatomic , assign) int iFPS;
@property (nonatomic , assign) int iFPS;

//: - (instancetype)initWithDevicePosition:(AVCaptureDevicePosition)iDevicePosition
- (instancetype)initWithCoverMode:(AVCaptureDevicePosition)iDevicePosition
                        //: sessionPresset:(AVCaptureSessionPreset)sessionPreset
                        gravity:(AVCaptureSessionPreset)sessionPreset
                                   //: fps:(int)iFPS
                                   info:(int)iFPS
                         //: needYuvOutput:(BOOL)needYuvOutput;
                         bright:(BOOL)needYuvOutput;

//: - (void)setThrowPlace:(CGPoint)point inPreviewFrame:(CGRect)frame;
- (void)nameGlasses:(CGPoint)point listByAlways:(CGRect)frame;

//: - (void)setISOValue:(float)value;
- (void)setEigenvalueOfASquareMatrix:(float)value;

//: - (void)startRunning;
- (void)lastStart;

//: - (void)stopRunning;
- (void)stillCan;

//: - (CGRect)getScaleRect:(CGRect)rect scaleToFit:(BOOL)bScaleToFit;
- (CGRect)userDisappear:(CGRect)rect always:(BOOL)bScaleToFit;


//: @end
@end