#import <Foundation/Foundation.h>

@interface ContentController : NSObject{
    NSArray *contentList;
}

@property (nonatomic, retain) NSArray *contentList;

- (UIView *)view;

@end
