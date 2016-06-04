//
//  RHAddTaskViewController.h
//  TodoList
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RHTaskListViewController;

@interface RHAddTaskViewController : UITableViewController

-(IBAction)cancelButtonPressed:(id)sender;
-(IBAction)doneButtonPressed:(id)sender;

@property(nonatomic,strong) IBOutlet UITextField *nameFiled;

@property(nonatomic,strong) RHTaskListViewController *taskListViewController;

@end
