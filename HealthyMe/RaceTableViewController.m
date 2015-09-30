//
//  RaceTableViewController.m
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import "RaceTableViewController.h"
#import "Race.h"

@interface RaceTableViewController ()

@end

@implementation RaceTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //connect to HealthyMe API, a Rails app route which renders JSON
    NSURL *raceURL = [NSURL URLWithString:@"http://localhost:3000/races.json"];

    NSData *jsonRaceData = [NSData dataWithContentsOfURL:raceURL];

    NSError *error = nil;

    NSDictionary *raceDataDictionary = [NSJSONSerialization JSONObjectWithData:jsonRaceData options:0 error:&error];

    //add data to our RaceTableViewController property
    self.allRaces = [NSMutableArray array];

    //each race object is a dictionary. we have an array of dictionaries
    NSArray *raceArray = [raceDataDictionary objectForKey:@"races"];
    
}

@end
