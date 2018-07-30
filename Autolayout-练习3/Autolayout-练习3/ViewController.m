//
//  ViewController.m
//  Autolayout-练习3
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 sunco. All rights reserved.
//

/**
 如果想在程序运行的过程中修改约束的值的话可以在xib中把约束拖到代码的文件中，然后在对应的方法中修改约束的constant属性。
 */
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *pinkView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pinkViewWidthConstraint;  //粉色View宽度的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueViewWidthConstraint;  //蓝色View宽度的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intervalConstraint;  //粉色View和蓝色View的间距

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.label.text = @"eewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkjeewfewbewebjbeeeoneonofoendoiwdnjkj";
    
    self.pinkViewWidthConstraint.constant = 200;
    self.blueViewWidthConstraint.constant = 100;
    self.intervalConstraint.constant = 20;
    
    /**
     如果在修改约束的时候想增加动画的话需要用约束被修改的控件调用layoutIfNeeded方法，如果在父视图上的约束也被修改的话则这个父视图也应该调用layoutIfNeeded方法。
     */
    [UIView animateWithDuration:2.0 animations:^{
        [self.pinkView layoutIfNeeded];
        [self.blueView layoutIfNeeded];
        [self.view layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
