//
//  RaceTableViewController.h
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RaceTableViewController : UIViewController

//create @property to replace getter and setters for instance variables

@property(nonatomic, strong) NSString *raceName;
@property(nonatomic, strong) NSString *thumbnail;
@property(nonatomic, strong) NSString *date;
@property(nonatomic, strong) NSString *distance;
@property(nonatomic, strong) NSURL *url;


@end
