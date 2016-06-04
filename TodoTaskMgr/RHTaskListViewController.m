//
//  RHTaskListViewController.m
//  TodoList
//
//  Created by 楊建設 on 2016/06/04.
//  Copyright © 2016年 yangsoftware. All rights reserved.
//

#import "RHTaskListViewController.h"
#import "RHTask.h"
#import "RHAddTaskViewController.h"
#import "RHEditTaskViewController.h"

@implementation RHTaskListViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.tasks = [[NSMutableArray alloc]init];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tasks.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString * DoneCellIdentifier = @"DoneTaskCell";
    
    RHTask *currentTask = [self.tasks objectAtIndex:indexPath.row];
    NSString *CellIdentifier = currentTask.done?DoneCellIdentifier:NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.textLabel.text = currentTask.name;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if( [segue.identifier isEqualToString:@"AddTaskSegue"] ){
        UINavigationController *navCon = segue.destinationViewController;
        RHAddTaskViewController *addTaskViewController = [navCon.viewControllers objectAtIndex:0];
        addTaskViewController.taskListViewController = self;
    } else if( [segue.identifier isEqualToString:@"EditNotDoneTaskSegue"] ||[segue.identifier isEqualToString:@"EditDoneTaskSegue"]){
        RHEditTaskViewController *editTaskViewController = segue.destinationViewController;
        editTaskViewController.task = [self.tasks objectAtIndex:self.tableView.indexPathForSelectedRow.row];

    }
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(  editingStyle == UITableViewCellEditingStyleDelete){
        [self.tasks removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(void)editingPressed:(id)sender{
    self.editing = !self.editing;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
    RHTask *fromTask = [self.tasks objectAtIndex:sourceIndexPath.row];
    [self.tasks removeObjectAtIndex:sourceIndexPath.row];
    [self.tasks insertObject:fromTask atIndex:destinationIndexPath.row];
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

@end
