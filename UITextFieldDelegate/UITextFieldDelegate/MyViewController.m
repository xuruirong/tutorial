//
//  MyViewController.m
//  UITextFieldDelegate
//
//  Created by tarena on 16/4/26.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>

@end

@implementation MyViewController
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"点中了 return");
    [textField resignFirstResponder];
//    [self.view endEditing:YES];
    //把键盘从该界面收起
    return YES;
    //结束textField的第一响应者身份
   
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置textField的代理
    //创建UITextField
    UITextField *tf =[[UITextField alloc]init];
    
    tf.frame =CGRectMake(100, 100, 100, 100);
    tf.delegate =self;
    //设置frame(100,100)(100)
    //设置textField添加到父视图中进行显示
    tf.borderStyle =UITextBorderStyleRoundedRect;
    //将textfield添加到父视图中
    
    [self.view addSubview:tf];
    
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
