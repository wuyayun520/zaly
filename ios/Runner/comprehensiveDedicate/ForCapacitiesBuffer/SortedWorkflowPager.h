#import "FormatRemainderTarget.h"
#import "TransitionMissedWorkflow.h"
#import "ExitCardVolume.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortedWorkflowPager : NSObject


- (void) detachSegmentConstraint;

- (void) stopOriginalDocument;

@end

NS_ASSUME_NONNULL_END
        