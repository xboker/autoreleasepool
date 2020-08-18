//
//  ViewController1.m
//  AutoreleasepoolMore
//
//  Created by xiekunpeng on 2020/8/17.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController1.h"
#import "Model.h"

extern void _objc_autoreleasePoolPrint(void);
 
@interface ViewController1 ()
@end

@implementation ViewController1
///在工程设置为此文件为MRC
- (void)viewDidLoad {
    [super viewDidLoad];
    @autoreleasepool {
        Model *model = [[[Model alloc] init] autorelease];
        Model *model2 = [[[Model alloc] init] autorelease];
        @autoreleasepool {
            Model *model2 = [[[Model alloc] init] autorelease];
            _objc_autoreleasePoolPrint();
        }
     }
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s", __func__);

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s", __func__);

}


@end
