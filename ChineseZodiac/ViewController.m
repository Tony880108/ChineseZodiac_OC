//
//  ViewController.m
//  ChineseZodiac
//
//  Created by kakadong on 16/1/30.
//  Copyright © 2016年 kakadong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *yearOfBirth;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//点击事件
- (IBAction)clickOkBtn:(id)sender {
    if (_yearOfBirth) {
        int year = [_yearOfBirth.text intValue];
        int imageNum = (year - 4) % 12;
        NSString *num = [NSString stringWithFormat:@"%d", imageNum];
        UIImage *image = [UIImage imageNamed:num];
        _imageView.image = image;
        [_yearOfBirth resignFirstResponder];
    }
}

//点击空白处回收键盘
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.yearOfBirth resignFirstResponder];
}

@end
