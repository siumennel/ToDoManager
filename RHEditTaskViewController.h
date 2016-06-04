//
//  RHEditTaskViewController.h
//  TodoTaskMgr
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RHTask;

@interface RHEditTaskViewController : UITableViewController

@property(nonatomic, strong) IBOutlet UITextField *nameField;
@property(nonatomic, strong) IBOutlet UISwitch *doneSwitch;

@property(nonatomic,strong) RHTask *task;

-(IBAction)taskChanged:(id)sender;

@end
