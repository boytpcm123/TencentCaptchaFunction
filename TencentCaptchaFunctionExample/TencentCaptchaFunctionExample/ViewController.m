//
//  ViewController.m
//  TencentCaptchaFunctionExample
//
//  Created by ninjaKID on 3/11/21.
//

#import "ViewController.h"
#import <TencentCaptchaFunction/TencentCaptchaViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btnCaptcha = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnCaptcha setTitle:@"Open Captcha" forState: UIControlStateNormal];
    btnCaptcha.backgroundColor = UIColor.grayColor;
    btnCaptcha.frame = CGRectMake(0, 0, 180, 80);
    btnCaptcha.center = self.view.center;
    [self.view addSubview:btnCaptcha];
    [btnCaptcha addTarget:self action:@selector(actionOpenCaptcha:)
    forControlEvents:UIControlEventTouchUpInside];
}

- (void)actionOpenCaptcha:(id)sender {
    
    TencentCaptchaViewController *controller = [[TencentCaptchaViewController alloc] initWithAppId:@"204123123" enableDarkMode:YES];
    controller.modalPresentationStyle = UIModalPresentationOverFullScreen;
    controller.onLoaded = ^(NSDictionary * _Nonnull data) {
        NSDictionary<NSString *, id> *eventData = @{
            @"method": @"onLoaded",
            @"data": data,
        };
        NSLog(@"%@", eventData);
    };
    controller.onSuccess = ^(NSDictionary * _Nonnull data) {
        NSDictionary<NSString *, id> *eventData = @{
            @"method": @"onSuccess",
            @"data": data,
        };
        NSLog(@"%@", eventData);
    };
    controller.onFail = ^(NSDictionary * _Nonnull data) {
        NSDictionary<NSString *, id> *eventData = @{
            @"method": @"onFail",
            @"data": data,
        };
        NSLog(@"%@", eventData);
    };
    
    [self presentViewController:controller animated:NO completion:nil];
}


@end
