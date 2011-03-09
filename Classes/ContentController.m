#import "ContentController.h"

@implementation ContentController

@synthesize contentList;

- (void)dealloc{
    [contentList release];
    [super dealloc];
}

- (UIView *) view{
    return nil; // subclasses need to override this with their own view property
}

@end
