//
//  ContactList.m
//  Contact List
//
//  Created by Colin on 2018-04-10.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contacts = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)addContact : (Contact *) newContact
{
    [self.contacts addObject:newContact];
}

@end
