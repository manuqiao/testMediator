//
//  coordinatingViewController.m
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import "coordinatingViewController.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"

@interface coordinatingViewController (Private)
- (id)init;
@end

@implementation coordinatingViewController
static coordinatingViewController *_sharedInstance = nil;

+ (coordinatingViewController*)sharedInstance
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [[self alloc] init]; // assignment not done here
            
        }
    }
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;  // assignment and return on first allocation
        }
    }
    return nil; //on subsequent allocation attempts return nil
}

- (id)init
{
    self = [super init];
    if (self) {
        _first = [[firstViewController alloc] initWithNibName:nil bundle:nil];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)buttonClick:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        switch ([(UIButton *)sender tag]) {
            case kButtonTagOpenSecondView:
            {
                secondViewController *controller = [[secondViewController alloc] initWithNibName:nil bundle:nil];
                [controller.view setFrame:self.view.frame];
                
                [_first presentViewController:controller animated:YES completion:nil];
                
                _activeController = controller;
            }
                break;
            case kButtonTagOpenThirdView:
            {
                thirdViewController *controller = [[thirdViewController alloc] initWithNibName:nil bundle:nil];
                [controller.view setFrame:self.view.frame];
                
                [_first presentViewController:controller animated:YES completion:nil];
                
                _activeController = controller;
            }
                break;
            case kButtonTagDone:
            {
                [_first dismissViewControllerAnimated:YES completion:nil];
                
                _activeController = _first;
            }
                break;
            default:
                break;
        }
    }
    NSLog(@"button click");
}

@end
