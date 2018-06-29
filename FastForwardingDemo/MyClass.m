//
//  MyClass.m
//  FastForwardingDemo
//
//  Created by cheyipai on 2018/6/29.
//  Copyright © 2018年 cheyipai. All rights reserved.
//

#import "MyClass.h"
/*
 * -(id)forwardingTargetForSelector:(SEL)aSelector;是NSObject的方法，
 * 除NSPoxy类之外，所有的类继承于NSObject，也就是任何类的实例都可以重载这个方法，实现消息的快速转发。
 */
@implementation MyClass
//重载快速转发方法，把消息转发给能处理的对象
-(id)forwardingTargetForSelector:(SEL)aSelector{
    if (aSelector == @selector(unknownInstanceMethod)) {
        return [NSClassFromString(@"MyFastForwardingClass") new];
    }
    return [super forwardingTargetForSelector:aSelector];
}
@end
