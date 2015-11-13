//
//  ViewController.h
//  DataStore
//
//  Created by TC on 15/11/13.
//  Copyright © 2015年 TC. All rights reserved.
//  app删除后，数据依旧存在，重新安装，点击获取，就能获取到数据

#import <UIKit/UIKit.h>
#import "CHKeychain.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *passTF;


- (IBAction)saveAction:(id)sender;

- (IBAction)getAction:(id)sender;

- (IBAction)touchDown:(id)sender;

@end

