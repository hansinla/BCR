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

// sarray for team scores
int teamScore[3] = {0, 0, 0};

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

// scores Team 1 **************************************************
- (IBAction)decTeam1Rnd2:(id)sender {
    [self setScore: -RND2POINTS forTeam: 1];
}

- (IBAction)incTeam1Rnd2:(id)sender {
    [self setScore: RND2POINTS forTeam: 1];
}

- (IBAction)decTeam1Rnd3:(id)sender {
    [self setScore: -RND3POINTS forTeam: 1];
}

- (IBAction)incTeam1Rnd3:(id)sender {
    [self setScore: RND3POINTS forTeam: 1];
}

- (IBAction)resetTeam1:(id)sender {
    [self resetScoreForTeam: 1];
}

// scores Team 2 **************************************************
- (IBAction)decTeam2Rnd2:(id)sender {
    [self setScore: -RND2POINTS forTeam: 2];
}

- (IBAction)incTeam2Rnd2:(id)sender {
    [self setScore: RND2POINTS forTeam: 2];
}

- (IBAction)decTeam2Rnd3:(id)sender {
    [self setScore: -RND3POINTS forTeam: 2];
}

- (IBAction)incTeam2Rnd3:(id)sender {
    [self setScore: RND3POINTS forTeam: 2];
}

- (IBAction)resetTeam2:(id)sender {
    [self resetScoreForTeam: 2];
}

// scores Team 3 **************************************************
- (IBAction)decTeam3Rnd2:(id)sender {
    [self setScore: -RND2POINTS forTeam: 3];
}

- (IBAction)incTeam3Rnd2:(id)sender {
    [self setScore: RND2POINTS forTeam: 3];
}

- (IBAction)decTeam3Rnd3:(id)sender {
    [self setScore: -RND3POINTS forTeam: 3];
}

- (IBAction)incTeam3Rnd3:(id)sender {
   [self setScore: RND3POINTS forTeam: 3];
}

- (IBAction)resetTeam3:(id)sender {
    [self resetScoreForTeam: 3];
}

- (IBAction)resetAll:(id)sender {
    [self resetScoreForTeam: 1];
    [self resetScoreForTeam: 2];
    [self resetScoreForTeam: 3];
}

// Methods
-(void) setScore: (int) score forTeam: (int) team {
    teamScore[team - 1] += score;
    if (teamScore[team - 1] < 0) teamScore[team - 1] = 0;
    [self updateDisplayForTeam: team];
}

-(void) resetScoreForTeam: (int) team{
    teamScore[team - 1] = 0;
    [self updateDisplayForTeam: team];
}

-(void) updateDisplayForTeam: (int) team{
    
    NSString* outputString = [[NSString alloc] initWithFormat:@"%i", teamScore[team - 1]];
    
    switch (team) {
        case 1:
            [_scoreOne setStringValue: outputString];
            break;
        case 2:
            [_scoreTwo setStringValue: outputString];
            break;
        case 3:
            [_scoreThree setStringValue: outputString];
            break;
        default:
            break;
    }
}


@end

