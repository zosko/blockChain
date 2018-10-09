//
//  ViewController.m
//  BlockChainIOS
//
//  Created by Bosko Petreski on 1/3/18.
//  Copyright © 2018 Bosko Petreski. All rights reserved.
//

#import "ViewController.h"
#import "Block.h"
#import "Blockchain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Block *block = [[Block alloc] initBlockData:@"Genesis"];
    Blockchain *blockchain = [[Blockchain alloc] initGenesis:block];

    Block *newBlock1 = [[Block alloc] initBlockData:@"Bosko 1"];
    [blockchain addBlock:newBlock1];

    Block *newBlock2 = [[Block alloc] initBlockData:@"Bosko 2"];
    [blockchain addBlock:newBlock2];

    Block *newBlock3 = [[Block alloc] initBlockData:@"Bosko 3"];
    [blockchain addBlock:newBlock3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
