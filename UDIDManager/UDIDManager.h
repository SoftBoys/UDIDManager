//
//  UDIDManager.h
//  UDIDManager
//
//  Created by dfhb@rdd on 16/9/5.
//  Copyright © 2016年 guojunwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UDIDManager : NSObject

/** 获取UDID */
+ (NSString *)UDID;
/** 保存UDID */
+ (BOOL)saveUDID:(NSString *)udid;
/** 清除UDID */
+ (BOOL)clearUDID;
@end
