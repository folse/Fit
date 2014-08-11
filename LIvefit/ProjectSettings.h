//
//  ProjectSettings.h
//  Folse
//
//  Created by Folse on 5/11/13.
//  Copyright (c) 2013 Folse. All rights reserved.
//

#import "MobClick.h"
#import "YSpinKitView.h"
#import "AFNetworking.h"
#import "MBProgressHUD.h"
#import "FSTableViewController.h"
#import <Parse/Parse.h>

#define s(content) NSLog(@"%@", content);
#define i(content) NSLog(@"%d", content);
#define f(content) NSLog(@"%f", content);

#define USER [NSUserDefaults standardUserDefaults]
#define USER_ID [USER valueForKey:@"userId"]
#define USER_NAME [USER valueForKey:@"userName"]
#define USER_LOGIN [USER boolForKey:@"userLogined"]
#define APP_COLOR [UIColor colorWithRed:18.0/255.0 green:168.0/255.0 blue:255.0/255.0 alpha:1.0]

#define FIRST_LOAD [USER boolForKey:@"isFirstLoad"]
#define PAGE_ID [USER valueForKey:@"pageId"]

#define STORY_BOARD [UIStoryboard storyboardWithName:@"Main" bundle:nil]

#define e(content) [MobClick event:content];

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define ADD_HUD \
HUD = [[MBProgressHUD alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];\
HUD.center = self.view.center;\
HUD.square = YES;\
HUD.margin = 15;\
HUD.minShowTime = 1;\
HUD.mode = MBProgressHUDModeCustomView;\
HUD.customView = [[YSpinKitView alloc] initWithStyle:YSpinKitViewStyleBounce color:APP_COLOR];\
[[UIApplication sharedApplication].keyWindow addSubview:HUD];\

#define NetWork_Error \
[HUD hide:YES]; \
UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"服务器出现问题" delegate:self cancelButtonTitle:@"稍后再试" otherButtonTitles:nil, nil]; \
[alertView show]; \

#ifndef weidian_CommonDefine_h
#define weidian_CommonDefine_h

#define lg(value)  DLog(@"%@",[@(value) description]);

#define UmengCrashEnable 1
#define UmengLogEnable 0
#define UmengChannelId  @"App Store"
#define UMENG_APP_KEY  @"53c5206c56240b45ff08f61e"

#define FONT(x) [UIFont systemFontOfSize:x]

//documents structure of application
#define APP_DOCUMENT                [NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define APP_LIBRARY                 [NSSearchPathForDirectoriesInDomains (NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define APP_CACHES_PATH             [NSSearchPathForDirectoriesInDomains (NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define APP_USERINFO_PATH           userInfoPath()

#pragma mark -
#pragma mark Common Define

#define ApplicationDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)

#define AppVersionShort [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define AppVersionBuild [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#define AppVersion      [NSString stringWithFormat:@"%@.%@",AppVersionShort,AppVersionBuild]

#define Deveice  (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)?@"iPad":@"iPhone"

#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define USER_DEFAULTS [NSUserDefaults standardUserDefaults]

#define ImageFromRAM(_pointer) [UIImage imageNamed:_pointer]
#define ImageFromFile(_pointer) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:_pointer ofType:nil]]

#define VIEWWITHTAG(_OBJECT, _TAG) [_OBJECT viewWithTag : _TAG]

#define degreesToRadian(x) (M_PI * (x) / 180.0)
#define radianToDegrees(radian) (radian*180.0)/(M_PI)

#define NSStringFromValue(value) [@(value) description]

#define CLEARCOLOR [UIColor clearColor]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define RGBLOG(RGBValue) NSLog(@"%f %f %f",((float)((RGBValue & 0xFF0000) >> 16)),((float)((RGBValue & 0xFF00) >> 8)),((float)(RGBValue & 0xFF)))

//粉色
#define kColorPink  UIColorFromRGB(0xf8949a)
//桃红
#define kColorPeach UIColorFromRGB(0xed6160)
//棕色
#define kColorBrown RGBACOLOR(60,35,19,1)


#define BBlockWeakObject(o) __weak __typeof__((__typeof__(o))o)
#define BBlockWeakSelf BBlockWeakObject(self)

#define WEAKSELF typeof(self) __weak weakSelf = self;
#define STRONGSELF typeof(weakSelf) __strong strongSelf = weakSelf;

#define GCDBACK(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define GCDMAIN(block) dispatch_async(dispatch_get_main_queue(),block)

//国际化
#define LOCALIZE_STRING(key) NSLocalizedString(key, @"");

//判断字符串是否为空
#define IS_NULL_STRING(__POINTER) \
(__POINTER == nil || \
__POINTER == (NSString *)[NSNull null] || \
![__POINTER isKindOfClass:[NSString class]] || \
![__POINTER length])

#pragma mark - Version  functions

#define SYSTEM_VERSION_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

#pragma mark -
#pragma mark - Devices functions

#define iOS7_OR_HIGHER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)

#define isRetina ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define isSimulator (NSNotFound != [[[UIDevice currentDevice] model] rangeOfString:@"Simulator"].location)

#define iOS_Version [UIDevice currentDevice].systemVersion
#define isFisrtLaunch [[NSUserDefaults standardUserDefaults] boolForKey:@"alreadyFirstLaunch"]
#define isQPOSUser !IS_NULL_STRING([QFUser shared].session)

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

#define saveValue(value,key) \
if (value == nil) { \
[USER_DEFAULTS setObject:@"" forKey:key];\
}else{ \
[USER_DEFAULTS setObject:value forKey:key]; \
}

#define MAIN_STORYBOARD [UIStoryboard storyboardWithName:@"Main" bundle:nil]

#pragma mark -
#pragma mark - Based compiler

#if TARGET_OS_IPHONE
//iPhone Device
#endif

#if TARGET_IPHONE_SIMULATOR
//iPhone Simulator
#endif

//ARC
#if __has_feature(objc_arc)
//compiling with ARC
#else
// compiling without ARC
#endif

#endif

//#define API_BASE_URL [NSString stringWithFormat:@"http://%@",[USER valueForKey:@"test"]]

@interface ProjectSettings : NSObject

-(NSString *)MD5:(NSString *)text;

-(NSString *)getMD5FilePathWithUrl:(NSString *)url;

@end
