//
//  CHKeychain.h
//  RSA_Encrypt_Decrypt
//
//  Created by TC on 15/11/13.
//  Copyright © 2015年 sban@netspectrum.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHKeychain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
