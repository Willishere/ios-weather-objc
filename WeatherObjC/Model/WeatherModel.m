//
//  WeatherModel.m
//  WeatherObjC
//
//  Created by William Chen on 11/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "WeatherModel.h"

@implementation WeatherModel
- (instancetype) initWithName:(NSString *)name
temperature:(NSArray *)temperature
  imageView:(NSArray *)imageView {
    
    if (self = [super init]){
        _name = name;
        _temperature = temperature;
        _imageView = imageView;
        
    }
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        NSString *name = [dictionary valueForKeyPath:@"city.name"];
        NSArray *list = dictionary[@"list"];
        NSMutableArray *imageNames = [[NSMutableArray alloc] init];
        NSMutableArray *temperatures = [[NSMutableArray alloc] init];
        
        for (NSDictionary *dict in list) {
            NSNumber *temp = [dict valueForKeyPath:@"main.temp"];
            NSString *imageString = [dict valueForKeyPath:@"main.temp"];
            [imageNames addObject:imageString];
            [temperatures addObject:temp];
        }
        return [self initWithName:name temperature:temperatures imageView:imageNames];
    }
    return nil;
}
@end
