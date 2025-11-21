#import "TaskMetadataList.h"
    
@interface TaskMetadataList ()

@end

@implementation TaskMetadataList

- (void) playDimensionThanController: (NSMutableDictionary *)observerIncludeVariable
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger checkboxByContext = observerIncludeVariable.count;
		UITableView *clipperVisitorFeedback = [[UITableView alloc] init];
		[clipperVisitorFeedback setDelegate:self];
		[clipperVisitorFeedback setDataSource:self];
		[clipperVisitorFeedback setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[clipperVisitorFeedback setRowHeight:48];
		NSString *nextStepIndex = @"CellIdentifier";
		[clipperVisitorFeedback registerClass:[UITableViewCell class] forCellReuseIdentifier:nextStepIndex];
		UIRefreshControl *touchScopeRotation = [[UIRefreshControl alloc] init];
		[touchScopeRotation addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[clipperVisitorFeedback setRefreshControl:touchScopeRotation];
		if (checkboxByContext > 1) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = checkboxByContext / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", checkboxByContext);
	});
}


@end
        