
#import "Tile.h"

@implementation Tile

- (void)drawRect:(CGRect)frame
{
    [super drawRect:frame];
    
	UIFont *fontToUse = [UIFont boldSystemFontOfSize:100.0];
	
	NSString *strToDraw = [NSString stringWithFormat:@"%ld", self.tag]; 
	
    CGSize size = [strToDraw sizeWithFont:fontToUse];
    
    CGRect textBounds = CGRectMake(self.bounds.origin.x + (self.bounds.size.width - size.width) / 2,
                                   self.bounds.origin.y + (self.bounds.size.height - size.height) / 2,
                                   size.width, size.height);
    [strToDraw drawInRect:textBounds withFont:fontToUse]; 
}

@end
