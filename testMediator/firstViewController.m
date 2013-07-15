//
//  firstViewController.m
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import "firstViewController.h"
#import "coordinatingViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _director = [coordinatingViewController sharedInstance];
        [self.view setBackgroundColor:[UIColor redColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _btnOpenSecond = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnOpenSecond setFrame:CGRectMake(0, 0, 100, 50)];
    [_btnOpenSecond setCenter:CGPointMake(self.view.frame.size.width/2-60, self.view.frame.size.height/2)];
    [_btnOpenSecond setTitle:@"2" forState:UIControlStateNormal];
    [_btnOpenSecond addTarget:_director action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnOpenSecond setTag:kButtonTagOpenSecondView];
    [self.view addSubview:_btnOpenSecond];
    
    _btnOpenThird = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btnOpenThird setFrame:CGRectMake(0, 0, 100, 50)];
    [_btnOpenThird setCenter:CGPointMake(self.view.frame.size.width/2+60, self.view.frame.size.height/2)];
    [_btnOpenThird setTitle:@"3" forState:UIControlStateNormal];
    [_btnOpenThird addTarget:_director action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnOpenThird setTag:kButtonTagOpenThirdView];
    [self.view addSubview:_btnOpenThird];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
