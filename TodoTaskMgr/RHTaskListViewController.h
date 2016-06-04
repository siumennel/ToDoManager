//
//  RHTaskListViewController.h
//  TodoList
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHTaskListViewController : UITableViewController

@property(nonatomic, strong) NSMutableArray *tasks;

-(IBAction)editingPressed:(id)sender;

@end
