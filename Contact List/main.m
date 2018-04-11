//
//  main.m
//  Contact List
//
//  Created by Colin on 2018-04-10.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
        BOOL gameOn = YES;
        
        while (gameOn == YES) {
            
            NSString *mainMenu = [inputCollector inputForPrompt:@"What would you like do next? new - Create a new contact | list - List all contacts | quit - Exit Application "];
           
            // cycle through the menu items
            if ([mainMenu isEqualToString:@"new"]) {
                NSString *inputName = [inputCollector inputForPrompt:@"Enter a name for the new contact"];
                NSString *inputEmail = [inputCollector inputForPrompt:@"Now enter an email address"];
                
                Contact *newContact = [[Contact alloc] init];
                newContact.name = inputName;
                newContact.email = inputEmail;
                
                [contactList addContact:newContact];
                
            }
            else if ([mainMenu isEqualToString:@"list"]) {
                for (int i = 0; i < contactList.contacts.count; i++) {
                    NSLog(@"");
                }
            }
            else if ([mainMenu isEqualToString:@"quit"]) {
                gameOn = NO;
            }
            else {
                NSLog(@"INVALID ENTRY");
            }
            
            
            
            
            
        }
  
    }
    return 0;
}
