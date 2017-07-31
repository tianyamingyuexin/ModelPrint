//
//  ViewController.m
//  ModelPrint
//
//  Created by jujutec－mac on 2017/7/31.
//  Copyright © 2017年 jujutec－mac. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+DesPri.h"
#import "textModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   
}




- (IBAction)test:(UIButton *)sender
{
    //模型答应 重写description（nslog 时调用） 和debugDescription（po 时调用）
    
    textModel *model = [[textModel alloc] init];
    model.name = @"siri";
    model.name = @"10";
    model.textType = @"1";
    
    NSLog(@"%@",model);
}

@end
