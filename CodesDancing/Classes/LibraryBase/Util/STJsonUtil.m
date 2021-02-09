//
//  STJsonUtil.m
//  CodesDancing
//
//  Created by krmao on 2021/2/9.
//

#import "STJsonUtil.h"

@implementation STJsonUtil
+(nullable NSString*) arrayOrDictionayToJsonString:(nullable id)arrayOrDictionary{
    if (arrayOrDictionary == nil) return nil;

    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:arrayOrDictionary options:0 error:&error];
    if ([jsonData length] && error == nil){
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }else{
       return nil;
    }
}
+(nullable id) jsonStringToArrayOrDictionary:(nullable NSString*)jsonString{
    if(jsonString == nil) return nil;
    
    NSData * jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];;
}
@end
