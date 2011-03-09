#import "DetailPopoverViewController.h"

@implementation DetailPopoverViewController

@synthesize numberImage, numberLabel, numberDetail;

// implement viewDidLoad to do additional setup after loading the view, typically from a nib
- (void)viewDidLoad
{
    [super viewDidLoad];
}

// override to allow orientations other than the default portrait orientation
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    self.numberImage = nil;
    self.numberLabel = nil;
    self.numberDetail = nil;
}

- (void)dealloc
{
    [numberImage release];
    [numberLabel release];
    [numberDetail release];
    
    [super dealloc];
}

@end
