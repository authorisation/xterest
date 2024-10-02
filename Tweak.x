#import <UIKit/UIKit.h>

@interface PINPinNode : NSObject
@end
@interface DisplayAttributes : NSObject
- (int)pinType;
@end

%hook PINPinNode

//Block sponsored pins
- (id)initWithPin:(id)pin displayAttributes:(DisplayAttributes *)attributes {
    if ([attributes pinType] == 2) {
        return nil;
    }
    
    return %orig(pin, attributes);
}

%end