//
//  secondViewController.m
//  testMediator
//
//  Created by qiaorujia on 7/13/13.
//  Copyright (c) 2013 qiaorujia. All rights reserved.
//

#import "secondViewController.h"
#import "coordinatingViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button setFrame:CGRectMake(0, 0, 100, 50)];
    [_button setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)];
    [_button setTitle:@"3" forState:UIControlStateNormal];
    [_button addTarget:_director action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_button setEnabled:YES];
    [self.view addSubview:_button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
