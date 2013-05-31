//
// UIColor+ILHexStringColor
// Version 1.1
// Created by Isaac Lim (isaacl.net) on 1/1/13.
//

#import "UIColor+ILHexStringColor.h"

@implementation UIColor (ILHexStringColor)

+ (UIColor *)colorWithHexString:(NSString *)str {
    const char *cStr = [str cStringUsingEncoding:NSASCIIStringEncoding];
    int len = strlen(cStr);

    switch (len) {
        case 6:
        case 8:
            break;
        case 7:
            cStr++;
            len--;
            break;
        case 9:
            cStr++;
            len--;
            break;
        default:
            NSLog(@"Please give a hex string in the form \"#ff3cbb\" or \"ff3cbb\", case-insensitive.");
            return nil;
    }

    long x = strtol(cStr, NULL, 16);
    
    unsigned char r = (x >> 16) & 0xFF;
    unsigned char g = (x >> 8) & 0xFF;
    unsigned char b = x & 0xFF;

    return [UIColor colorWithRed:(float)r/255.0f
                           green:(float)g/255.0f
                            blue:(float)b/255.0f
                           alpha:(len == 8) ? (float)((x >> 24) & 0xFF)/255.0f : 1.0];
}

+ (NSString *)hexStringFromColor:(UIColor *)color {
    int numComponents = CGColorGetNumberOfComponents(color.CGColor);

    if (numComponents != 4) {
        return nil;
    }

    const CGFloat *components = CGColorGetComponents(color.CGColor);

    unsigned int r = components[0] * 255;
    unsigned int g = components[1] * 255;
    unsigned int b = components[2] * 255;
    unsigned int a = components[3] * 255;

    return [NSString stringWithFormat:@"#%2x%2x%2x%2x", a, r, g, b];
}

@end
