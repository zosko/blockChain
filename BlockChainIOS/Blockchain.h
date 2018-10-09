//
//  Blockchain.h
//  blockchain
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Block.h"

@interface Blockchain : NSObject

@property (nonatomic,strong) NSMutableArray *blocks;

-(Blockchain *)initGenesis:(Block *)block;
-(void)addBlock:(Block *)block;
-(Block *)getPreviousBlock;
-(void)displayBlock:(Block *)block;
-(NSString *)generateHash:(Block *)block;

@end
