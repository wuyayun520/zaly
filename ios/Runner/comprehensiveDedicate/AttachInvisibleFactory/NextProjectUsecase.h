#import "AsyncHashTime.h"
#import "SkipRetainedStateful.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NextProjectUsecase : NSObject


- (void) attachBlocViaScheduler;

- (void) offsetOtherReducer;

@end

NS_ASSUME_NONNULL_END
        