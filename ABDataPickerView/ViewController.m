//
//  ViewController.m
//  ABDataPickerView
//
//  Created by 张艳能 on 2017/8/30.
//  Copyright © 2017年 张艳能. All rights reserved.
//

#import "ViewController.h"
#import "ABDatePickerView.h"
#import "ABStringPickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@",[[NSLocale currentLocale] localeIdentifier]);
    
}
- (IBAction)timeClick:(id)sender {
    
    
//    [ABDatePickerView showDatePickerViewWithTitle:@"time" dateType:ABDatePickerModeDateAndTime defaultValue:@"2017-8-30 15:31:20" minDate:@"2010-8-30 15:31:20" maxDate:@"2050-8-30 15:31:20" resultBlock:^(NSString *selDate) {
    
//    }];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"yyyy-MM-dd";
    
    NSDate *maxDate = [df dateFromString:@"2050-01-01"];
    NSDate *minDate = [df dateFromString:@"2000-01-01"];
    

    [ABDatePickerView showDatePickerViewWithTitle:@"time" dateType:ABDatePickerModeYearAndMonth defaultDate:[NSDate date] minDate:minDate maxDate:maxDate resultBlock:^(NSString *selData) {
         NSLog(@"selected = %@",selData);
    }];
    
    
}

- (IBAction)dateClick:(id)sender {
  
    [ABStringPickerView showPickerViewWithArray:@[@"提前10分钟",@"提前5分钟"] resultBlock:^(NSString *selData) {
         NSLog(@"selected = %@",selData);
    }];
    
//    ABStringPickerView *pickerView = [[ABStringPickerView alloc] init];
    
//    [pickerView showPickerViewWithArray:@[@"提前10分钟",@"提前5分钟"]];
//    
//    pickerView.resultBlock = ^(NSString *selData) {
//      
//        NSLog(@"selected = %@",selData);
//    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
