//
//  KeyChain.h
//  KeyChain_Test
//
//  Created by 屈亮 on 2018/5/31.
//  Copyright © 2018年 屈亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChain : NSObject
+ (NSMutableDictionary *)getKeychainQuery:(NSString *)service;
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;
@end
