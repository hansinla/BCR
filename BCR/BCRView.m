//
//  BCRView.m
//  BCR
//
//  Created by Hans van Riet on 11/17/2017.
//  Copyright © 2017 Hans van Riet. All rights reserved.
//

#import "BCRView.h"


@implementation BCRView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Construct URL to sound file
    NSString *path1 = [NSString stringWithFormat:@"%@/CORRECT.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *correctSoundUrl = [NSURL fileURLWithPath:path1];
    
    NSString *path2 = [NSString stringWithFormat:@"%@/WRONG.wav", [[NSBundle mainBundle] resourcePath]];
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
    [[self window] invalidateCursorRectsForView:self];
}

-(IBAction)moveDown:(id)sender
{
    [[self window] invalidateCursorRectsForView:self];
}

-(IBAction)moveLeft:(id)sender
{
    NSLog(@"Left arrow pressed");
    [_wrongSoundPlay play];
    [[self window] invalidateCursorRectsForView:self];
}

-(IBAction)moveRight:(id)sender
{
    NSLog(@"Right arrow pressed");
    [_correctSoundPlay play];
    [[self window] invalidateCursorRectsForView:self];
}
@end
