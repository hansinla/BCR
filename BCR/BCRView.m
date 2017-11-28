//
//  BCRView.m
//  BCR
//
//  Created by Hans van Riet on 11/17/2017.
//  Copyright © 2017 Hans van Riet. All rights reserved.
//

#import "BCRView.h"

NSString * const correctSoundFileName = @"%@/CORRECT.wav";
NSString * const wrongSoundFileName = @"%@/WRONG.wav";

@implementation BCRView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Construct URL to sound file
    NSString *path1 = [NSString stringWithFormat: correctSoundFileName, [[NSBundle mainBundle] resourcePath]];
    NSURL *correctSoundUrl = [NSURL fileURLWithPath:path1];
    
    NSString *path2 = [NSString stringWithFormat: wrongSoundFileName, [[NSBundle mainBundle] resourcePath]];
    NSURL *wrongSoundUrl = [NSURL fileURLWithPath:path2];
    
    // Create audio player object and initialize with URL to sound
    _correctSoundPlay = [[AVAudioPlayer alloc] initWithContentsOfURL:correctSoundUrl error:nil];
    _wrongSoundPlay = [[AVAudioPlayer alloc] initWithContentsOfURL:wrongSoundUrl error:nil];
}

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)keyDown:(NSEvent *)theEvent {
    // Arrow keys are associated with the numeric keypad
    if ([theEvent modifierFlags] & NSEventModifierFlagNumericPad) {
        [self interpretKeyEvents:[NSArray arrayWithObject:theEvent]];
    } else {
        [super keyDown:theEvent];
    }
}

-(IBAction)moveUp:(id)sender
{
    // some code
}

-(IBAction)moveDown:(id)sender
{
    // some code
}

-(IBAction)moveLeft:(id)sender
{
    if ([_wrongSoundPlay isPlaying]) {
        [_wrongSoundPlay stop];
        [_wrongSoundPlay setCurrentTime:0];
    }
    [_wrongSoundPlay play];
    NSLog(@"Left arrow pressed");
}

-(IBAction)moveRight:(id)sender
{
    if ([_correctSoundPlay isPlaying]) {
        [_correctSoundPlay stop];
        [_correctSoundPlay setCurrentTime:0];
    }
    [_correctSoundPlay play];
    NSLog(@"Right arrow pressed");
}
@end

