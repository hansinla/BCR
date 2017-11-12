//
//  AppDelegate.m
//  BCR
//
//  Created by Hans van Riet on 11/09/2017.
//  Copyright © 2017 Hans van Riet. All rights reserved.
//

#import "AppDelegate.h"

// define constants for the round 2 and round 3 score values
const int RND2POINTS = 100;
const int RND3POINTS = 500;

// globals for team scores
int scoreTeam1 = 0;
int scoreTeam2 = 0;
int scoreTeam3 = 0;

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

// textfield score for team 1 through 3
@property (weak) IBOutlet NSTextField *scoreOne;
@property (weak) IBOutlet NSTextField *scoreTwo;
@property (weak) IBOutlet NSTextField *scoreThree;

// action for decrement and increment of team 1 scores
- (IBAction)decTeam1Rnd2:(id)sender;
- (IBAction)incTeam1Rnd2:(id)sender;
- (IBAction)decTeam1Rnd3:(id)sender;
- (IBAction)incTeam1Rnd3:(id)sender;
- (IBAction)resetTeam1:(id)sender;

// action for decrement and increment of team 2 scores
- (IBAction)decTeam2Rnd2:(id)sender;
- (IBAction)incTeam2Rnd2:(id)sender;
- (IBAction)decTeam2Rnd3:(id)sender;
- (IBAction)incTeam2Rnd3:(id)sender;
- (IBAction)resetTeam2:(id)sender;

// action for decrement and increment of team 3 scores
- (IBAction)decTeam3Rnd2:(id)sender;
- (IBAction)incTeam3Rnd2:(id)sender;
- (IBAction)decTeam3Rnd3:(id)sender;
- (IBAction)incTeam3Rnd3:(id)sender;
- (IBAction)resetTeam3:(id)sender;

// reset all
- (IBAction)resetAll:(id)sender;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

// scores Team 1
- (IBAction)decTeam1Rnd2:(id)sender {
    scoreTeam1 -= RND2POINTS;
    if (scoreTeam1 < 0 ){
        scoreTeam1 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam1];
    [_scoreOne setStringValue: outputString];
}


- (IBAction)incTeam1Rnd2:(id)sender {
    scoreTeam1 += RND2POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam1];
    [_scoreOne setStringValue: outputString];
}

- (IBAction)decTeam1Rnd3:(id)sender {
    scoreTeam1 -= RND3POINTS;
    if (scoreTeam1 < 0 ){
        scoreTeam1 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam1];
    [_scoreOne setStringValue: outputString];
}

- (IBAction)incTeam1Rnd3:(id)sender {
    scoreTeam1 += RND3POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam1];
    [_scoreOne setStringValue: outputString];
}

- (IBAction)resetTeam1:(id)sender {
    scoreTeam1 = 0;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam1];
    [_scoreOne setStringValue: outputString];
}

// scores Team 2
- (IBAction)decTeam2Rnd2:(id)sender {
    scoreTeam2 -= RND2POINTS;
    if (scoreTeam2 < 0 ){
        scoreTeam2 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam2];
    [_scoreTwo setStringValue: outputString];
}

- (IBAction)incTeam2Rnd2:(id)sender {
    scoreTeam2 += RND2POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam2];
    [_scoreTwo setStringValue: outputString];
}

- (IBAction)decTeam2Rnd3:(id)sender {
    scoreTeam2 -= RND3POINTS;
    if (scoreTeam2 < 0 ){
        scoreTeam2 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam2];
    [_scoreTwo setStringValue: outputString];
}

- (IBAction)incTeam2Rnd3:(id)sender {
    scoreTeam2 += RND3POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam2];
    [_scoreTwo setStringValue: outputString];
}

- (IBAction)resetTeam2:(id)sender {
    scoreTeam2 = 0;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam2];
    [_scoreTwo setStringValue: outputString];
}

// scores Team 2

- (IBAction)decTeam3Rnd2:(id)sender {
    scoreTeam3 -= RND2POINTS;
    if (scoreTeam3 < 0 ){
        scoreTeam3 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam3];
    [_scoreThree setStringValue: outputString];
}

- (IBAction)incTeam3Rnd2:(id)sender {
    scoreTeam3 += RND2POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam3];
    [_scoreThree setStringValue: outputString];
}

- (IBAction)decTeam3Rnd3:(id)sender {
    scoreTeam3 -= RND3POINTS;
    if (scoreTeam3 < 0 ){
        scoreTeam3 = 0;
    }
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam3];
    [_scoreThree setStringValue: outputString];
}

- (IBAction)incTeam3Rnd3:(id)sender {
    scoreTeam3 += RND3POINTS;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam3];
    [_scoreThree setStringValue: outputString];
}

- (IBAction)resetTeam3:(id)sender {
    scoreTeam3 = 0;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", scoreTeam3];
    [_scoreThree setStringValue: outputString];
}
- (IBAction)resetAll:(id)sender {
    scoreTeam1 = 0;
    scoreTeam2 = 0;
    scoreTeam3 = 0;
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", 0];
    [_scoreOne setStringValue: outputString];
    [_scoreTwo setStringValue: outputString];
    [_scoreThree setStringValue: outputString];
}




@end

