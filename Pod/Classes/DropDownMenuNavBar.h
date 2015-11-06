//
//  DropDownMenuNavBar.h
//  DropDown
//
//  Created by Pnina Eliyahu on 11/3/15.
//  Copyright © 2015 Pnina Eliyahu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DropDownMenu.h"

/**
 *  A custom navigation bar, with a drop down menu embedded
 */
@interface DropDownMenuNavBar : UINavigationBar

@property (nonatomic, strong) DropDownMenu *dropDownMenu;

-(id)initWithMenuItems:(DDMenuItem*)firstItem, ...;

@end
