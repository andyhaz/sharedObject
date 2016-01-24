//
//  myView.m
//  sharedObject
//
//  Created by andrew hazlett on 1/24/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "myView.h"
#import "sharedData.h"

@implementation myView


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    sharedData *SD = [[sharedData alloc]init];
    //set ket to use
    [SD setKeyData:@"color"];
    //load some data
    NSString *str = [SD SODloadDataString];
    NSLog(@"string data loaded:%@",str);
    // Drawing code here.

    //set background color
    if ([str isEqualToString:@"black"]) {
        [[NSColor blackColor] setFill];
    } else {
        [[NSColor whiteColor] setFill];
    }
    NSRectFill( dirtyRect );
}

@end
