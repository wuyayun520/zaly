// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+OvalGo.h
//  AbroadTalking
//
//  Created by Hemming on 2023/4/27.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSData (Encrypt)
@interface NSData (OvalGo)

//: - (NSData *)AES256EncryptWithKey:(NSString *)key withVector:(NSString *)vector;
- (NSData *)photo:(NSString *)key all:(NSString *)vector;
//: - (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)census:(NSString *)key;


//: - (NSData *)AES256DecryptWithKey:(NSString *)key withVector:(NSString *)vector;
- (NSData *)camera:(NSString *)key fewness:(NSString *)vector;
//: - (NSData *)AES256DecryptWithKey:(NSString *)key;
- (NSData *)level:(NSString *)key;

//: + (NSData *)base64DataFromString:(NSString *)string;
+ (NSData *)roundTitle:(NSString *)string;

//: + (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length;
+ (NSString *)utilise: (NSData *)data custom: (NSUInteger)length;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END