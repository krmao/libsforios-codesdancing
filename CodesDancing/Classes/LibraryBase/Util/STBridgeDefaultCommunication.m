//
//  STBridgeDefaultCommunication.m
//  CodesDancing
//
//  Created by krmao on 2021/2/9.
//

#import "STBridgeDefaultCommunication.h"
#import "STJsonUtil.h"
#import "UIViewController+TopMostViewController.h"

@implementation STBridgeDefaultCommunication
+(void) handleBridge:(nullable UIViewController *) viewController functionName:(nullable NSString *) functionName params:(nullable NSString *) params callBackId:(nullable NSString *) callBackId callback: (nullable BridgeHandlerCallback) callback{
    NSDictionary* resultDict = [NSMutableDictionary new];
    if (viewController == nil) {
        callback(callBackId, [STJsonUtil arrayOrDictionayToJsonString:resultDict]);
        return;
    }
    
    NSDictionary* bridgeParamsDict = [STJsonUtil jsonStringToArrayOrDictionary:params];

    if ([@"open" isEqual: functionName]) {
        NSString* url = [bridgeParamsDict objectForKey:@"url"];
        if ([url hasPrefix:@"smart://template/flutter"]) {
            // STBusManager.call(activity, "flutter/open", url)
            [resultDict setValue:@"true" forKey:@"result"];
        }
        
    }else if ([@"close" isEqual: functionName]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[UIViewController topMostViewController].navigationController popViewControllerAnimated:true];
        });
    }else if ([@"showToast" isEqual: functionName]) {
        
    }else if ([@"put" isEqual: functionName]) {
        
    }else if ([@"get" isEqual: functionName]) {
        
    }else if ([@"getUserInfo" isEqual: functionName]) {
        NSDictionary* data = [NSDictionary new];
        [data setValue:@"smart" forKey:@"name"];
        [resultDict setValue:data forKey:@"result"];
    }else if ([@"getLocationInfo" isEqual: functionName]) {
        NSDictionary* data = [NSDictionary new];
        [data setValue:@"121.10,31.22" forKey:@"currentLatLng"];
        [data setValue:@"上海" forKey:@"currentCity"];
        [resultDict setValue:data forKey:@"result"];
    }else if ([@"getDeviceInfo" isEqual: functionName]) {
        NSDictionary* data = [NSDictionary new];
        [data setValue:@"ios" forKey:@"platform"];
        [resultDict setValue:data forKey:@"result"];
    }else{
        [resultDict setValue:@"native 暂不支持" forKey:@"result"];
    }
    
    callback(callBackId, [STJsonUtil arrayOrDictionayToJsonString:resultDict]);
    
    
}
@end
