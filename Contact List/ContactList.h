//
//  ContactList.h
//  Contact List
//
//  Created by Colin on 2018-04-10.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contacts;

- (void)addContact : (Contact *) newContact;
- (void)printContact;

@end
