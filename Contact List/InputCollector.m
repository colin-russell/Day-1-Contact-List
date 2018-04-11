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
    
    NSLog(@"%@:", promptString);

    // get NSString from fgets
    char inputChars[255];
    fgets(inputChars, 255, stdin);
   
    // converting the charArray to a new NSString object
    NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    // remove whitespace and newline characters
    return [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

}

@end
