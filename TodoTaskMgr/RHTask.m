//
//  RHTask.m
//  TodoList
//
//  Created by 楊建設 on 2016/06/03.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHTask.h"

@implementation RHTask

-(id)initWithName:(NSString *)name done:(BOOL) done{
    self = [super init];
    if(self){
      self.name = name;
      self.done = done;
    }
    return self;
}

@end