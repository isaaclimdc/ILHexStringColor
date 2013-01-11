ILHexStringColor
================

A simple category on UIColor that creates UIColors from hex strings.

### Version 1.0

How to use
----------
A demo project `ILHexStringColorDemo` is included to show how `ILHexStringColor` can be integrated into a project.

#### Preparation
1. Copy the following 2 files into your Xcode project. Be sure to check "Copy items into destination's group folder".
    - `UIColor+ILHexStringColor.h`
    - `UIColor+ILHexStringColor.m`
4. Add the line `#include "UIColor+ILHexStringColor.h"` to the file that you want to use this category's methods in.

#### `UIColor` from `NSString` hex string

    UIColor *purpleColor = [UIColor colorWithHexString:@"#a81be0"];

#### `NSString` hex string from `UIColor`

    NSString *bkgHex = [UIColor hexStringFromColor:self.view.backgroundColor];

Requirements
------------
- ARC
- iOS 2.0 or later

Contact
-------
Isaac Lim   
[isaacl.net](http://isaacl.net)

Credits
-------
- StackOverflow

Version History
---------------
**1.0**  
- First publish to Github

License
-------
 ILHexStringColor is distributed under the terms and conditions of the MIT license.

 Copyright (c) 2013 isaacl.net. All rights reserved.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
