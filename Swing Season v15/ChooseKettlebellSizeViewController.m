//
//  ChooseKettlebellSizeViewController.m
//  Swing Season v15
//
//  Created by James J. DiStefano on 4/25/13.
//  Copyright (c) 2013 James J. DiStefano. All rights reserved.
//

#import "ChooseKettlebellSizeViewController.h"

@interface ChooseKettlebellSizeViewController ()

@end

@implementation ChooseKettlebellSizeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.dataArray = @[@"Choose a kettlebell", @"8kg", @"12kg",@"16kg", @"20kg", @"24kg", @"28kg", @"32kg", @"36kg", @"40kg", @"44kg", @"48kg"];
    self.bellPicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//=====DataPicker protocol methods

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.dataArray.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component {
    return [self.dataArray objectAtIndex:row];
}

-(void) pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component {
    //    this is how you put the selected element somewhere
    if(self.dataArray[row] != 0) {
        self.labelText = self.dataArray[row];
    }
}



@end
