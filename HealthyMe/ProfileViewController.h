//
//  ProfileViewController.h
//  HealthyMe
//
//  Created by Laura Kirby on 10/5/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *profileWebView;
@property (strong, nonatomic) NSURL *profileURL;
@end
