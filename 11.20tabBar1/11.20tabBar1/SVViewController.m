//
//  SVViewController.m
//  11.20tabBar1
//
//  Created by sven on 15/11/20.
//  Copyright © 2015年 sven. All rights reserved.
//

#import "SVViewController.h"
#import "SVOneTableViewController.h"
#import "SVThreeViewController.h"
#import "SVTowViewController.h"

@interface SVViewController ()

//@property (nonatomic, strong) SVOneTableViewController *oneVC;
//@property (nonatomic, strong) SVTowViewController *twoVC;
//@property (nonatomic, strong) SVThreeViewController *threeVC;

@property (nonatomic, strong) NSMutableArray *arrVCs;

@end

@implementation SVViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self oneBtnClick:nil];
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"main%s",__func__);
}

- (IBAction)oneBtnClick:(id)sender {
//    [self.twoVC.view removeFromSuperview];
//    [self.threeVC.view removeFromSuperview];
//    self.oneVC.view.frame = CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    [self.view addSubview:self.oneVC.view];
    
    [self selectViewController:0];
    
}
- (IBAction)twoBtnClick {
//    [self.oneVC.view removeFromSuperview];
//    [self.threeVC.view removeFromSuperview];
//    self.twoVC.view.frame = CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    [self.view addSubview:self.twoVC.view];
    
    
        [self selectViewController:1];
}
- (IBAction)threeBtnClick {
//    [self.oneVC.view removeFromSuperview];
//    [self.twoVC.view removeFromSuperview];
//    self.threeVC.view.frame = CGRectMake(0, 44, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height - 44);
//    [self.view addSubview:self.threeVC.view];
    
        [self selectViewController:2];
}

- (void)selectViewController:(NSInteger)index {
//    [self.oneVC.view removeFromSuperview];
//    [self.twoVC.view removeFromSuperview];
//    [self.view removeFromSuperview];
    NSArray *arr = self.view.subviews;
    arr = nil;
//    self.view.subviews = arr;
    
    
    UIViewController *vc = self.arrVCs[index];
    vc.view.frame = CGRectMake(0, 44, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height - 44);
    [self.view addSubview:vc.view];
}

-(NSMutableArray *)arrVCs {
    SVOneTableViewController *oneVC = [[SVOneTableViewController alloc] init];
    SVTowViewController *twoVC = [[SVTowViewController alloc] init];
    SVThreeViewController *threeVC = [[SVThreeViewController alloc] init];

    if (!_arrVCs) {
        _arrVCs = @[oneVC, twoVC, threeVC];
    }
    
//    self addChildViewController:<#(nonnull UIViewController *)#>
    return _arrVCs;
}

@end
