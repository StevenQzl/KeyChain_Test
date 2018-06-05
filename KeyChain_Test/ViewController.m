//
//  ViewController.m
//  KeyChain_Test
//
//  Created by 屈亮 on 2018/5/31.
//  Copyright © 2018年 屈亮. All rights reserved.
//

#import "ViewController.h"
#import "KeyChain.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    if ([KeyChain load:@"username"]) {
        NSLog(@"已经有数据了");
        id aa = [KeyChain load:@"username"];
        NSLog(@"%@",aa);
    }else{
        NSLog(@"没有数据");
        NSDictionary *dic = @{
                              @"hah":@"vvv"
                              };
        [KeyChain save:@"username" data:dic];
        id aa = [KeyChain load:@"username"];
        NSLog(@"%@",aa);
    }
   
//    [KeyChain save:@"username" data:@"111111"];
//    id bb = [KeyChain load:@"username"];
//    NSLog(@"%@",bb);
//    id cc = [KeyChain getKeychainQuery:@"username"];
//    NSLog(@"%@",cc);
  //  [KeyChain delete:@"username"];
//    id bb = [KeyChain load:@"username"];
//    NSLog(@"%@",bb);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
