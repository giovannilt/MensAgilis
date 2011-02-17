#import "PadContentController.h"
#import "DetailViewController.h"
#import "MensAgilis_TrunkAppDelegate.h"

NSString *NameKey = @"nameKey";
NSString *ImageKey = @"imageKey";
NSString *TranslationsKey = @"translationsKey";


@implementation PadContentController

@synthesize detailViewController;

- (void)awakeFromNib
{
    // load our data from a plist file inside our app bundle
    NSString *path = [[NSBundle mainBundle] pathForResource:@"content_iPad" ofType:@"plist"];
    self.contentList = [NSArray arrayWithContentsOfFile:path];
    
    self.detailViewController.contentList = self.contentList;
}

- (void)dealloc
{
    [detailViewController release];
    
    [super dealloc];
}

- (UIView *)view
{
    return self.detailViewController.view;
}

@end
