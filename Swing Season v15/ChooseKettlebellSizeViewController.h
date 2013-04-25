//
//  ChooseKettlebellSizeViewController.h
//  Swing Season v15
//
//  Created by James J. DiStefano on 4/25/13.
//  Copyright (c) 2013 James J. DiStefano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooseKettlebellSizeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) NSString *labelText;
@property (strong, nonatomic) NSArray *dataArray;
@property (weak, nonatomic) IBOutlet UIPickerView *bellPicker;


@end
