//
//  ViewController.m
//  ios-Clock
//
//  Created by Carter Chang on 7/10/15.
//  Copyright (c) 2015 Carter Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *clockLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self runClock];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) runClock {
    NSDateFormatter *clockFormat = [[NSDateFormatter alloc]init];
    [clockFormat setDateFormat:@"hh:mm:ss a"];
    self.clockLabel.text = [clockFormat stringFromDate:[NSDate date]];
    [self performSelector:@selector(runClock) withObject:self afterDelay:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
