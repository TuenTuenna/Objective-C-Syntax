//
//  ViewController.m
//  Objective-C Tutorial
//
//  Created by Jeff Jeong on 2019. 7. 3..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSLog(@"viewDidLoad() called");
    
//    NSString *nothing = @"viewDidLoad() called";
    NSString *nothing = nil;
    
//    NSLog(@"%@", nothing);
    NSLog(@"Location of nil : %p. ", nothing);
    
    // * 포인터
    NSString *quote = @"Dogs have masters, while cats have staff";
    
    // 자바에서 string.length() 와 동일
    // 함수 호출
    NSLog(@"Size of String : %d", (int)[quote length]);
    
    // 함수에 매개변수 넣고 호출
    // 자바 quote.characterAtIndex(5);
    NSLog(@"Character at 5 : %c", [quote characterAtIndex:5]);
    
    char *name = "Jeff";
    
    // 다이나믹 스트링
    // 자바 String myName = String.stringWithFormat("- %s", name);
    NSString *myName = [NSString stringWithFormat:@" - %s", name];
    
    // 자바 boolean isStringEqual = quote.isEqualToString(myName);
    BOOL isStringEqual = [quote isEqualToString:myName];
    printf("Are strings equal : %d\n", isStringEqual);
    
    // string uCString = UTF8String(myName.uppercaseString());
    const char *uCString = [[myName uppercaseString]UTF8String];
    
    const char *lCString = [[myName lowercaseString]UTF8String];
    
    NSLog(@"%s\n", uCString);
    NSLog(@"%s\n", lCString);
    
    // 자바 String wholeQuote = quote.stringByAppendingString(myName);
    NSString *wholeQuote = [quote stringByAppendingString:myName];
    NSLog(@"quote: %@\n", quote);
    
    // 자바 String searchResult = wholeQuote.rangeOfString("Jeff");
    NSRange searchResult = [wholeQuote rangeOfString:@"Jeff"];
    
    if(searchResult.location == NSNotFound) {
        NSLog(@"String not found");
    } else {
        printf("Jeff is at index %lu and is %lu long \n", searchResult.location, searchResult.length);
    }
    
    
    NSRange range = NSMakeRange(42, 5);
    // 자바 Char newQuote = (UTF8String)wholeQuote.stringByReplacingCharactersInRange(range, "Anon");
    const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Anon"]UTF8String];

//    NSLog(@"newQuote: %s\n", newQuote);
    printf("%s\n", newQuote);
    
    // 자바 String groceryList = String.stringWithCapacity(50);
    NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
    
    // 자바 groceryList.appendFormat("%s", "Potato, Banana, Pasta");
    [groceryList appendFormat:@"%s\n", "Potato, Banana, Pasta"];
    
    NSLog(@"groceryList : %@\n", groceryList);
    
    // 자바 groceryList.deleteCharactersInRange(new NSMakeRange(0, 8));
    [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
    
    NSLog(@"groceryList : %@\n", groceryList);
    
    // 자바 groceryList.insertString(", Apple", 13);
    [groceryList insertString:@", Apple" atIndex:13];
    
    NSLog(@"groceryList : %@\n", groceryList);
    
    // 자바 groceryList.replaceCharactersInRange(new NSMakeRange(15, 5), "Orange");
    [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
    
    NSLog(@"groceryList : %@\n", groceryList);
    
    // 47분 40초 
    
    
    
}


@end
