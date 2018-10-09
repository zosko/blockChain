//
//  NSData+Extension.h
//  BlockChainIOS
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Extension)

- (NSString *) hexString;
- (NSData *)sha1Hash;

@end
