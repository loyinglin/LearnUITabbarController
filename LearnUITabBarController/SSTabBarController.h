//
//  SSTabBarController.h
//  LearnUITabBarController
//
//  Created by loyinglin on 2022/9/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSTabBarController : UITabBarController

@property (nonatomic, strong) dispatch_block_t callback;

@end

NS_ASSUME_NONNULL_END
