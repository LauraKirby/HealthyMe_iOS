//
//  User.h
//  HealthyMe
//
//  Created by Laura Kirby on 9/30/15.
//  Copyright © 2015 LK. All rights reserved.
//

#import <Foundation/Foundation.h>


//maybe i don't need all this for now...
@interface User : NSObject
@property (strong, nonatomic, readonly) NSString *sessionToken;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic, readonly) NSString *identifier;
@property (strong, nonatomic) NSString *name;

@end
