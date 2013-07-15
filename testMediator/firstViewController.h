//
//  firstViewController.h
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class coordinatingViewController;
@interface firstViewController : UIViewController
{
    coordinatingViewController *_director;
    UIButton *_btnOpenSecond;
    UIButton *_btnOpenThird;
}
@end
