//
//  MainViewController.m
//  屏幕上移
//
//  Created by 种子 on 11/24/15.
//  Copyright © 2015 种子. All rights reserved.
//

#import "MainViewController.h"
#define HEIGHT 100
@interface MainViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *t1;
@property (weak, nonatomic) IBOutlet UITextField *t2;
@property (weak, nonatomic) IBOutlet UITextField *t3;
@property (weak, nonatomic) IBOutlet UITextField *t4;
@property (weak, nonatomic) IBOutlet UITextField *t5;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [super viewDidLoad];
    self.t1.delegate = self;
    self.t2.delegate = self;
    self.t3.delegate = self;
    self.t4.delegate = self;
    self.t5.delegate = self;
}
//    原理：得到第一响应，失去第一响应
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    CGFloat changeHeight = HEIGHT *0.14;
    CGRect currentFrame = self.view.frame;
    if (textField.tag==0)
    {
        [textField resignFirstResponder];
        [self.t2 becomeFirstResponder];
    }
    else if(textField.tag==1)
    {
        [textField resignFirstResponder];
        [self.t3 becomeFirstResponder];
        changeHeight+=HEIGHT *0.06+15;
        //然后调用你的登录函数
    }
    else if(textField.tag==2)
    {
        [textField resignFirstResponder];
        [self.t4 becomeFirstResponder];
        changeHeight+=(HEIGHT *0.06+15)*2;
        //然后调用你的登录函数
    }
    if (textField.tag ==3)
    {
        [textField resignFirstResponder];
        [self.t5 becomeFirstResponder];
        changeHeight+=(HEIGHT *0.06+15)*3;
        //然后调用你的登录函数
    }
    currentFrame.origin.y = currentFrame.origin.y - changeHeight;
    if (currentFrame.origin.y !=-changeHeight)
    {
        currentFrame.origin.y =-changeHeight;
    }
    if (textField.tag==4)
    {
        if (currentFrame.origin.y!=0)
        {
            currentFrame.origin.y=0;
            [self.t1 resignFirstResponder];
        }
    }
    self.view.frame = currentFrame;
    return YES;
}

//textfield编辑完成之后
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    CGFloat changeHeight=HEIGHT *0.14;
    CGRect currentFrame = self.view.frame;
    if (textField.tag==0)
    {
        [textField resignFirstResponder];
        [self.t2 becomeFirstResponder];
    }
    else if(textField.tag==1)
    {
        [textField resignFirstResponder];
        [self.t3 becomeFirstResponder];
        changeHeight+=HEIGHT *0.06+15;
        //然后调用你的登录函数
    }
    else if(textField.tag==2)
    {
        [textField resignFirstResponder];
        [self.t4 becomeFirstResponder];
        changeHeight+=(HEIGHT *0.06+15)*2;
        //然后调用你的登录函数
    }
    if (textField.tag ==3)
    {
        [textField resignFirstResponder];
        [self.t5 becomeFirstResponder];
        changeHeight+=(HEIGHT *0.06+15)*3;
        //然后调用你的登录函数
    }
    currentFrame.origin.y = currentFrame.origin.y - changeHeight;
    if (currentFrame.origin.y !=-changeHeight)
    {
        currentFrame.origin.y =-changeHeight;
    }
    if (textField.tag==4)
    {
        if (currentFrame.origin.y!=0)
        {
            currentFrame.origin.y=0;
            [self.t1 resignFirstResponder];
        }
    }
    self.view.frame = currentFrame;
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.t1 resignFirstResponder];
    [self.t2 resignFirstResponder];
    [self.t3 resignFirstResponder];
    [self.t4 resignFirstResponder];
    [self.t5 resignFirstResponder];
}


@end
