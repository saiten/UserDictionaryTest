//
//  UDTViewController.h
//  UserDictionaryTest
//
//  Created by saiten on 13/04/24.
//  Copyright (c) 2013年 saiten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UDTViewController : UIViewController <UITextFieldDelegate>
@property (weak) IBOutlet UITextField *textField;
@property (weak) IBOutlet UIButton *registerButton;

- (IBAction)pressRegisterButton:(id)sender;

@end
