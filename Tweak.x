#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface PINProfileViewController : UIViewController /* Interfacing, SBHomeScreenViewController
                                                            inherits from UIViewController */
@end

%hook PINProfileViewController 

-(void)viewDidLoad { // overriding method
    %orig; // original code

	UIView *ourView = [[UIView alloc] init]; // allocating & initializing our view
    ourView.frame = CGRectMake(
                                0, // X coordinate
                                0, // Y coordinate
                                40, // Width
                                30); // Height
    ourView.backgroundColor = [UIColor blueColor]; // setting our background color to blue
    [self.view addSubview:ourView]; // adding our view as a subview
}

%end