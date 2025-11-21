#import "WithinNavigationFinder.h"
    
@interface WithinNavigationFinder ()

@end

@implementation WithinNavigationFinder

- (void) listenBinaryAmongHandler
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *gesturedetectorSincePrototype = [NSMutableSet set];
		NSString* priorityVarLeft = @"ephemeralAnchorName";
		for (int i = 0; i < 9; ++i) {
			[gesturedetectorSincePrototype addObject:[priorityVarLeft stringByAppendingFormat:@"%d", i]];
		}
		NSInteger firstCommandValidation =  [gesturedetectorSincePrototype count];
		UISegmentedControl *sizeContextOffset = [[UISegmentedControl alloc] init];
		__block NSInteger offsetBesideProcess = 0;
		[gesturedetectorSincePrototype enumerateObjectsUsingBlock:^(id  _Nonnull reactiveSampleForce, BOOL * _Nonnull stop) {
		    if (offsetBesideProcess < 5) {
		        [sizeContextOffset insertSegmentWithTitle:[reactiveSampleForce description] atIndex:offsetBesideProcess animated:NO];
		        offsetBesideProcess++;
		    } else {
		        *stop = YES;
		    }
		}];
		[sizeContextOffset setSelectedSegmentIndex:0];
		[sizeContextOffset setTintColor:[UIColor grayColor]];
		UIAlertController *resizablePositionMargin = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)firstCommandValidation] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *constraintOutsideInterpreter = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[resizablePositionMargin addAction:constraintOutsideInterpreter];
		if (firstCommandValidation > 9) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)firstCommandValidation);
			}];
			[resizablePositionMargin addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)firstCommandValidation);
	});
}


@end
        