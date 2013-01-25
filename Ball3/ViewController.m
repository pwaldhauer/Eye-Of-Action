//
//  ViewController.m
//  Ball3
//
//  Created by Marcel Wichmann on 1/24/13.
//  Copyright (c) 2013 Marcel Wichmann. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.predictionArray = [[NSArray alloc] initWithObjects:@"ACTION",@"BOOM",@"EXPLOSION",@"GIRL POWER",@"#aufschrei",@"CHUCK NORRIS",@"RUMBLE", nil];
    
    self.predictionLabel.layer.cornerRadius = 150;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSUInteger zufallskatze = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex: zufallskatze];
    
   CGFloat red = arc4random_uniform(100)/100.0;
    CGFloat green = arc4random_uniform(100)/100.0;
    CGFloat blue = arc4random_uniform(100)/100.0;
    self.predictionLabel.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.predictionLabel.textColor = [UIColor whiteColor];
    

    
}
@end
