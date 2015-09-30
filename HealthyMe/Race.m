//
//  Race.m
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import "Race.h"

@implementation Race



//Designated Initializer
- (id) initWithRaceName:(NSString *)raceName{
    //init method is available through the NSObject, which we refer to with "super"
    //will return an initialized instance of Race
    self = [super init];
    if(self) {
        //initialize raceName instance variable
        //setter method
        //raceName is passed in the method
        self.raceName = raceName;
        self.thumbnail = nil;
        self.date = nil;
        self.distance = nil;

    }
    return self;
}

+ (id) raceWithRaceName:(NSString *)raceName{
    return [[self alloc]initWithRaceName:raceName];
}

-(NSURL *) thumbnailURL{
    return  [NSURL URLWithString:self.thumbnail];
}

-(NSString *) formattedDate{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM/dd/yyyy"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    [dateFormatter setDateFormat:@"EE MMM, dd"];
    return [dateFormatter stringFromDate:tempDate];
}
@end