//
//  Race.h
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Race : NSObject

//create @property to replace getter and setters for instance variables

@property(nonatomic, strong) NSString *raceName;
@property(nonatomic, strong) NSString *thumbnail;
@property(nonatomic, strong) NSString *date;
@property(nonatomic, strong) NSString *distance;
@property(nonatomic, strong) NSURL *url;

//Designated Initializer
- (id) initWithRaceName:(NSString *)raceName;

//Convenience Contructor
//class method, pass in the argument 'title'
+ (id) raceWithRaceName:(NSString *)raceName;

@end
