//
//  AFOpenFlowGeometry.m
//  AFOpenFlowDemo
//
//  Created by Jonathan Saggau on 10/22/10.
//  Copyright 2010 Sounds Broken inc. All rights reserved.
//

#import "AFOpenFlowGeometry.h"


@implementation AFOpenFlowGeometry


+(CGFloat)sideCoverAngle
{
    static CGFloat sideCoverAngle;
    if (!sideCoverAngle) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        {
            sideCoverAngle = 0.79f;
        }
        else 
        {
            sideCoverAngle = 0.79f;
        }
    }
    return sideCoverAngle;
}


+(CGFloat)sideCoverZPosition
{
    static CGFloat sideCoverZPosition;
    if (!sideCoverZPosition) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        {
            sideCoverZPosition = -100.0f;
        }
        else 
        {
            sideCoverZPosition = -90.0f;
        }
    }
    return sideCoverZPosition;
}

+(CGFloat)coverSpacing
{
    static CGFloat coverSpacing;
    if (!coverSpacing) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        {
            coverSpacing = 60.0f;
        }
        else 
        {
            coverSpacing = 40.0f;
        }
    }
    return coverSpacing;
}

+(CGFloat)centerCoverOffset
{
    static CGFloat centerCoverOffset;
    if (!centerCoverOffset) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        {
            centerCoverOffset = 70.0f;
        }
        else 
        {
            centerCoverOffset = 70.0f;
        }
    }
    return centerCoverOffset;
}

@end
