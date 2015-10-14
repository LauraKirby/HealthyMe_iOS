//
//  Plan.h
//  HealthyMe
//
//  Created by Laura Kirby on 10/13/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plan : NSObject
@property(nonatomic, strong) NSString *stepNumber;
@property(nonatomic, strong) NSString *stepDate;
@property(nonatomic, strong) NSString *stepActivity;
@property(nonatomic, strong) NSString *stepDuration;
@property(nonatomic, strong) NSURL *stepUrl;

@end
