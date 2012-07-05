//
//  CJTabBarController.m
//  Router
//
//  Created by Jérémy chaufourier on 10/05/12.
//  Copyright (c) 2012 Jérémy Chaufourier. All rights reserved.
//

#import "CJTabBarController.h"
#import "CJView1Controller.h"
#import "CJView2Controller.h"

@implementation CJTabBarController

- (id)init
{
    self = [super init];
    if (self) {
        viewController = [[[CJView1Controller alloc] init] autorelease];
        viewController.title = @"Title";
        
        viewController2 = [[[CJView2Controller alloc] init] autorelease];
        viewController2.title = @"title 2";

        NSLog(@"%@", [self superclass]);

        UITabBarItem *tabItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:3];

        viewController.tabBarItem = tabItem;

        UITabBarItem *tabItem2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:3];

        viewController2.tabBarItem = tabItem2;

        self.viewControllers = [NSArray arrayWithObjects:viewController, viewController2, nil];
        [self viewControllers];
        
        [tabItem release];
        [tabItem2 release];
    }
    return self;
}

@end
