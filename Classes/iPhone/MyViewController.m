
#import "MyViewController.h"

@implementation MyViewController

@synthesize pageNumberLabel, numberTitle, numberImage;

// load the view nib and initialize the pageNumber ivar
- (id)initWithPageNumber:(int)page
{
    if (self = [super initWithNibName:@"MyView" bundle:nil])
    {
        pageNumber = page;
    }
    return self;
}

- (void)dealloc
{
    [pageNumberLabel release];
    [numberTitle release];
    [numberImage release];
    
    [super dealloc];
}

// set the label and background color when the view has finished loading
- (void)viewDidLoad
{
    pageNumberLabel.text = [NSString stringWithFormat:@"Page %d", pageNumber + 1];
}

@end
