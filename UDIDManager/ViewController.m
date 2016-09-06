//
//  ViewController.m
//  UDIDManager
//
//  Created by dfhb@rdd on 16/9/5.
//  Copyright © 2016年 guojunwei. All rights reserved.
//

#import "ViewController.h"
#import "UDIDManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UDIDManager *manager = [[UDIDManager alloc] init];
    
    [UDIDManager clearUDID];
    
    NSString *udid = [UDIDManager UDID];
    if (udid == nil) {
        NSLog(@"udid %@", [UDIDManager UDID]);
        udid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        if ([UDIDManager saveUDID:udid]) {
            NSLog(@"save OK");
        } else {
            NSLog(@"save fail");
        }
    }
    
    NSLog(@"udid %@", [UDIDManager UDID]);
    
}

@end
