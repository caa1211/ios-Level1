//
//  ViewController.m
//  ios-Counter
//
//  Created by Carter Chang on 7/10/15.
//  Copyright (c) 2015 Carter Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (assign, nonatomic) NSInteger num;
- (IBAction)onBtnClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _num = 0;
    self.numLabel.text = [@(_num) stringValue];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBtnClick:(id)sender {
    _num ++;
    self.numLabel.text = [@(_num) stringValue];
}
@end
