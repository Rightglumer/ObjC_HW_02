//
//  AnotherViewController.m
//  Lesson_02_HW
//
//  Created by Glumer Glumer on 18.01.2021.
//

#import "AnotherViewController.h"

#define ReuseIdentifier @"reuseIdentifier"

@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ReuseIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ReuseIdentifier];
    }
    cell.textLabel.text = @"Another cell";
    return cell;
}

@end
