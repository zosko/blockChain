//
//  Block.h
//  blockchain
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Block : NSObject

@property (nonatomic,assign) NSUInteger index;
@property (nonatomic,strong) NSString *dateCreated;
@property (nonatomic,strong) NSString *previousHash;
@property (nonatomic,strong) NSString *blockHash;
@property (nonatomic,assign) NSUInteger nonce;
@property (nonatomic,strong) NSString *blockData;

-(NSString *)key;

-(Block *)initBlockData:(NSString *)data;

@end
