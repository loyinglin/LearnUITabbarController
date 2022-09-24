//
//  AppDelegate.m
//  LearnUITabBarController
//
//  Created by loyinglin on 2022/9/13.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SSTabBarController.h"

@interface AppDelegate ()

@property (nonatomic, strong) UINavigationController *navigationVC;
@property (nonatomic, strong) SSTabBarController *tabVC;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    SSTabBarController *vc = [SSTabBarController new];
    vc.tabBar.backgroundColor = [UIColor whiteColor];
    NSMutableArray *arr = [NSMutableArray new];
    {
        ViewController *vc1 = [ViewController new];
        [arr addObject:vc1];
    }
    
    {
        ViewController *vc1 = [ViewController new];
        [arr addObject:vc1];
    }
    
    {
        ViewController *vc1 = [ViewController new];
        [arr addObject:vc1];
    }
    
    {
        ViewController *vc1 = [ViewController new];
        [arr addObject:vc1];
    }
    
    [vc setViewControllers:arr];
    self.tabVC = vc;
    self.navigationVC = [[UINavigationController alloc] init];
    NSMutableArray *naviArr = [NSMutableArray new];
    [naviArr addObject:vc];
    ViewController *itemVC = [ViewController new];
    [naviArr addObject:itemVC];
//    [self.navigationVC pushViewController:itemVC animated:NO];
    [self.navigationVC setViewControllers:naviArr];
    self.window.rootViewController = self.navigationVC;
    
    
    [self.tabVC setCallback:^{
        [self testAnotherTabbarVC];
    }];
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self testAnotherTabbarVC];
//    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self testAnotherTabbarVC];
    });
    return YES;
}

- (void)testAnotherTabbarVC {
    UITabBarController *anotherTabbarVC = [UITabBarController new];
//    NSMutableArray *arr = [NSMutableArray new];
//    [arr addObject:self.tabVC.viewControllers.firstObject];
    
//    ViewController *vc2 = [ViewController new];
//    [arr addObject:vc2];
//    anotherTabbarVC.viewControllers = arr;
//
//    ViewController *vc3 = [ViewController new];
//    [arr addObject:vc3];
//    anotherTabbarVC.viewControllers = arr;
    [anotherTabbarVC addChildViewController:self.tabVC.viewControllers.firstObject];
    
//    NSMutableArray *naviArr = [[NSMutableArray alloc] initWithArray:self.navigationVC.viewControllers];
//    [naviArr replaceObjectAtIndex:0 withObject:anotherTabbarVC];
//    self.navigationVC.viewControllers = naviArr;
}

- (UIWindow *)window {
    if (!_window) {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _window.backgroundColor = [UIColor whiteColor];
        [_window makeKeyAndVisible];
    }
    return _window;
}

@end
