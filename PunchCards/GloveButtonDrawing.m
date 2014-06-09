//
//  GloveButtonDrawing.m
//  PunchCards
//
//  Created by Joseph Fiorini on 6/9/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GloveButtonDrawing.h"

void drawGloveButton() {
    //// Color Declarations
    UIColor* color1 = [UIColor colorWithRed: 0.264 green: 0.26 blue: 0.26 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];

    //// Page-3
    {
        //// Glove
        {
            //// Bezier Drawing
            UIBezierPath* bezierPath = [UIBezierPath bezierPath];
            [bezierPath moveToPoint: CGPointMake(1.87, 20.03)];
            [bezierPath addCurveToPoint: CGPointMake(4.02, 21.32) controlPoint1: CGPointMake(2.36, 20.47) controlPoint2: CGPointMake(3.25, 21.13)];
            [bezierPath addCurveToPoint: CGPointMake(5.75, 21.81) controlPoint1: CGPointMake(4.49, 21.44) controlPoint2: CGPointMake(5.74, 21.61)];
            [bezierPath addCurveToPoint: CGPointMake(6.86, 24.31) controlPoint1: CGPointMake(5.83, 23.03) controlPoint2: CGPointMake(6.22, 23.35)];
            [bezierPath addCurveToPoint: CGPointMake(9, 26.72) controlPoint1: CGPointMake(7.04, 24.58) controlPoint2: CGPointMake(7.9, 25.79)];
            [bezierPath addCurveToPoint: CGPointMake(11.84, 28.53) controlPoint1: CGPointMake(10.12, 27.67) controlPoint2: CGPointMake(11.47, 28.35)];
            [bezierPath addCurveToPoint: CGPointMake(17.12, 29.95) controlPoint1: CGPointMake(13.4, 29.3) controlPoint2: CGPointMake(15.12, 29.95)];
            [bezierPath addCurveToPoint: CGPointMake(23.04, 29.95) controlPoint1: CGPointMake(18.2, 29.95) controlPoint2: CGPointMake(21.38, 30.06)];
            [bezierPath addCurveToPoint: CGPointMake(30.53, 26.72) controlPoint1: CGPointMake(25.51, 29.79) controlPoint2: CGPointMake(28.45, 28.68)];
            [bezierPath addCurveToPoint: CGPointMake(32.72, 23.43) controlPoint1: CGPointMake(31.5, 25.81) controlPoint2: CGPointMake(32.12, 24.74)];
            [bezierPath addCurveToPoint: CGPointMake(33.95, 15.27) controlPoint1: CGPointMake(33.71, 21.24) controlPoint2: CGPointMake(33.95, 17.86)];
            [bezierPath addCurveToPoint: CGPointMake(28.71, 2.77) controlPoint1: CGPointMake(33.95, 9.95) controlPoint2: CGPointMake(32.58, 5.44)];
            [bezierPath addCurveToPoint: CGPointMake(17.47, -0.08) controlPoint1: CGPointMake(25.79, 0.76) controlPoint2: CGPointMake(21.58, -0.08)];
            [bezierPath addCurveToPoint: CGPointMake(5.75, 3.2) controlPoint1: CGPointMake(13.14, -0.08) controlPoint2: CGPointMake(8.83, 0.97)];
            [bezierPath addCurveToPoint: CGPointMake(0, 15.27) controlPoint1: CGPointMake(2.06, 5.87) controlPoint2: CGPointMake(0, 10.18)];
            [bezierPath addCurveToPoint: CGPointMake(1.87, 20.03) controlPoint1: CGPointMake(0, 17.33) controlPoint2: CGPointMake(0.89, 19.16)];
            [bezierPath closePath];
            bezierPath.miterLimit = 4;

            bezierPath.usesEvenOddFillRule = YES;

            [color1 setFill];
            [bezierPath fill];


            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
            [bezier2Path moveToPoint: CGPointMake(6.4, 12.44)];
            [bezier2Path addLineToPoint: CGPointMake(6.4, 12.8)];
            [bezier2Path addLineToPoint: CGPointMake(4.94, 12.8)];
            [bezier2Path addLineToPoint: CGPointMake(4.94, 11.89)];
            [bezier2Path addLineToPoint: CGPointMake(6.4, 11.89)];
            [bezier2Path addLineToPoint: CGPointMake(6.4, 12.07)];
            [bezier2Path addLineToPoint: CGPointMake(6.95, 12.07)];
            [bezier2Path addLineToPoint: CGPointMake(6.95, 12.44)];
            [bezier2Path addLineToPoint: CGPointMake(6.4, 12.44)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(5.48, 12.8)];
            [bezier2Path addLineToPoint: CGPointMake(5.48, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(6.58, 13.17)];
            [bezier2Path addLineToPoint: CGPointMake(6.58, 12.8)];
            [bezier2Path addLineToPoint: CGPointMake(5.48, 12.8)];
            [bezier2Path closePath];
            bezier2Path.miterLimit = 4;

            bezier2Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier2Path fill];


            //// Rectangle Drawing
            UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(7.13, 12.8, 0.55, 3.29)];
            [color2 setFill];
            [rectanglePath fill];


            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
            [bezier3Path moveToPoint: CGPointMake(7.49, 13.9)];
            [bezier3Path addLineToPoint: CGPointMake(7.86, 13.9)];
            [bezier3Path addLineToPoint: CGPointMake(7.86, 16.65)];
            [bezier3Path addLineToPoint: CGPointMake(7.49, 16.65)];
            [bezier3Path addLineToPoint: CGPointMake(7.49, 13.9)];
            [bezier3Path closePath];
            bezier3Path.miterLimit = 4;

            bezier3Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier3Path fill];


            //// Bezier 4 Drawing
            UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
            [bezier4Path moveToPoint: CGPointMake(7.86, 15.18)];
            [bezier4Path addLineToPoint: CGPointMake(8.23, 15.18)];
            [bezier4Path addLineToPoint: CGPointMake(8.23, 17.2)];
            [bezier4Path addLineToPoint: CGPointMake(7.86, 17.2)];
            [bezier4Path addLineToPoint: CGPointMake(7.86, 15.18)];
            [bezier4Path closePath];
            bezier4Path.miterLimit = 4;

            bezier4Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier4Path fill];


            //// Bezier 5 Drawing
            UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
            [bezier5Path moveToPoint: CGPointMake(6.58, 12.99)];
            [bezier5Path addLineToPoint: CGPointMake(6.95, 12.99)];
            [bezier5Path addLineToPoint: CGPointMake(6.95, 14.45)];
            [bezier5Path addLineToPoint: CGPointMake(6.58, 14.45)];
            [bezier5Path addLineToPoint: CGPointMake(6.58, 12.99)];
            [bezier5Path closePath];
            bezier5Path.miterLimit = 4;

            bezier5Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier5Path fill];


            //// Bezier 6 Drawing
            UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
            [bezier6Path moveToPoint: CGPointMake(6.95, 13.17)];
            [bezier6Path addLineToPoint: CGPointMake(7.31, 13.17)];
            [bezier6Path addLineToPoint: CGPointMake(7.31, 15.37)];
            [bezier6Path addLineToPoint: CGPointMake(6.95, 15.37)];
            [bezier6Path addLineToPoint: CGPointMake(6.95, 13.17)];
            [bezier6Path closePath];
            bezier6Path.miterLimit = 4;

            bezier6Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier6Path fill];


            //// Bezier 7 Drawing
            UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
            [bezier7Path moveToPoint: CGPointMake(6.76, 13.72)];
            [bezier7Path addLineToPoint: CGPointMake(7.13, 13.72)];
            [bezier7Path addLineToPoint: CGPointMake(7.13, 14.82)];
            [bezier7Path addLineToPoint: CGPointMake(6.76, 14.82)];
            [bezier7Path addLineToPoint: CGPointMake(6.76, 13.72)];
            [bezier7Path closePath];
            bezier7Path.miterLimit = 4;

            bezier7Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier7Path fill];


            //// Bezier 8 Drawing
            UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
            [bezier8Path moveToPoint: CGPointMake(6.4, 13.54)];
            [bezier8Path addLineToPoint: CGPointMake(6.76, 13.54)];
            [bezier8Path addLineToPoint: CGPointMake(6.76, 14.27)];
            [bezier8Path addLineToPoint: CGPointMake(6.4, 14.27)];
            [bezier8Path addLineToPoint: CGPointMake(6.4, 13.54)];
            [bezier8Path closePath];
            bezier8Path.miterLimit = 4;

            bezier8Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier8Path fill];


            //// Bezier 9 Drawing
            UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
            [bezier9Path moveToPoint: CGPointMake(8.41, 19.22)];
            [bezier9Path addLineToPoint: CGPointMake(8.41, 18.18)];
            [bezier9Path addLineToPoint: CGPointMake(8.41, 18.18)];
            [bezier9Path addCurveToPoint: CGPointMake(8.64, 18.17) controlPoint1: CGPointMake(8.48, 18.17) controlPoint2: CGPointMake(8.55, 18.17)];
            [bezier9Path addCurveToPoint: CGPointMake(9.85, 18.44) controlPoint1: CGPointMake(9, 18.17) controlPoint2: CGPointMake(9.56, 18.22)];
            [bezier9Path addCurveToPoint: CGPointMake(10.38, 18.56) controlPoint1: CGPointMake(10.16, 18.68) controlPoint2: CGPointMake(10.38, 18.85)];
            [bezier9Path addCurveToPoint: CGPointMake(8.64, 17.19) controlPoint1: CGPointMake(10.38, 18.01) controlPoint2: CGPointMake(9.39, 17.19)];
            [bezier9Path addCurveToPoint: CGPointMake(8.41, 17.19) controlPoint1: CGPointMake(8.55, 17.19) controlPoint2: CGPointMake(8.48, 17.19)];
            [bezier9Path addLineToPoint: CGPointMake(8.41, 16.28)];
            [bezier9Path addLineToPoint: CGPointMake(7.49, 16.28)];
            [bezier9Path addLineToPoint: CGPointMake(7.49, 18.74)];
            [bezier9Path addCurveToPoint: CGPointMake(7.49, 19.2) controlPoint1: CGPointMake(7.49, 18.89) controlPoint2: CGPointMake(7.49, 19.05)];
            [bezier9Path addLineToPoint: CGPointMake(7.49, 19.91)];
            [bezier9Path addCurveToPoint: CGPointMake(7.49, 19.92) controlPoint1: CGPointMake(7.49, 19.91) controlPoint2: CGPointMake(7.49, 19.92)];
            [bezier9Path addLineToPoint: CGPointMake(7.49, 19.94)];
            [bezier9Path addLineToPoint: CGPointMake(7.5, 19.94)];
            [bezier9Path addCurveToPoint: CGPointMake(8.41, 20.35) controlPoint1: CGPointMake(7.53, 20.13) controlPoint2: CGPointMake(7.93, 19.99)];
            [bezier9Path addCurveToPoint: CGPointMake(9.55, 21.49) controlPoint1: CGPointMake(8.87, 20.69) controlPoint2: CGPointMake(9.44, 21.68)];
            [bezier9Path addCurveToPoint: CGPointMake(9.44, 20.55) controlPoint1: CGPointMake(9.56, 21.48) controlPoint2: CGPointMake(9.58, 20.89)];
            [bezier9Path addCurveToPoint: CGPointMake(9.05, 19.97) controlPoint1: CGPointMake(9.33, 20.28) controlPoint2: CGPointMake(9.06, 19.99)];
            [bezier9Path addCurveToPoint: CGPointMake(8.41, 19.22) controlPoint1: CGPointMake(8.9, 19.65) controlPoint2: CGPointMake(8.62, 19.42)];
            [bezier9Path closePath];
            bezier9Path.miterLimit = 4;

            bezier9Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier9Path fill];


            //// Bezier 10 Drawing
            UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
            [bezier10Path moveToPoint: CGPointMake(4.58, 10.72)];
            [bezier10Path addCurveToPoint: CGPointMake(4.58, 12.22) controlPoint1: CGPointMake(4.53, 11.44) controlPoint2: CGPointMake(4.55, 11.89)];
            [bezier10Path addCurveToPoint: CGPointMake(5.29, 12.71) controlPoint1: CGPointMake(4.61, 12.59) controlPoint2: CGPointMake(4.83, 12.71)];
            [bezier10Path addCurveToPoint: CGPointMake(6.04, 11.96) controlPoint1: CGPointMake(5.83, 12.71) controlPoint2: CGPointMake(5.92, 12.67)];
            [bezier10Path addCurveToPoint: CGPointMake(6.3, 9.45) controlPoint1: CGPointMake(6.13, 11.42) controlPoint2: CGPointMake(6.3, 10.33)];
            [bezier10Path addCurveToPoint: CGPointMake(7.74, 4.59) controlPoint1: CGPointMake(6.3, 7.43) controlPoint2: CGPointMake(8.7, 4.59)];
            [bezier10Path addCurveToPoint: CGPointMake(6.3, 6.33) controlPoint1: CGPointMake(7.29, 4.59) controlPoint2: CGPointMake(6.93, 5.46)];
            [bezier10Path addCurveToPoint: CGPointMake(4.71, 10) controlPoint1: CGPointMake(5.58, 7.31) controlPoint2: CGPointMake(4.71, 8.93)];
            [bezier10Path addCurveToPoint: CGPointMake(4.58, 10.72) controlPoint1: CGPointMake(4.71, 10.23) controlPoint2: CGPointMake(4.59, 10.52)];
            [bezier10Path closePath];
            bezier10Path.miterLimit = 4;

            bezier10Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier10Path fill];


            //// Bezier 11 Drawing
            UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
            [bezier11Path moveToPoint: CGPointMake(7.44, 13.32)];
            [bezier11Path addCurveToPoint: CGPointMake(7.99, 12.36) controlPoint1: CGPointMake(7.66, 13.32) controlPoint2: CGPointMake(7.77, 12.83)];
            [bezier11Path addCurveToPoint: CGPointMake(8.75, 11.11) controlPoint1: CGPointMake(8.2, 11.89) controlPoint2: CGPointMake(8.52, 11.45)];
            [bezier11Path addCurveToPoint: CGPointMake(9.52, 9.81) controlPoint1: CGPointMake(9.08, 10.64) controlPoint2: CGPointMake(9.26, 10.24)];
            [bezier11Path addCurveToPoint: CGPointMake(10.01, 9.06) controlPoint1: CGPointMake(9.67, 9.58) controlPoint2: CGPointMake(9.97, 9.37)];
            [bezier11Path addCurveToPoint: CGPointMake(8.26, 10) controlPoint1: CGPointMake(10.08, 8.53) controlPoint2: CGPointMake(9.09, 9.21)];
            [bezier11Path addCurveToPoint: CGPointMake(7.14, 11.32) controlPoint1: CGPointMake(7.72, 10.53) controlPoint2: CGPointMake(7.27, 11.17)];
            [bezier11Path addCurveToPoint: CGPointMake(6.08, 13.32) controlPoint1: CGPointMake(6.52, 12.07) controlPoint2: CGPointMake(6.08, 12.46)];
            [bezier11Path addCurveToPoint: CGPointMake(7.44, 13.32) controlPoint1: CGPointMake(6.08, 14.63) controlPoint2: CGPointMake(6.53, 13.32)];
            [bezier11Path closePath];
            bezier11Path.miterLimit = 4;

            bezier11Path.usesEvenOddFillRule = YES;

            [color2 setFill];
            [bezier11Path fill];


            //// Bezier 12 Drawing
            UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
            [bezier12Path moveToPoint: CGPointMake(20.29, 27.66)];
            [bezier12Path addCurveToPoint: CGPointMake(29.35, 24.38) controlPoint1: CGPointMake(25.54, 27.66) controlPoint2: CGPointMake(29.35, 25.64)];
            [bezier12Path addCurveToPoint: CGPointMake(27.79, 24.82) controlPoint1: CGPointMake(29.35, 23.9) controlPoint2: CGPointMake(28.63, 24.55)];
            [bezier12Path addCurveToPoint: CGPointMake(19.36, 26.22) controlPoint1: CGPointMake(26.94, 25.09) controlPoint2: CGPointMake(22.63, 26.22)];
            [bezier12Path addCurveToPoint: CGPointMake(11.1, 25.12) controlPoint1: CGPointMake(14.11, 26.22) controlPoint2: CGPointMake(11.1, 23.86)];
            [bezier12Path addCurveToPoint: CGPointMake(20.29, 27.66) controlPoint1: CGPointMake(11.1, 26.38) controlPoint2: CGPointMake(15.04, 27.66)];
            [bezier12Path closePath];
            bezier12Path.miterLimit = 4;
            
            bezier12Path.usesEvenOddFillRule = YES;
            
            [color2 setFill];
            [bezier12Path fill];
            
            
            //// Bezier 13 Drawing
            UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
            [bezier13Path moveToPoint: CGPointMake(7.39, 18.66)];
            [bezier13Path addCurveToPoint: CGPointMake(7.55, 16.36) controlPoint1: CGPointMake(7.54, 18.67) controlPoint2: CGPointMake(7.55, 17.14)];
            [bezier13Path addCurveToPoint: CGPointMake(5.09, 12.6) controlPoint1: CGPointMake(7.55, 14.28) controlPoint2: CGPointMake(6.34, 13.11)];
            [bezier13Path addCurveToPoint: CGPointMake(4.1, 12.7) controlPoint1: CGPointMake(4.87, 12.51) controlPoint2: CGPointMake(4.22, 12.21)];
            [bezier13Path addCurveToPoint: CGPointMake(5.08, 12.93) controlPoint1: CGPointMake(3.98, 13.18) controlPoint2: CGPointMake(4.87, 12.79)];
            [bezier13Path addCurveToPoint: CGPointMake(6.62, 15.22) controlPoint1: CGPointMake(5.61, 13.29) controlPoint2: CGPointMake(6.62, 13.98)];
            [bezier13Path addCurveToPoint: CGPointMake(7.39, 18.66) controlPoint1: CGPointMake(6.62, 16.51) controlPoint2: CGPointMake(7.14, 18.65)];
            [bezier13Path closePath];
            bezier13Path.miterLimit = 4;
            
            bezier13Path.usesEvenOddFillRule = YES;
            
            [color1 setFill];
            [bezier13Path fill];
        }
    }
}
