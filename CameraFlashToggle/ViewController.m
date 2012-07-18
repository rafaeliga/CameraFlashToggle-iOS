//
//  ViewController.m
//  CameraFlashToggle
//
//  Created by Rafael Iga on 7/18/12.
//  Copyright (c) 2012 RubyThree. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flashOn:(id)sender {
    // test if this class even exists to ensure flashlight is turned on ONLY for iOS 4 and above
    Class captureDeviceClass = NSClassFromString(@"AVCaptureDevice");
    if (captureDeviceClass != nil) {
        
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        
        [device lockForConfiguration:nil];
        
        [device setTorchMode:AVCaptureTorchModeOn];
        [device setFlashMode:AVCaptureFlashModeOn];
        
        [device unlockForConfiguration];
        
    }
}

- (IBAction)flashOff:(id)sender {
    // test if this class even exists to ensure flashlight is turned on ONLY for iOS 4 and above
    Class captureDeviceClass = NSClassFromString(@"AVCaptureDevice");
    if (captureDeviceClass != nil) {
        
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        
        [device lockForConfiguration:nil];
        
        NSLog(@"[device] device: %i", (int)device.torchActive);
        
        [device setTorchMode:AVCaptureTorchModeOff];
        [device setFlashMode:AVCaptureFlashModeOff];
        
        [device unlockForConfiguration];
        
    }
}

- (IBAction)flashToggle:(id)sender {
    // test if this class even exists to ensure flashlight is turned on ONLY for iOS 4 and above
    Class captureDeviceClass = NSClassFromString(@"AVCaptureDevice");
    if (captureDeviceClass != nil) {
        
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        
        [device lockForConfiguration:nil];
        
        if(device.torchActive) {
            [device setTorchMode:AVCaptureTorchModeOff];
            [device setFlashMode:AVCaptureFlashModeOff];
        } else {
            [device setTorchMode:AVCaptureTorchModeOn];
            [device setFlashMode:AVCaptureFlashModeOn];
        }
        
        [device unlockForConfiguration];
        
    }
}
@end
