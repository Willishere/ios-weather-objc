//
//  WeatherModel.h
//  WeatherObjC
//
//  Created by William Chen on 11/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface WeatherModel : NSObject
@property NSString *name;
@property NSArray *temperature;
@property NSArray *imageView;

- (instancetype) initWithName:(NSString *)name
                  temperature:(NSArray *)temperature
                    imageView:(NSArray *)imageView;
                        



@end


