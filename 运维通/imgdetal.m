//
//  imgdetal.m
//  运维通
//
//  Created by abc on 15/8/30.
//  Copyright (c) 2015年 ritacc. All rights reserved.
//

#import "imgdetal.h"
#import "MJRefresh.h"
#import "MBProgressHUD+MJ.h"

@interface imgdetal ()

@end

@implementation imgdetal

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)network{
    
    
    
    NSUserDefaults *userDefaultes = [NSUserDefaults standardUserDefaults];
    
    NSString *myString = [userDefaultes stringForKey:@"myidt"];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@/API/HDL_User.ashx?action=getauser&q0=%@",urlt,myString];
    
    NSString *str = @"type=focus-c";
    
    
    
    AFHTTPRequestOperation *op=[self POSTurlString:urlStr parameters:str];
    
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *dict=responseObject;
        
        NSDictionary *dict1=dict[@"ResultObject"];
        
        
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        
        
        [MBProgressHUD showError:@"网络请求出错"];
        
        return ;
        
    }];
    
    
    
    [[NSOperationQueue mainQueue] addOperation:op];
    
    
    
}


@end
