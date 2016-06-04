//
//  RHTask.h
//  TodoList
//
//  Created by 楊建設 on 2016/06/03.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#ifndef RHTask_h
#define RHTask_h

#import <Foundation/Foundation.h>

@interface RHTask : NSObject

@property(nonatomic, strong) NSString *name;

@property(nonatomic,assign) BOOL done;

-(id)initWithName:(NSString *)name done:(BOOL) done;

@end
#endif /* RHTask_h */
