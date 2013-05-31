//
// UIColor+ILHexStringColor
// Version 1.1
// Created by Isaac Lim (isaacl.net) on 1/1/13.
//

// This code is distributed under the terms and conditions of the MIT license.
//
// Copyright (c) 2013 isaacl.net. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

@interface UIColor (ILHexStringColor)

/**
 * Get a UIColor from a given hex string in the form "#ff7c4a", "ff7c4a"
 * "#01ff7c4a" or "11ff7c4a".
 * @param str The hex string in the above form. (Either RGB or ARGB)
 *
 * @return The resulting UIColor. If str is malformed, returns nil.
 */
+ (UIColor *)colorWithHexString:(NSString *)str;

/**
 * Get the hex value of a UIColor in string form, eg. "#12ff7c4a".
 * This form is ARGB.
 * @param color The UIColor to extract a hex string from.
 *
 * @return The NSString hex string. If color is malformed, returns nil.
 */
+ (NSString *)hexStringFromColor:(UIColor *)color;

@end
