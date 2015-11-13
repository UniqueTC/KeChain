//
//  ViewController.m
//  DataStore
//
//  Created by TC on 15/11/13.
//  Copyright © 2015年 TC. All rights reserved.
//

#import "ViewController.h"
NSString * const KEY_USERNAME_PASSWORD = @"com.company.app.usernamepassword";
NSString * const KEY_USERNAME = @"com.company.app.username";
NSString * const KEY_PASSWORD = @"com.company.app.password";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveAction:(id)sender {
    //删除
    [CHKeychain delete:KEY_USERNAME_PASSWORD];
    
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:self.nameTF.text forKey:KEY_USERNAME];
    [usernamepasswordKVPairs setObject:self.passTF.text forKey:KEY_PASSWORD];
    
    [CHKeychain save:KEY_USERNAME_PASSWORD data:usernamepasswordKVPairs];
    
}

- (IBAction)getAction:(id)sender {
    
    NSMutableDictionary *usernamepasswordKVPairs = (NSMutableDictionary *)[CHKeychain load:KEY_USERNAME_PASSWORD];
    self.nameTF.text = [usernamepasswordKVPairs objectForKey:KEY_USERNAME];
    self.passTF.text = [usernamepasswordKVPairs objectForKey:KEY_PASSWORD];
}



- (IBAction)touchDown:(id)sender {
    [self.view endEditing:YES];
}


@end
