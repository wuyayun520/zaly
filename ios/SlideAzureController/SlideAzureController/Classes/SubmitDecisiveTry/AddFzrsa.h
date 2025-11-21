// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

/*
 @author: ideawu
 @link: https://github.com/ideawu/Objective-C-RSA
*/



//: @interface FZRSA : NSObject
@interface AddFzrsa : NSObject

// return base64 encoded string
//: + (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSString *)mouthModify:(NSString *)str openNarrow:(NSString *)pubKey;
// return raw data
//: + (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSData *)render:(NSData *)data clearAlways:(NSString *)pubKey;

// decrypt base64 encoded string, convert result to string(not base64 encoded)
//: + (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSString *)pressPic:(NSString *)str colorHandle:(NSString *)pubKey;
//: + (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSData *)capableness:(NSData *)data run:(NSString *)pubKey;

//: @end
@end