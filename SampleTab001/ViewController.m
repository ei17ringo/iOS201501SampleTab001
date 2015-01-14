//
//  ViewController.m
//  SampleTab001
//
//  Created by Eriko Ichinohe on 2015/01/13.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"FirstView");
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

@end
