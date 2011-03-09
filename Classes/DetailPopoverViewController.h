#import <UIKit/UIKit.h>

@interface DetailPopoverViewController : UIViewController
{
    UIImageView *numberImage;
    UILabel *numberLabel;
    UITextView *numberDetail;
}

@property (nonatomic, retain) IBOutlet UIImageView *numberImage;
@property (nonatomic, retain) IBOutlet UILabel *numberLabel;
@property (nonatomic, retain) IBOutlet UITextView *numberDetail;

@end
