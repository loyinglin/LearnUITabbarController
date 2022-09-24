//
//  SSTabBarController.m
//  LearnUITabBarController
//
//  Created by loyinglin on 2022/9/18.
//

#import "SSTabBarController.h"
#import "ViewController.h"

@interface SSTabBarController ()

@end

@implementation SSTabBarController

@synthesize viewControllers = _viewControllers;

- (instancetype)init {
    self = [super init];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor redColor];
    
//    self.selectedIndex = 1;
    
//    UITabBar *tabBar=self.tabBar;
//    UITabBarItem *itemFirst=[tabBar.items objectAtIndex:0];
//    itemFirst.title=@"tab1";
//    UITabBarItem *itemSecond=[tabBar.items objectAtIndex:1];
//    itemSecond.title=@"tab2";
//    UITabBarItem *itemThree=[tabBar.items objectAtIndex:2];
//    dispatch_sync(dispatch_get_global_queue(0, 0), ^{
//    if (self.callback) self.callback();
//    });
//    sleep(1);
}

- (void)viewWillAppear:(BOOL)animated {
//    if (self.callback) {
//        self.callback();
//    }
    [super viewWillAppear:animated];
}

- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers {
    _viewControllers = viewControllers;
    for (UIViewController *item in viewControllers) {
        [self addChildViewController:item];
    }
}

@end
