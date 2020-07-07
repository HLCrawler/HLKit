//
//  FactoryViewController.m
//  TestDemo
//
//  Created by 韩龙 on 2020/5/28.
//  Copyright © 2020 韩龙. All rights reserved.
//

#import "FactoryViewController.h"

#pragma mark -- 简单工厂模式
#import "ComputerFactory.h"
#import "Computer.h"
#import "LenovoComputer.h"
#import "AppleComputer.h"

//#pragma mark -- 工厂模式
//#import "MobilePhoneFactory.h"
//#import "ApplePhoneFactory.h"
//#import "HUAWEIPhoneFactory.h"
//#import "MobilePhone.h"
//
//#pragma mark -- 抽象工厂模式
//#import "AnimalAbstractFactory.h"
//#import "AnimalFactory.h"
//#import "Cat.h"
//#import "Fish.h"

@interface FactoryViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView        *tableView;
@property (nonatomic,strong) NSMutableArray     *dataSource;

@end

@implementation FactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"工厂模式";
//    [self.view addSubview:self.tableView];
//    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view);
//    }];
//
//   [self.tableView reloadData];
    
    [self singleFactoryModel];
//    [self factoryModel];
//    [self abstractFactoryModel];
    
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBtn.frame = CGRectMake(0, 0, 40,40);
    //leftBtn.backgroundColor =[UIColor redColor];
    [leftBtn setImageEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 0)];
    //leftBtn.imageView.contentMode =UIViewContentModeCenter;

    //[leftBtn setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * leftBarBtn = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];;
    //创建UIBarButtonSystemItemFixedSpace
    UIBarButtonItem * spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //将宽度设为负值
    spaceItem.width = -20;
    //将两个BarButtonItem都返回给NavigationItem
    self.navigationItem.leftBarButtonItems = @[spaceItem,leftBarBtn];
}

- (void)leftClick {
    NSLog(@"123");
}

#pragma mark -- 简单工厂模式
- (void)singleFactoryModel {

    ComputerFactory *pcFactory = [[ComputerFactory alloc] init];

    Computer *lenovoPC = [pcFactory createComputerWithType:@"联想"];
    [lenovoPC getComputerName];

    Computer *applePC = [pcFactory createComputerWithType:@"苹果"];
    [applePC getComputerName];
}

//#pragma mark -- 工厂模式
//- (void)factoryModel {
//
//    MobilePhoneFactory *applePhoneFactory = [[ApplePhoneFactory alloc] init];
//    MobilePhoneFactory *huaweiPhoneFactory = [[HUAWEIPhoneFactory alloc] init];
//
//    MobilePhone *applepPhone = [applePhoneFactory createMobilePhone];
//    MobilePhone *huaweiPhone = [huaweiPhoneFactory createMobilePhone];
//
//    [applepPhone name];
//    [huaweiPhone name];
//}
//
//#pragma mark -- 抽象工厂模式
//- (void)abstractFactoryModel {
//
//    //抽象工厂实现
//    AnimalAbstractFactory *abstractFactory = [[AnimalFactory alloc] init];
//
//    Cat *animal_cat = [abstractFactory createAnimal:[Cat class]];
//    [animal_cat getName];
//    [animal_cat getSkill];
//
//    Fish *animal_fish = [abstractFactory createAnimal:[Fish class]];
//    [animal_fish getName];
//    [animal_fish getSkill];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        FactoryViewController *factoryVC = [[FactoryViewController alloc] init];
        [self.navigationController pushViewController:factoryVC animated:YES];
    }
}
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.tableFooterView = [UIView new];
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (NSMutableArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithArray:@[@"工厂模式",@"策略模式"]];
    }
    return _dataSource;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
