//
//  TencentCaptchaViewController.m
//  tencent_captcha_function
//
//  Created by ninjaKID on 2020/8/3.
//

#import <UIKit/UIKit.h>
#import "TencentCaptchaWebView.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^TencentCaptchaCallback)(NSDictionary *data);

@interface TencentCaptchaViewController : UIViewController
- (instancetype)initWithAppId:(NSString*)appId enableDarkMode:(BOOL) isEnable;

@property (nonatomic, copy) TencentCaptchaCallback onLoaded;
@property (nonatomic, copy) TencentCaptchaCallback onSuccess;
@property (nonatomic, copy) TencentCaptchaCallback onFail;

@end

NS_ASSUME_NONNULL_END
