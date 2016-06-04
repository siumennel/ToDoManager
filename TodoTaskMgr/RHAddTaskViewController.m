//
//  RHAddTaskViewController.m
//  TodoList
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import "RHAddTaskViewController.h"
#import "RHTask.h"
#import "RHTaskListViewController.h"


@implementation RHAddTaskViewController

-(void)cancelButtonPressed:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)doneButtonPressed:(id)sender{
    RHTask *newTask = [[RHTask alloc]initWithName:self.nameFiled.text done:NO];
    [self.taskListViewController.tasks addObject:newTask];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
