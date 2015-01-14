//
//  SecondViewController.m
//  SampleTab001
//
//  Created by Eriko Ichinohe on 2015/01/13.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"SecondView");
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"testFV");
    
    //AppDelegate Object 作成（インスタンス化・カプセル化）
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    //型変換の例
    //int index = (int)@"3";
    
    //myCountを1ずつカウントアップ
    app.myCount = app.myCount + 1;
    
    NSLog(@"%ld",(long)app.myCount);
    self.countLabel.text = [NSString stringWithFormat:@"%ld",(long)app.myCount];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
