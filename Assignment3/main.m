//
//  main.m
//  Assignment3
//
//  Created by Yung Dai on 2015-04-07.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.14159
#define RAD_TO_DEG(radians) (radians * (180.0 / PI))

// Typedef declaration

typedef unsigned char ColorComponent;

// Typedef Structs

typedef struct {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
} Color;

// Typedef Enums
typedef enum {
    FORD,
    HONDA,
    NISSAN,
    PORSCHE,
} CarModel;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Assignment 3
        
        // comments
        
        // This is an inline comment
        
        /* This is a block comment.
         It can span multiple lines. */
        
        // Variables
        
        double odometer = 9200.8;
        int odometerAsInteger = (int)odometer;
        
        NSLog(@"You've driven %.1f miles", odometer);        // 9200.8
        NSLog(@"You've driven %d miles", odometerAsInteger); // 9200
        
        // Contstants
        
        double const pi = 3.14159;
        // pi = 42001.0;               // Compiler error
        
        // Arithmetic
        
        NSLog(@"6 + 2 = %d",  6 + 2);    // 8
        NSLog(@"6 - 2 = %d",  6 - 2);    // 4
        NSLog(@"6 * 2 = %d",  6 * 2);    // 12
        NSLog(@"6 / 2 = %d",  6 / 2);    // 3
        NSLog(@"6 %% 2 = %d", 6 % 2);    // 0
        
        // Conditionals
        
        int modelYear = 1990;
        if (modelYear < 1967) {
            NSLog(@"That car is an antique!!!");
        } else if (modelYear <= 1991) {
            NSLog(@"That car is a classic!");
        } else if (modelYear == 2013) {
            NSLog(@"That's a brand new car!");
        } else {
            NSLog(@"There's nothing special about that car.");
        }
        
        // Operator Description
        
        int a = 1;
        int b = 5;
        
        a == b; //  Equal to
        a != b;  //Not equal to
        a > b; // Greater than
        a >= b; //  Greater than or equal to
        a < b; //   Less than
        a <= b; //  Less than or equal to
        !a; //  Logical negation
        a && b; //  Logical and
        a || b; //  Logical or
        
        // Switches
        
        switch (modelYear) {
            case 1987:
                NSLog(@"Your car is from 1987.");
                break;
            case 1988:
                NSLog(@"Your car is from 1988.");
                break;
            case 1989:
            case 1990:
                NSLog(@"Your car is from 1989 or 1990.");
                break;
            default:
                NSLog(@"I have no idea when your car was made.");
                break;
        }
        
        // Loops
        
        // int modelYear = 1990;  Already defined above
        
        // While Loops
        
        int i = 0;
        while (i < 5) {
            if (i == 3) {
                NSLog(@"Aborting the while-loop");
                break;
            }
            NSLog(@"Current year: %d", modelYear + i);
            i++;
        }
        
        // For loops
        
        for (int i=0; i<5; i++) {
            if (i == 3) {
                NSLog(@"Skipping a for-loop iteration");
                continue;
            }
            NSLog(@"Current year: %d", modelYear + i);
        }
        
        // For-in loops ("Fast-enumeration," specific to Objective-C)
        
        NSArray *models = @[@"Ford", @"Honda", @"Nissan", @"Porsche"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        
        // Macro's
        
        double angle = PI / 2;              // 1.570795
        NSLog(@"%f", RAD_TO_DEG(angle));    // 90.0
        
        // Typedef
        
        ColorComponent red = 255;
        ColorComponent green = 160;
        ColorComponent blue = 0;
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
              red, green, blue);
        
        //Typedef Structs
        
        Color carColor = {255, 160, 0};
        NSLog(@"Your paint job is (R: %hhu, G: %hhu, B: %hhu)",
              carColor.red, carColor.green, carColor.blue);
        
        // Enums
        
        CarModel myCar = NISSAN;
        switch (myCar) {
            case FORD:
            case PORSCHE:
                NSLog(@"You like Western cars?");
                break;
            case HONDA:
            case NISSAN:
                NSLog(@"You like Japanese cars?");
                break;
            default:
                break;
        }
        
        // Primative Arrays
        
        int years[4] = {1968, 1970, 1989, 1999};
        years[0] = 1967;
        for (int i=0; i<4; i++) {
            NSLog(@"The year at index %d is: %d", i, years[i]);
        }

    }
    return 0;
}
