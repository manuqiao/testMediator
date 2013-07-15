//
//  coordinatingViewController.h
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class firstViewController;
@class secondViewController;
@class thirdViewController;

typedef enum
{
    kButtonTagDone,
    kButtonTagOpenSecondView,
    kButtonTagOpenThirdView
}ButtonTag;
@interface coordinatingViewController : UIViewController

+ (coordinatingViewController*)sharedInstance;
- (void)buttonClick:(id)sender;

@property (nonatomic, readonly) firstViewController *first;
@property (nonatomic, readonly) UIViewController *activeController;
@end
