//
//  ViewController.m
//  XMLLoadTree
//
//  Created by Dolice on 2013/04/16.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //XMLファイルをツリー構造形式で読み込む
  NSString *xmlPath = @"sample.xml";
  xmlPath = [xmlPath stringByExpandingTildeInPath];
  
  NSURL *xmlURL = [NSURL fileURLWithPath:xmlPath];
  NSXMLDocument *xmlDoc = [[NSXMLDocument alloc] initWithContentsOfURL:xmlURL
                                                options:0
                                                  error:NULL];
  NSLog(@"%@", xmlDoc);
}

@end
