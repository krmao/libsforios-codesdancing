//
//  STJsonUtil.h
//  CodesDancing
//
//  Created by krmao on 2021/2/9.
//

#import <Foundation/Foundation.h>

@interface STJsonUtil : NSObject
+(nullable NSString*) arrayOrDictionayToJsonString:(nullable id)arrayOrDictionary;
+(nullable id) jsonStringToArrayOrDictionary:(nullable NSString*)jsonString;
@end
