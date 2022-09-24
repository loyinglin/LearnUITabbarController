//
//  ViewController.m
//  LearnUITabBarController
//
//  Created by loyinglin on 2022/9/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    UITabBarItem *tabItem = [[UITabBarItem alloc] initWithTitle:@"测试" image:nil selectedImage:nil];
    //设置Tab
    self.tabBarItem = tabItem;
    self.title = @"测试title";
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        if (self.navigationController) [self.navigationController popViewControllerAnimated:NO];
//    });
    
    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"test" style:UIBarButtonItemStylePlain target:self action:@selector(onLeft)]];
}

- (void)onLeft {
    [self.navigationController popViewControllerAnimated:NO];
}



@end
