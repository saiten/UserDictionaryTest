//
//  UDTViewController.m
//  UserDictionaryTest
//
//  Created by saiten on 13/04/24.
//  Copyright (c) 2013年 saiten. All rights reserved.
//

#import "UDTViewController.h"

@interface UDTViewController ()
@end

@implementation UDTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)pressRegisterButton:(id)sender
{
    [self.textField selectAll:nil];
    if([self.textField respondsToSelector:@selector(_addShortcut:)]) {
        [self.textField performSelector:@selector(_addShortcut:) withObject:nil];
    }
    [self.textField resignFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSMutableString *text = [textField.text mutableCopy];
    [text replaceCharactersInRange:range withString:string];
    
    if(text.length > 0) {
        self.registerButton.enabled = YES;
    } else {
        self.registerButton.enabled = NO;
    }
    return YES;
}
@end
