#import "DetailViewController.h"
#import "DetailPopoverViewController.h"


#define TILE_WIDTH  225
#define TILE_HEIGHT 320
#define TILE_MARGIN 23

@interface DetailViewController ()
- (void)createTiles;
@end

@implementation DetailViewController

@synthesize navBar, popoverController, popoverViewController, contentList;


#pragma mark -
#pragma mark View lifecycle

// implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithRed:197.0/255.0
                                                green:204.0/255.0
                                                 blue:211.0/255.0
                                                alpha:1.0];
    
    [super viewDidLoad];
    
    self.popoverViewController = [[[DetailPopoverViewController alloc]
                                   initWithNibName:@"DetailPopoverViewController" bundle:nil] autorelease];
    
	self.popoverController.popoverContentSize = [self.popoverViewController.view
													sizeThatFits:CGSizeMake(512.0, 618.0)];
	
	[self createTiles];
}

- (void)viewDidUnload
{
    // release any retained subviews of the main view
    self.navBar = nil;
    self.popoverViewController = nil;
	
	[super viewDidUnload];
}

- (void)dealloc
{
    [navBar release];
    [contentList release];
    
    [popoverController release];
    [popoverViewController release];
    
    [super dealloc];
}


#pragma mark -
#pragma mark Tile support

// creates the grid of page views each containing the individual number content
- (void)createTiles
{
	for (int row = 0; row < TILE_ROWS; ++row)
    {
        for (int col = 0; col < TILE_COLUMNS; ++col)
        {
            int index = (row * TILE_COLUMNS) + col;
            
            CGRect frame = CGRectMake(TILE_MARGIN + col * (TILE_MARGIN + TILE_WIDTH),
                                      TILE_MARGIN + row * (TILE_MARGIN + TILE_HEIGHT) + navBar.frame.size.height,
                                      TILE_WIDTH, TILE_HEIGHT);
            tileFrame[index] = frame;
            
            Tile *tile = [[Tile alloc] init];
            tile.tag = index + 1;
            tileForFrame[index] = tile;
            tile.frame = frame;
            tile.backgroundColor = [UIColor whiteColor];
			
			UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
			tapGesture.numberOfTapsRequired = 1;
			tapGesture.numberOfTouchesRequired = 1;
			[tile addGestureRecognizer:tapGesture]; 
			[tapGesture release];
			
            [self.view addSubview:tile];
            [tile release];
        }
    }
}

- (void)tapAction:(UIGestureRecognizer *)gestureRecognizer
{
	// get the number data for the tapped view, and set the UI elements according
	// to what found in that NSDictionary:
	//
	NSDictionary *numberItem = [self.contentList objectAtIndex:gestureRecognizer.view.tag - 1];
	self.popoverViewController.numberImage.image = [UIImage imageNamed:[numberItem valueForKey:ImageKey]];
	self.popoverViewController.numberLabel.text = [numberItem valueForKey:NameKey];
	self.popoverViewController.numberDetail.text = [numberItem valueForKey:TranslationsKey];
	
	if (self.popoverController)
	{
		// dismiss the popover before releasing it
		[self.popoverController dismissPopoverAnimated:YES];
	}
			
	// create and present popover
	UIPopoverController *aPopoverController = [[UIPopoverController alloc] initWithContentViewController:self.popoverViewController];
	self.popoverController = aPopoverController;
	self.popoverController.delegate = self;
	self.popoverController.popoverContentSize = self.popoverViewController.view.bounds.size;
	
	// setup the frame in which the popover can be presented slightly smaller its view frame
	CGRect rect = gestureRecognizer.view.frame;
	CGRect finalRect = CGRectInset(rect, 80.0, 80.0);
	
	savedPopoverRect = finalRect;
	[self.popoverController presentPopoverFromRect:finalRect
											inView:self.view
						  permittedArrowDirections:UIPopoverArrowDirectionAny
										  animated:YES];
	[aPopoverController release];
}


#pragma mark -
#pragma mark Rotation support

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
	if (self.popoverController)
	{
		// we finished rotating, if a popover is allocated, show it again in the new orientation
		[self.popoverController presentPopoverFromRect:savedPopoverRect
												inView:self.view
							  permittedArrowDirections:UIPopoverArrowDirectionAny
											  animated:YES];
	}
}

// Ensure that the view controller supports rotation and that the split view can therefore show in
// both portrait and landscape.
//
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (self.popoverController.popoverVisible)
		[self.popoverController dismissPopoverAnimated:YES];	// as we rotate, dismiss the current popover
    
	return YES;
}


#pragma mark -
#pragma mark UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
	// the user dismissed the popover, so release it here
	self.popoverController = nil;
}

@end
