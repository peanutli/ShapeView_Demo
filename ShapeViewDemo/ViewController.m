//
//  ViewController.m
//  ShapeViewDemo
//
//  Created by 花生 on 16/3/31.
//  Copyright © 2016年 花生. All rights reserved.
//

#import "ViewController.h"
#import "LDCView.h"
#import "LDCTableViewCell.h"

static NSString * CellIndentifier = @"Cell";
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView * _tableView;
    NSArray * dataSource;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[LDCTableViewCell class] forCellReuseIdentifier:CellIndentifier];
    dataSource = @[@"ab1.jpg",@"ab2.jpg",@"ab3.jpg"];
    //初始化三个不规则形状的view;
//    LDCView * view1 = [[LDCView alloc]initWithFrame:CGRectMake(10, 60, self.view.frame.size.width-20, 150) location:LDCViewLocationTop];
//    view1.image = [UIImage imageNamed:@"ab1.jpg"];
//    [self.view addSubview:view1];
//    
//    LDCView * view2 = [[LDCView alloc]initWithFrame:CGRectMake(10, view1.frame.origin.y + view1.frame.size.height, view1.frame.size.width, 150) location:LDCViewLocationCenter];
//    view2.image = [UIImage imageNamed:@"ab2.jpg"];
//    [self.view addSubview:view2];
//    
//    LDCView * view3 = [[LDCView alloc]initWithFrame:CGRectMake(10, view2.frame.origin.y + view2.frame.size.height, view2.frame.size.width, 150) location:LDCViewLocationBottom];
//    view3.image = [UIImage imageNamed:@"ab3.jpg"];
//    [self.view addSubview:view3];
    // Do any additional setup after loading the view, typically from a nib.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    LDCTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    [cell setLdcViewWithloctaion:(NSInteger)indexPath.row imageName:dataSource[indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
