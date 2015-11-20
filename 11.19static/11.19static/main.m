//
//  main.m
//  11.19static
//
//  Created by sven on 15/11/19.
//  Copyright © 2015年 sven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/**
 *  static 修饰局部变量,延长局部变量的生命周期
            可也让局部变量只在创建的那一刻初始化一次
            整个程序运行过程中,局部变量都在一份内存中
 */
void test(){
    static int a = 0; // 延长生命周期
    a++;
    NSLog(@"%d",a);
}

int a = 20;
extern int age;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // static修饰局部变量
//        for (int i = 0; i < 5; i ++) {
//            test();
//        }
        
        NSLog(@"%d",a);
        age = 40;
        [Person run];
    }
    return 0;
}
