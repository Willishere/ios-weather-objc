//
//  WeatherController.h
//  WeatherObjC
//
//  Created by William Chen on 11/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherModel.h"

@interface WeatherController : NSObject
- (void)fetchWeatherByZip:(NSNumber *)zipCode completion:(void (^)(WeatherModel *weather, NSError *error))completion;

@end

