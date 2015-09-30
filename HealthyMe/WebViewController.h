//
//  WebViewController.h
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSURL *raceURL;

@end
