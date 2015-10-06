//
//  ProfileViewController.m
//  HealthyMe
//
//  Created by Laura Kirby on 10/5/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSegueWithIdentifier:@"showSignIn" sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
