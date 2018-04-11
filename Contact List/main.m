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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
        BOOL gameOn = YES;
        
        while (gameOn == YES) {
            
            NSString *mainMenu = [inputCollector inputForPrompt:@"What would you like do next? new - Create a new contact | list - List all contacts | quit - Exit Application "];
            
            if ([mainMenu isEqualToString:@"new"]) {
                NSLog(@"NEW");
            }
            else if ([mainMenu isEqualToString:@"list"]) {
                NSLog(@"LIST");
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
