//
//  AppDelegate.h
//  BCR
//
//  Created by Hans van Riet on 11/09/2017.
//  Copyright © 2017 Hans van Riet. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

-(void) setScore: (int) score forTeam: (int) team;
-(void) resetScoreForTeam: (int) team;
-(void) updateDisplayForTeam: (int) team;

@end

