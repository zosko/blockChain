//
//  Blockchain.m
//  blockchain
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import "Blockchain.h"
#import "NSString+Extension.h"

@implementation Blockchain

-(Blockchain *)initGenesis:(Block *)block{
    self = [super init];
    
    if(self){
        self.blocks = [NSMutableArray new];
        [self addBlock:block]; //Genesis
    }
    
    return self;
}
-(void)addBlock:(Block *)block{
    if(self.blocks.count == 0){
        block.previousHash = @"0";
        block.blockHash = [self generateHash:block];
    }
    else{
        Block *prevBlock = [self getPreviousBlock];
        block.previousHash = prevBlock.blockHash;
        block.index = self.blocks.count;
        block.blockHash = [self generateHash:block];
    }
    [self.blocks addObject:block];
    [self displayBlock:block];
}
-(Block *)getPreviousBlock{
    return self.blocks[self.blocks.count - 1];
}
-(void)displayBlock:(Block *)block{
    NSLog(@"\n------ Block %ld ---------",block.index);
    NSLog(@"Date Created : %@ ",block.dateCreated);
    NSLog(@"Data : %@ ",block.blockData);
    NSLog(@"Nonce : %ld ",block.nonce);
    NSLog(@"Previous Hash : %@ ",block.previousHash);
    NSLog(@"Hash : %@ ",block.blockHash);
}
-(NSString *)generateHash:(Block *)block{
    NSString *hash = block.key.sha1Hash;
    while (![hash hasPrefix:@"0000"]) {
        block.nonce += 1;
        hash = block.key.sha1Hash;
    }
    return hash;
}

@end
