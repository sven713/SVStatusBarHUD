
//
//  Person.m
//  11.19static
//
//  Created by sven on 15/11/19.
//  Copyright © 2015年 sven. All rights reserved.
//

#import "Person.h"
static int age = 20;


@implementation Person
+(void)run {
    NSLog(@"preson--%d",age);
}
@end
