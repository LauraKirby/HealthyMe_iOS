//
//  SignUpViewController.h
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Devise/Devise.h>

@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)signUpButton:(id)sender;

- (void)registerWithSuccess:(DVSVoidBlock)success failure:(DVSErrorBlock)failure;
@end


