#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LiteReducerState : NSObject

@property (nonatomic) int titleOfType;

@property (nonatomic) NSMutableArray * resizableDrawerDirection;

@property (nonatomic) int desktopPrecisionDuration;

+ (instancetype) liteReducerStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) progressbarPatternBottom;

- (NSMutableDictionary *) sensorStateOffset;

- (int) semanticResponseDensity;

- (NSMutableSet *) sizeTaskDensity;

- (NSMutableArray *) localizationFromStyle;

@end

NS_ASSUME_NONNULL_END
        