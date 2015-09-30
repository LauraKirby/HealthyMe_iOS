//
//  TableViewController.m
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import "TableViewController.h"
#import "Race.h"
#import "WebViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //connect to HealthyMe API, a Rails app route which renders JSON
    NSURL *raceURL = [NSURL URLWithString:@"http://localhost:3000/races.json"];


    NSData *jsonRaceData = [NSData dataWithContentsOfURL:raceURL];
    NSLog(@"%@", jsonRaceData);

    NSError *error = nil;

    NSDictionary *raceDataDictionary = [NSJSONSerialization JSONObjectWithData:jsonRaceData options:0 error:&error];

    //add data to our RaceTableViewController property
    self.allRaces = [NSMutableArray array];

    //each race object is a dictionary. we have an array of dictionaries
    NSArray *raceArray = [raceDataDictionary objectForKey:@"races"];

    // for in - to loop through a collection
    for (NSDictionary *raceDictionary in raceArray) {
        Race *race = [Race raceWithRaceName:[raceDictionary objectForKey:@"name"]];
        race.distance = [raceDictionary objectForKey:@"distance"];
        race.thumbnail = [raceDictionary objectForKey:@"thumbnail"];
        race.date = [raceDictionary objectForKey:@"date"];

        //create an instance of nsurl for our url property
        race.url = [NSURL URLWithString:[raceDictionary objectForKey:@"about_url"]];
        [self.allRaces addObject:race];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.allRaces count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Race *race = [self.allRaces objectAtIndex:indexPath.row];

    //error check with if condition,
    //Once you parse JSON data from the web, an empty field converted to NSNUll
    //isKindOfClass returns a BOOL
    if ([race.thumbnail isKindOfClass:[NSString class]]) {
        NSData *imageData = [NSData dataWithContentsOfURL:race.thumbnailURL];
        UIImage *image = [[UIImage alloc]initWithData:imageData];
        cell.imageView.image = image;
    } else {
        cell.imageView.image = [UIImage imageNamed:@"runner_sm.png"];
    }


    cell.textLabel.text = race.raceName;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", race.raceName, [race formattedDate]];
    

    return cell;

}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        if ([segue.identifier isEqualToString:@"showRace"]){
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
            //access race from url
            Race *race = [self.allRaces objectAtIndex:indexPath.row];
            [segue.destinationViewController setRaceURL:race.url];


        }
}




@end
