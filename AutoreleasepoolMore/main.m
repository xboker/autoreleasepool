//
//  main.m
//  AutoreleasepoolMore
//
//  Created by xiekunpeng on 2020/8/17.
//  Copyright © 2020 xboker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Model.h"


int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        for (int i = 0; i < 5;  i++) {
            Model *model = [[Model alloc] init];
        }
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
