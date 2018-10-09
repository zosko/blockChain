//
//  Block.m
//  blockchain
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import "Block.h"
#import "NSDate+Extension.h"

@implementation Block

-(Block *)initBlockData:(NSString *)data{
    self = [super init];
    
    if(self){
        self.dateCreated = [NSDate dateToString];
        self.nonce = 0;
        self.blockData = data;
    }
    
    return self;
}

-(NSString *)key{
    NSString *strKey = [NSString stringWithFormat:@"%ld%@%@%@%ld",
                        self.index,
                        self.dateCreated,
                        self.previousHash,
                        self.blockData,
                        self.nonce];
    
    return strKey;
}

@end
