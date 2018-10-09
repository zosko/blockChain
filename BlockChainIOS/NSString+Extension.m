//
//  NSString+Extension.m
//  blockchain
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import "NSString+Extension.h"
#import "NSData+Extension.h"

@implementation NSString (Extension)

-(NSString *)sha1Hash{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSData *hash = [data sha1Hash];
    return [hash hexString];
}

@end
