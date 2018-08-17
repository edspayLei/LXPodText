 //
//  FanbeiCreditManager.h
//  FanbeiCreditSDK
//
//  Created by ryan on 2018/6/8.
//  Copyright © 2018年 Fanbei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FanbeiCreditManager : NSObject

/**
 初始化

 @param appId               开发者在申请的appId
 @param mobile              用户手机号
 @param finish              认证结果的回调为yes时可以调取SDK，为no时表示初始化失败
 */
+ (void)initWithAppId:(NSString *)appId mobile:(NSString *)mobile finish:(void(^)(BOOL License))finish;

/**
 打开认证首页 需要在授权成功后调用

 @param viewController      当前viewController
 @param mobile              用户手机号
 */
+ (void)startFanbeiCredit:(UIViewController *)viewController mobile:(NSString *)mobile;

/**
 *  获取SDK是否授权
 *
 *  @return 是否授权
 */
+ (BOOL)getLicense;

/**
 设置是否在console输出sdk的log信息

 @param enabled 默认NO(不输出log); 设置为YES, 输出可供调试参考的log信息. 发布产品时必须设置为NO
 */
+ (void)setLogEnabled:(BOOL)enabled;


/**
 芝麻信用完成的回调
 */
+ (void)zmAuthenticateCompleteCallback;

@end

NS_ASSUME_NONNULL_END
