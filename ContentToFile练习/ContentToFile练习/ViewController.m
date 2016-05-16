//
//  ViewController.m
//  ContentToFile练习
//
//  Created by tarena on 16/5/15.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //需求：NSArray数据存到XXX/Documents/test.txt
    NSArray *array =@[@"Jonny",@19,@[@"objective-C",@"Swift",@"Ruby"]];
    //获取路径
    NSString *documentPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    //拼接路径
    NSString *filePath = [documentPath stringByAppendingPathComponent:@"test.txt"];
    //将数组保存到文件地址中
    //参数一：制定写入文件的绝对路径
    //参数二:是否是原子(YES:保证要么写成功，要么什么都没有绝对写成功)
    //注意点:不用创建文件；Plist格式；如果该文件没有，自动创建，如果有，直接写入 会覆盖前面写入的内容；
    [array writeToFile:filePath atomically:YES];
    //从指定的路径下读取文件的数据 原则：写入什么类型，需要用该类型接收
    NSArray *arrayFromFile =[NSArray arrayWithContentsOfFile:filePath];
    //需求二:把字典数据写入文件中
    NSDictionary *dic =@{@"name":@"Maggie",@"age":@18,@"skills":@[@"Java",@"Python",@"Perl"]};
    //拼接路径
    NSString *dicFilePath =[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject] stringByAppendingPathComponent:@"dic.txt"];
    //写入字典
    [dic writeToFile:dicFilePath atomically:YES];
    //读取字典数据
    NSDictionary *dicFromFile =[NSDictionary dictionaryWithContentsOfFile:dicFilePath];
    NSLog(@"字典数据:%@",dicFromFile);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
