//
//  ViewController.m
//  JSReact
//
//  Created by roronoa on 16/3/31.
//  Copyright © 2016年 roronoa. All rights reserved.
//

#import "ViewController.h"
#import "ReactView.h"
#import "RCTBridgeModule.h"
#import "NewsListController.h"

@interface ViewController ()

@property (strong, nonatomic) ReactView *reactView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"12345";
    
    UIBarButtonItem *pushItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(push:)];
    self.navigationItem.rightBarButtonItem = pushItem;
    
}

- (void)push:(id)sender {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CMainCell = @"ViewControllerCell";     //  0
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CMainCell];      //   1
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: CMainCell];    //  2
    }
    
    // Config your cell
    cell.textLabel.text = @"资讯列表";    //  3
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsListController *nCtrl = [[NewsListController alloc] init];
    [self.navigationController pushViewController:nCtrl animated:YES];
}

@end
