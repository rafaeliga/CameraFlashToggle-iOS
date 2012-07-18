//
//  AppDelegate.h
//  CameraFlashToggle
//
//  Created by Rafael Iga on 7/18/12.
//  Copyright (c) 2012 RubyThree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) AVCaptureSession * torchSession;

@end
