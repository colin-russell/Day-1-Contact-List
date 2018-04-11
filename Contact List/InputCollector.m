//
//  InputCollector.m
//  Contact List
//
//  Created by Colin on 2018-04-10.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString*)inputForPrompt : (NSString*) promptString{
    
    // get NSString from fgets
    char inputChars[255];
    fgets(inputChars, 255, stdin);
   
    // converting the charArray to a new NSString object
    NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    // remove whitespace and newline characters
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSLog(@"%@:", promptString);
    
    // check for quit
    if([input isEqualToString:@"quit"]){
        NSLog(@"SHOULD QUIT NOW");
        return 0;
    }
    
    return input;
}

@end
