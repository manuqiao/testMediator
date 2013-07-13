//
//  secondViewController.h
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class coordinatingViewController;
@interface secondViewController : UIViewController
{
    coordinatingViewController *_director;
    UIButton *_button;
}
@end
