//
//  NSDictionary+DLNJson.h
//  DLNFoundation
//
//  Created by Linzh on 12/22/15.
//  Copyright © 2015 Daniel Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DLNJson)
- (id)dln_JsonModelOfClass:(Class)cls;
@end
