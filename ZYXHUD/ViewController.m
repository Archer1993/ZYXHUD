//
//  ViewController.m
//  ZYXHUD
//
//  Created by mac mini on 16/9/29.
//  Copyright © 2016年 Archer_Z. All rights reserved.
//

#import "ViewController.h"
#import "ZYXHUD.h"

@interface ViewController ()

@property (nonatomic, strong) ZYXHUD *hud;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showDefaultHudAction:(id)sender {
    self.hud = [[ZYXHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (IBAction)showWithLabelAction:(id)sender {
    self.hud = [[ZYXHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    self.hud.labelText = @"Hellow world";
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (IBAction)showOnlyLabelAction:(id)sender {
    self.hud = [[ZYXHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    self.hud.labelText = @"Hellow world";
    self.hud.mode = ZYXHUDModeText;
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (void)done {
    [self.hud hide];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
