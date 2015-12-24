//
//  ViewController.m
//  JYRadarChartDemo
//
//  Created by jy on 13-10-31.
//  Copyright (c) 2013年 wcode. All rights reserved.
//

#import "ViewController.h"
#import "JYRadarChart.h"

@interface ViewController () {
	JYRadarChart *p;
	JYRadarChart *p2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	p = [[JYRadarChart alloc] initWithFrame:CGRectMake(0, 20, 320, 320)];

	NSArray *a1 = @[@(81), @(97), @(87), @(60), @(65)];
	
	p.dataSeries = @[a1];
	p.steps = 3;
	p.showStepText = NO;
	p.backgroundColor = [UIColor whiteColor];
	p.r = 110;
	p.minValue = 0;
	p.maxValue = 120;
	p.fillArea = YES;
	p.colorOpacity = 0.7;
    p.backgroundFillColor = [UIColor whiteColor];
	p.attributes = @[@"资产负债率", @"现金比率", @"权益净利率",@"利润增长率",@"营业利润率"];
	p.showLegend = YES;
	[p setTitles:@[@"archer", @"footman"]];
	[p setColors:@[[UIColor yellowColor], [UIColor purpleColor]]];
	[self.view addSubview:p];


	[NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(updateData) userInfo:nil repeats:YES];



//	p2 = [[JYRadarChart alloc] initWithFrame:CGRectMake(10, 220, 280, 200)];
//	p2.centerPoint = CGPointMake(130, 100);
//	p2.showLegend = YES;
//    p2.backgroundFillColor = [UIColor whiteColor];
//	[p2 setTitles:@[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j"]];
//	p2.drawPoints = YES;
//	p2.attributes = @[@"Price", @"Value", @"Pressure", @"Height", @"Weight", @"Grade",
//	                  @"Volume", @"Length", @"Size", @"Padding", @"Pages", @"HAHAHA"];
//	NSArray *b1 = @[@(61), @(97), @(87), @(60), @(85), @(77), @(73), @(74), @(53), @(82), @(65), @(61)];
//	NSArray *b2 = @[@(91), @(87), @(43), @(77), @(78), @(96), @(51), @(65), @(77), @(55), @(84), @(91)];
//	NSArray *b3 = @[@(51), @(97), @(87), @(60), @(25), @(77), @(93), @(14), @(53), @(34), @(65), @(51)];
//	NSArray *b4 = @[@(11), @(87), @(65), @(77), @(55), @(84), @(43), @(77), @(78), @(96), @(51), @(11)];
//	NSArray *b5 = @[@(41), @(97), @(87), @(60), @(95), @(77), @(73), @(74), @(59), @(82), @(95), @(41)];
//	NSArray *b6 = @[@(61), @(96), @(51), @(65), @(77), @(87), @(43), @(70), @(78), @(55), @(44), @(61)];
//	NSArray *b7 = @[@(81), @(97), @(74), @(53), @(82), @(65), @(87), @(60), @(85), @(77), @(73), @(81)];
//	NSArray *b8 = @[@(91), @(84), @(43), @(67), @(78), @(96), @(47), @(55), @(67), @(55), @(51), @(91)];
//	NSArray *b9 = @[@(38), @(85), @(77), @(93), @(74), @(53), @(82), @(97), @(87), @(60), @(65), @(38)];
//	NSArray *b10 = @[@(31), @(87), @(43), @(37), @(78), @(96), @(51), @(65), @(17), @(55), @(54), @(31)];
//	p2.dataSeries = @[b1, b2, b3, b4, b5, b6, b7, b8, b9, b10];
//	p2.steps = 2;
//	p2.backgroundColor = [UIColor grayColor];
//	[self.view addSubview:p2];
}

- (void)updateData {
	int n = 6;
	
	NSMutableArray *c = [NSMutableArray array];


	for (int i = 0; i < n - 1; i++) {
		
		c[i] = [NSNumber numberWithInt:arc4random() % 60 + 60];
	}

	p.dataSeries = @[c];
	p.steps = 3;
	p.fillArea =  YES ;
	p.drawPoints = YES;
	p.showStepText = NO ;
	//[p setTitles:@[@"iPhone", @"pizza", @"hard drive"]];
	[p setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
