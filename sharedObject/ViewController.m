//
//  ViewController.m
//  sharedObject
//
//  Created by andrew hazlett on 1/24/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "ViewController.h"
#import "myView.h"
#import "sharedData.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    sharedData *SD = [[sharedData alloc]init];
    //set debug
   // [SD setDebuge:TRUE];
    //set keyData to use
    [SD setKeyData:@"color"];
    //clear some data as a string
    [SD SODClearData];
    //save some data
    [SD SODsaveDataString:@"black"];
    //load some data
  //  NSString *str = [SD SODloadDataString];
   // NSLog(@"string data loaded:%@",str);
    
  }

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
