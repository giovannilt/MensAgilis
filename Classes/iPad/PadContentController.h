#import <Foundation/Foundation.h>
#import "ContentController.h"

extern NSString *NameKey;
extern NSString *ImageKey;
extern NSString *TranslationsKey;

@class DetailViewController;

@interface PadContentController : ContentController
{   
    DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end