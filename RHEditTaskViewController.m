//
//  RHEditTaskViewController.m
//  TodoTaskMgr
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import "RHEditTaskViewController.h"
#import "RHTask.h"

@implementation RHEditTaskViewController

-(void)taskChanged:(id)sender{

    self.task.name = self.nameField.text;
    self.task.done = self.doneSwitch.isOn;
}

-(void)viewDidLoad{
    self.nameField.text = self.task.name;
    [self.doneSwitch setOn:self.task.done];
}

@end
